#!/usr/bin/env bash
SCRIPT_DIR=$(dirname "$0")
date=$(date -Iseconds)
set -ex

# Move into project directory
cd "$SCRIPT_DIR" && echo $SCRIPT_DIR
pwd
# DELETE BUILD FOLDER
rm -rf "dist/"
echo "dist folder deleted"
# DELETE EVERYTHING IN PAGES FOLDER
ls build | xargs -I{} rm -rf build/{}
echo "Build folder cleaned"
# Build the Astro site
yarn build 
cp -R "dist/*" "build/"
echo "Copied built files into build"
cp ".domains" "build/"
cd "build"
git add -A
git commit -m "Rebuild: $date"
git push
cd ..
rm -rf "dist/"
echo "Deleted dist folder"
git add -A
git commit -am "Pages update: $date"
git push