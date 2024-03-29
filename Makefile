install:
	npm install --save-dev rollup
	npm install --save-dev minify

# 0x00: 新克隆的时候，初始化项目
init:
	npm install

# 0x01: 打包为 client js
build:
	npx rollup src/x.js -o dist/x.js -f amd
	npx minify dist/x.js > dist/x.min.js

# 0x02: 将项目发布到 npmjs.org
pub:
	npm publish
