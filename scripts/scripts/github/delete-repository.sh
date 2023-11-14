#! /usr/bin/env bash

read -srep $'Enter a token: ' token
read -rep $'Enter a repository to DELETE: ' repo

curl -L \
	-X DELETE \
	-H "Accept: application/vnd.github+json" \
	-H "Authorization: Bearer $token" \
	-H "X-GitHub-Api-Version: 2022-11-28" \
	https://api.github.com/repos/AdamJoesten/$repo
