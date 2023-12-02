#!/bin/sh

# Check for <wip> in commit messages
WIP_COMMIT=$(git log --pretty=format:%s | grep "<wip>")
if [ ! -z "$WIP_COMMIT" ]; then
    echo "Error: Found <wip> commits. Please `git wipe` before pushing."
    exit 1
fi

exit 0
