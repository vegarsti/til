#!/usr/bin/env bash
# 
# Helper script to make it easy to write a TIL and publish it immediately.
#
# Usage:
#
#   $ ./til_post about Alfred's snippet collections

set -eu -o pipefail

PROJECT_ROOT=$(dirname $(dirname "$0"))

# Echo a slugified version of the first argument.
function slugify() {
    echo "$1" | iconv -t ascii//TRANSLIT | sed -E 's/[^a-zA-Z0-9 ]+//g' | tr " " "-" | tr A-Z a-z 
}

function main() {
    # Change to this directory.
    cd "$PROJECT_ROOT"

    # Ensure repo is clean and on appropriate branch.
    if [[ ! -z $(git status --porcelain) ]]
    then
        echo "TIL repo has uncommitted changes. Commit these changes and try again" >&2
        exit 1
    fi
    git checkout main 2> /dev/null

    # Generate appropriate filepath
    local description="$1"
    filepath=$(generate_filepath "$description")

    # Open file pre-populated with Hugo frontmatter
    local title="$(tr '[:lower:]' '[:upper:]' <<< ${description:0:1})${description:1}"
    date=$(date -u +"%Y-%m-%dT%H:%M:%SZ")
    cat >"$filepath" <<- CONTENT
---
title: "$title"
date: "$date"
tags: []
---

CONTENT

    # Open Vim insert mode with the cursor after the frontmatter.
    vim -c ':normal }' -c 'startinsert' $filepath

    # Generate static site.
    publish "$filepath" "TIL $description"
}

function generate_filepath() {
    echo posts/$(slugify "$1").md
}

function publish() {
    local filepath="$1"
    local title="$2"

    # Commit and push
    git add $filepath
    git commit -m "$title" > /dev/null 
    git push
}

if [[ $_ != $0 ]]
then
    if [ $# -eq 0 ]
    then
        echo "Please enter a TIL description" >&2
        exit 1
    else
        main "$*"
    fi
fi
