#! /usr/bin/env bash

f() {
	if ! git rev-parse --is-inside-work-tree >/dev/null 2>&1; then
		echo "This is not a Git repository. Exiting..."
		exit 1
	fi

	COUNT=${1:-1}
	WIP_COMMITS=$(git log -n $COUNT --pretty=format:%s | grep -c '<wip>')

	if [ "$WIP_COMMITS" -eq "$COUNT" ]; then
		git add -A && git reset HEAD~$COUNT --soft
		git commit -ve
	else
		echo "Error: Not all of the last $COUNT commits are WIP commits."
	fi
}

f "$@"
