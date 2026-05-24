PAGES_DIR := justfile_directory() + "/build"
BUILD_DIR := justfile_directory() + "/dist"

build:
    #!/usr/bin/env bash
    date=$(date -Iseconds)
    cd "{{ justfile_directory() }}"
    pwd
    # DELETE BUILD FOLDER
    # rm -rf "{{ BUILD_DIR }}"
    # echo "Build folder deleted"
    # DELETE EVERYTHING IN PAGES FOLDER
    rm -r "{{ PAGES_DIR }}"
    echo "Pages folder cleaned"
    yarn build
    cp -R "{{ BUILD_DIR }}/*" "{{ PAGES_DIR }}"
    echo "Copied built files into {{ BUILD_DIR }}"
    cp "{{ justfile_directory() }}/.domains" "{{ PAGES_DIR }}"
    cd "{{ PAGES_DIR }}"
    git add -A
    git commit -m "Rebuild: $date"
    git push
    cd ..
    rm -rf "{{ BUILD_DIR }}"
    echo "Deleted build folder"
    git add -A
    git commit -am "Pages update: $date"
    git push