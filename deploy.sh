#!/usr/bin/env bash

# Fail on error and echo commands to console
set -ex

# Set up vars
SCRIPT_DIR=$(dirname "$0")
date=$(date -Iseconds)

# Move into project directory
cd $SCRIPT_DIR
pwd

# DELETE BUILD FOLDER
rm -rf dist

# Build the thing
yarn build

# Copy git submodule files
cp build/.{git,gitignore,domains} dist/

# Obliterate old build
rm -rf build

# Move recently built folder into place as new copy of submodule
mv dist build

# Copy domains config from root
cp .domains build/.domains

# Commit Dance for pages branch
cd $SCRIPT_DIR/build
git add .
git commit -m "Rebuild: $date"
git push
cd $SCRIPT_DIR

# Share status message
echo "Build $date pushed on branch pages. Please stage and commit local changes"
echo "If everything looks correct."
