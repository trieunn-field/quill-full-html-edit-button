#!/usr/bin/env sh

rm -rf ./dist
mkdir dist

# Build typescript
cd typescript
rm -rf ./dist
yarn && yarn build
cp -r ./dist ../dist/typescript
cd .. 

# Build javascript
cd javascript
rm -rf ./dist
yarn && yarn build
cp -r ./dist ../dist/javascript
cd ..

# Build script tags
cd script-tags
rm -rf ./dist
mkdir ../dist/script-tags
cp -r ./* ../dist/script-tags
cd ..