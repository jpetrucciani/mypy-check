#!/bin/sh
set -e

if [ -n "${GITHUB_WORKSPACE}" ] ; then
  cd "${GITHUB_WORKSPACE}" || exit
fi

export REVIEWDOG_GITHUB_API_TOKEN="${INPUT_GITHUB_TOKEN}"

# run mypy, tee output to file
mypy --show-column-numbers ${INPUT_PATH} ${INPUT_MYPY_ARGS} \
    | reviewdog -efm="%f:%l:%c: %t%*[^:]: %m"               \
      -name="mypy"                                          \
      -reporter="github-pr-check"                           \
      -fail-on-error="true"                                 \
      -level="error"                                        \
