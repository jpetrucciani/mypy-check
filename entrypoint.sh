#!/bin/bash
set -ax

# install requirements, if defined
if [ ! -z "$3" ]; then
    pip install $3
fi

# mypy output file
output_file=/tmp/mypy.out

# get mypy version
mypy --version

# run mypy, tee output to file
# shellcheck disable=2086
mypy $2 --show-column-numbers --hide-error-context $1 | tee "${output_file}"
exit_code="${PIPESTATUS[0]}"

# analyze output
python /github.py "${output_file}"

exit "$exit_code"
