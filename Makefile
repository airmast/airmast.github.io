.PHONY: all serve clean

all:
	@if [ ! -e node_modules ]; then npm install ; fi
	./node_modules/.bin/coffee src/build.coffee
	
serve:
	./node_modules/.bin/coffee src/build.coffee
	./node_modules/.bin/coffee src/serve.coffee

clean:
	rm -rf core getting-started library node_modules patterns symbols

