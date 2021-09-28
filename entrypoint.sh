#!/bin/sh

set -e

tag=${INPUT_TAG}
message=${INPUT_MESSAGE}
if [ "$INPUT_FORCE" = true ] ; then
	force='-f'
fi

git config user.name "${GITHUB_ACTOR}"
git config user.email "${GITHUB_ACTOR}@users.noreply.github.com"

git tag $force -a "${tag}" -m "${message}"
git push $force origin "${tag}"
