#build with bash -> npm run build only works under linux -> https://github.com/xdan/jodit/issues/872
npm run clean
rm -rf types && mkdir -p ./types && cp -r ./src/types ./types && tsc --project . --declaration --declarationDir types --outDir types --emitDeclarationOnly --removeComments false && npm run type:remove-styles && npm run type:resolve-alias
npm run build:es5 && npm run build:es2018 && npm run build:es2018:en && npm run build:es5:no-uglify && npm run build:es2018:no-uglify && npm run build:es2018:en:no-uglify