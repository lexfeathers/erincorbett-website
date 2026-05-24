build:
    #!/usr/bin/env bash
    date=$(date -Iseconds)
    cd "/"
    pwd
    # DELETE BUILD FOLDER
    rm -rf "/dist"
    echo "dist folder deleted"
    # DELETE EVERYTHING IN PAGES FOLDER
    rm -r "/build/*"
    echo "Build folder cleaned"
    # Build the Astro site
    yarn build 
    cp -R "/dist/*" "/build/"
    echo "Copied built files into /build"
    cp "/.domains" "/build/"
    cd "/build"
    git add -A
    git commit -m "Rebuild: $date"
    git push
    cd ..
    rm -rf "/dist"
    echo "Deleted dist folder"
    git add -A
    git commit -am "Pages update: $date"
    git push