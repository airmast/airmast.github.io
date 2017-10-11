.PHONY: all html serve pdf clean

all:
	@if [ ! -e node_modules ]; then npm install ; fi
	./node_modules/.bin/coffee src/build-html.coffee
	./node_modules/.bin/coffee src/build-pdf.coffee

html:
	@if [ ! -e node_modules ]; then npm install ; fi
	./node_modules/.bin/coffee src/build-html.coffee
	
serve:
	@if [ ! -e node_modules ]; then npm install ; fi
	./node_modules/.bin/coffee src/serve.coffee

pdf:
	@if [ ! -e node_modules ]; then npm install ; fi
	./node_modules/.bin/coffee src/build-pdf.coffee

clean:
	rm -rf node_modules camadapter head index.html

