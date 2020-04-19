#!/bin/bash -l

cd $GITHUB_WORKSPACE

GO_MOD_OUPUT="$(go mod tidy -v 2>&1)"

if [[ $GO_MOD_OUPUT == *"unused"* ]]; then
  echo "${GO_MOD_OUPUT}"

  exit 1
fi

echo "::set-output name=gomod-output::Go mod step succeed"
