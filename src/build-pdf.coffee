fs = require 'fs'
child_process = require 'child_process'
path = require 'path'
yaml = require 'js-yaml'

SRC_DIR = 'src/pdf'
DST_DIR = 'pdf'

#
# Pages tree
#
pagesTree = (dir, tree) ->
  pages = fs.readdirSync dir
  tree ?= {}
  for page in pages
    key = page.replace(/^\d+-/, '').replace(/\..*$/, '')
    pagePath = "#{dir}/#{page}"
    if fs.statSync(pagePath).isDirectory()
      tree[key] = {}
      pagesTree pagePath, tree[key]
    else
      tree[key] = pagePath
  tree

pageTreeBranch = (tree, dir, level, list) ->
  children = []
  for k, v of tree
    obj =
      path: if dir? then "#{dir}/#{k}" else k
      level: level + 1
    if typeof v is 'object'
      obj.src = v.index
      obj.title = getTitle obj.src
      list.push obj
      obj.children = pageTreeBranch v, obj.path, obj.level, list
    else if k isnt 'index'
      obj.src = v
      obj.title = getTitle obj.src
      list.push obj
      children.push obj

  children

pagesList = (tree, dir, level, list, children) ->
  list = []
  pageTreeBranch tree, null, 0, list
  list

#
# Get page title
#
getTitle = (src) ->
  data = fs.readFileSync(src).toString()
  data.split('\n')[0]

loadYaml = (yamlPath) ->
  #yamlPath = "#{SRC_DIR}/#{name}.yaml"
  unless fs.existsSync yamlPath
    console.error "Error: File '#{yamlPath}' does not exist"
    process.exit 1
  try
      obj = yaml.safeLoad fs.readFileSync(yamlPath)
    catch e
      console.error e.message
      process.exit 1
  obj

preprocess = (text, config) ->
  if config?
    for k, v of config
      re = new RegExp("#\{#{k}\}", 'ig')
      text = text.replace re, v
  # Remove HTML specific code
  text = text.replace /\.\.\s*\<html\>[\s\S]*\.\.\s*<\/html\>/mg, ''
  # Make path to images absolute
  text = text.replace /((figure|image)::\S*\s+)(\/img\/[\w\/-]+\.(jpg|jpeg|png))/mig, "$1#{process.cwd()}$3"
  text += '\n'
  text

#
# Remove files
#
removeFiles = (fileList) ->
  for fileName in fileList
    if fs.existsSync fileName
      console.log "Removing '#{fileName}'"
      fs.unlinkSync fileName

#
# Generate output PDF file
#
generatePdf = (name) ->
  generated = []
  config = loadYaml("#{SRC_DIR}/#{name}.yaml")
  # Cover process
  if config.cover?
    coverTmpl = "#{DST_DIR}/#{config.cover}"
    console.log "Generating '#{coverTmpl}'"
    generated.push coverTmpl
    fd = fs.openSync coverTmpl, 'w'
    fs.writeSync fd, preprocess(fs.readFileSync("#{SRC_DIR}/#{config.cover}").toString(), config)
    fs.closeSync fd

  # Create revisions table
  revisionsRst = "#{DST_DIR}/revisions.rst"
  fd = fs.openSync revisionsRst, 'w'
  if config.revisions?
    console.log "Generating '#{revisionsRst}'"
    generated.push revisionsRst
    fs.writeSync     fd, '.. list-table:: Revision History\n'
    fs.writeSync     fd, '   :header-rows: 1\n'
    fs.writeSync     fd, '   :widths: 15 85\n'
    fs.writeSync     fd, '\n'
    fs.writeSync     fd, '   * - Version\n'
    fs.writeSync     fd, '     - Description\n'
    for rev in config.revisions
      v = Object.keys(rev)[0]
      fs.writeSync   fd, "   * - **V#{v}**\n"
      fs.writeSync   fd, '     - .. class:: revision-list\n'
      fs.writeSync   fd, '\n'
      changes = rev[v]
      for line in changes
        fs.writeSync fd, "       + #{line}\n"
      fs.writeSync   fd, '\n'

  fs.closeSync fd

  # Stylesheet process
  if config.style?
    baseName = path.basename config.style, '.yaml'
    styleYaml = "#{SRC_DIR}/#{baseName}.yaml"
    styleJson = "#{DST_DIR}/#{baseName}.json"
    style = loadYaml(styleYaml)
    console.log "Generating '#{styleJson}'"
    generated.push styleJson
    fd = fs.openSync styleJson, 'w'
    fs.writeSync fd, JSON.stringify style
    fs.closeSync fd

  # Start to create big merged source RST
  mergedRst = "#{DST_DIR}/#{name}-v#{config.version}.rst"
  generated.push mergedRst
  fd = fs.openSync mergedRst, 'w'

  # Add title and subtitle
  fs.writeSync fd, '========================\n'
  fs.writeSync fd, config.title + '\n'
  fs.writeSync fd, '========================\n'
  fs.writeSync fd, '\n'
  fs.writeSync fd, '------------------------\n'
  fs.writeSync fd, config.subtitle + '\n'
  fs.writeSync fd, '------------------------\n'
  fs.writeSync fd, '\n'

  # Add preamble
  if config.preamble?
    fs.writeSync fd, preprocess(fs.readFileSync("#{SRC_DIR}/#{config.preamble}").toString(), config)

  # Add content from source RSTs
  tree = pagesTree config.entry
  pages = []
  if tree.index?
    pages.push { src: tree.index }
  pages = pages.concat pagesList(tree)
  for page in pages
    text = preprocess(fs.readFileSync(page.src).toString())
    svgRegExp = /((figure|image)::\S*\s+)\/(img\/[\w\/-]+\.svg)/mig
    svgs = []
    while cap = svgRegExp.exec(text)
      svgName = cap[3]
      unless fs.existsSync svgName
        console.warning "File '#{svgName}' doesn't exist"
      svgPdf = "#{DST_DIR}/#{svgName.replace /[\\\/]/g, '-'}.pdf"
      svgs.push { src: svgName, dst: svgPdf}
      
      console.log "Generating '#{svgPdf}'"
      generated.push svgPdf
      try
        child_process.execSync "inkscape -z -A #{svgPdf} #{process.cwd()}/#{svgName}"
      catch e
        console.error e.Error
        removeFiles generated
        process.exit 1

    for svg in svgs
      text = text.replace "/#{svg.src}","#{process.cwd()}/#{svg.dst}"
     
    fs.writeSync fd, text
  fs.closeSync fd

  # Generate PDF
  outputPdf = "#{DST_DIR}/#{name}-v#{config.version}.pdf"
  console.log "Generating '#{outputPdf}'"
  command = 'rst2pdf --config=rst2pdf.conf -e dotted_toc --fit-background-mode=scale --repeat-table-rows'
  if config.style? then command += " -s #{styleJson}"
  command += " #{mergedRst} -o #{outputPdf}"
  try
    child_process.execSync(command)
  catch e
    console.error e.Error
    removeFiles generated
    process.exit 1

  # Clean up
  removeFiles generated
  
#
# Main
#
process.chdir "#{__dirname}/.."

unless fs.existsSync 'pdf'
    fs.mkdirSync 'pdf'

# Documents
generatePdf 'camadapter-assembly'
generatePdf 'camadapter-api'
