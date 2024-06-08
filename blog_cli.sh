#!/bin/bash

# Accept script parameter
PARAMETER=$1

# Function to build the Jekyll site
build_site() {
    bundle exec jekyll build
}

# Function to start the Jekyll server with the specified parameter
start_server() {
    bundle exec jekyll serve $PARAMETER
}

# Switch case to determine the action based on the parameter
case $PARAMETER in
    "build")
        build_site
        ;;
    "serve")
        start_server
        ;;
    *)
        echo "Invalid parameter. Please specify 'build' or 'serve'."
        ;;
esac