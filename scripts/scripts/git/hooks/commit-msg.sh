#! /usr/bin/env bash
if ! git rev-parse --is-inside-work-tree >/dev/null 2>&1; then
	echo "This is not a Git repository. Exiting..."
	exit 1
fi
COMMIT_MSG_FILE=$1
COMMIT_MSG=$(cat "$COMMIT_MSG_FILE")
PREV_COMMIT=$(git log --pretty=format:%s | head -n 1)
if echo "$PREV_COMMIT" | grep -q "<wip>" && ! echo "$COMMIT_MSG" | grep -q "<wip>"; then
	echo "Error: You're still commiting to a work in progress. Please 'git wipe' before continuing."
	exit 1
fi

exit 0
