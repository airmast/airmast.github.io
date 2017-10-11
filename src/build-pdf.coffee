fs = require 'fs'
child_process = require('child_process');
yaml = require 'js-yaml'

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
  childs = []
  for k, v of tree
    obj =
      path: if dir? then "#{dir}/#{k}" else k
      level: level + 1
    if typeof v is 'object'
      obj.src = v.index
      obj.title = getTitle obj.src
      list.push obj
      obj.childs = pageTreeBranch v, obj.path, obj.level, list
    else if k isnt 'index'
      obj.src = v
      obj.title = getTitle obj.src
      list.push obj
      childs.push obj

  childs

pagesList = (tree, dir, level, list, childs) ->
  list = []
  pageTreeBranch tree, null, 0, list
  list

#
# Get page title
#
getTitle = (src) ->
  data = fs.readFileSync(src).toString()
  data.split('\n')[0]

loadYaml = (name) ->
  yamlPath = "src/pdf/#{name}.yaml"
  unless fs.existsSync yamlPath
    console.error "Error: File '#{yamlPath}' does not exist"
    process.exit 1
  try
      obj = yaml.safeLoad fs.readFileSync(yamlPath)
    catch e
      console.error e.message
      process.exit 1
  obj

preprocess = (text) ->
  pageBreak = '\n.. raw:: pdf\n\n    PageBreak\n\n'
  text = text.replace /\.\.\s*\<html\>[\s\S]*\.\.\s*<\/html\>/mg, '' 
  text += pageBreak
  text

#
# Generate output PDF file
#
generatePdf = (name) ->
  pageBreak = '\n.. raw:: pdf\n\n    PageBreak\n\n'
  config = loadYaml(name)
  if config.style?
    styleJson = "pdf/#{config.style}.json"
    style = loadYaml(config.style)
    console.log "Generating '#{styleJson}'"
    fd = fs.openSync styleJson, 'w'
    fs.writeSync fd, JSON.stringify style
    fs.closeSync fd

  mergedRst = "pdf/#{name}-v#{config.version}.rst"
  fd = fs.openSync mergedRst, 'w'
  tree = pagesTree config.entry
  if tree.index?
    fs.writeSync fd, preprocess(fs.readFileSync(tree.index).toString())
  pages = pagesList tree
  for page in pages
    fs.writeSync fd, preprocess(fs.readFileSync(page.src).toString())
  fs.closeSync fd
  outputPdf = "pdf/#{name}-v#{config.version}.pdf"
  console.log "Generating '#{outputPdf}'"
  command = 'rst2pdf --config=rst2pdf.conf --font-path $HOME/.local/share/fonts/ '
  command = 'rst2pdf --config=rst2pdf.conf '
  if config.style? then command += "-s #{styleJson} "
  command += "#{mergedRst} -o #{outputPdf}"
  try
    child_process.execSync(command)
  catch e
    console.error e.Error
    process.exit 1
  console.log "Cleaning up"
  fs.unlinkSync mergedRst
  if config.style? then fs.unlinkSync styleJson
  
#
# Main
#
process.chdir "#{__dirname}/.."

unless fs.existsSync 'pdf'
    fs.mkdirSync 'pdf'

# Documents
generatePdf 'camadapter-assembly'
generatePdf 'camadapter-api'
