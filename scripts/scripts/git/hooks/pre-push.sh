#!/usr/bin/env bash

if ! git rev-parse --is-inside-work-tree >/dev/null 2>&1; then
	echo "This is not a Git repository. Exiting..."
	exit 1
fi

WIP_COMMIT=$(git log --pretty=format:%s | grep "<wip>")

if [ ! -z "$WIP_COMMIT" ]; then
	echo "Error: Found <wip> commits. Please $(git wipe) before pushing."
	exit 1
fi

exit 0
