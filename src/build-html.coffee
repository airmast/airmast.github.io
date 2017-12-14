fs = require 'fs'
marked = require 'marked'
pug = require 'pug'
uglifycss = require 'uglifycss'
child_process = require('child_process');

SECTION_REGEX = /[\/.\\]*([^\/\\]*)(.*)/

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

  for v, i in children
    if i then v.previous = children[i-1]
    if children[i+1]? then v.next = children[i+1]

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

#
# Parse Markdown files
#
parseMarkdown = (src) ->
  body = marked fs.readFileSync(src).toString()
  # Parse external links
  body = body.replace /(<a)(.*href="http[^>]+)>/g, '$1 class="ext"$2 target="_blank">'
  body

#
# Parse reStructuredText files
#
parseRst = (src) ->
  command = 'rst2html5'
  try
    body = child_process.execSync(command + ' ' + src).toString()
  catch e
    console.error e.Error
    process.exit 1

  # Remove common HTML preface
  body = body.replace /^[\s\S]*\<body\>/mg, ''
  # Remove common HTML ending
  body = body.replace /<\/body\>[\s\S]*\<\/html\>$/mg, '' 
  # Parse external links 
  body = body.replace /(<a)(.*href="http[^>]+)>/g, '$1 class="ext"$2 target="_blank">'
  body

#
# Table of contents
#
tableOfContents = (currentPage, pages) ->
  toc = ''
  level = 0
  numbers = []
  uls = ['', '<ul class="chapter">', '<ul class="section">', '<ul class="subsection">']
  for page in pages    
      numbers[page.level] ?= 0
      numbers[page.level + 1] = 0
      numbers[page.level]++
      
      firstDisplayLevel = if (currentPage.level == 0) then 1 else 2

      number = ''
      if page.level > 1
        for i in [2..page.level]
          number += numbers[i] + '.'
      classTag = "class=\"toc-level-#{page.level - firstDisplayLevel}\""
      
      if page.level > level
        toc += "<ol #{classTag}>" if ++level >= firstDisplayLevel
        
      while page.level < level
        toc += '</ol>' if --level >= firstDisplayLevel
      
      currentPageSection = SECTION_REGEX.exec(currentPage.path)[1]
      pageSection = SECTION_REGEX.exec(page.path)[1]
      
      shouldDisplay = (currentPage.level == 0 and page.level <= 2) or
        (currentPage.level > 0 and page.level >= 2 and 
        currentPageSection == pageSection)
      
      if shouldDisplay
        if page.src is currentPage.src
          toc += "<li #{classTag}><strong>#{number}&nbsp;#{page.title}</strong></li>"
        else
          toc += "<li #{classTag}><a href=\"/#{page.path}/\"><strong>#{number}</strong>&nbsp;#{page.title}</a></li>"

  while level--
    toc += '</ol>'
  toc

#
# Render output file
#
render = (page, pages) ->
  console.log "Rendering '#{page.path}/index.html'"
  if not fs.existsSync page.path
    fs.mkdirSync page.path
  pugRender = pug.compileFile 'src/template.pug'
  pageBody = parseRst page.src
  if page.children? and page.children.length > 0
    pageBody += '<h2>Contents</h2><ul>'
    for child in page.children
      pageBody += "<li><a href=\"/#{child.path}/\">#{child.title}</a></li>"
    pageBody += '</ul>'

  if page.previous? or page.next?  
    pageBody += '<br/><center>'
    if page.previous?
      pageBody += "<a href=\"/#{page.previous.path}/\">← #{page.previous.title}</a>"
      if page.next? then pageBody += ' | '
    if page.next?
      pageBody += "<a href=\"/#{page.next.path}/\">#{page.next.title} →</a>"
    pageBody += '</center>'

  html = pugRender
    section: SECTION_REGEX.exec(page.path)[1]
    title: page.title
    src: page.src
    body: pageBody
    toc: tableOfContents page, pages
  fd = fs.openSync "#{page.path}/index.html", 'w'
  fs.writeSync fd, html
  fs.closeSync fd

#
# Main
#
process.chdir "#{__dirname}/.."

# Pages
tree = pagesTree 'src/pages'
pages = pagesList tree
index =
  path: '.'
  level: 0
  src: tree.index
  title: getTitle tree.index
render index, pages
for page in pages
  render page, pages

# CSS
cssFiles = fs.readdirSync 'src/css/'
cssFiles = cssFiles.map((v) -> 'src/css/' + v)
uglified = uglifycss.processFiles cssFiles
fileName = 'css/airmast.min.css'
console.log "Rendering '#{fileName}'"
if not fs.existsSync 'css'
  fs.mkdirSync 'css'
fd = fs.openSync fileName, 'w'
fs.writeSync fd, uglified
fs.closeSync fd
