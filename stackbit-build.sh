#!/usr/bin/env bash

set -e
set -o pipefail
set -v

echo "stackbit-build.sh: start build"

# fetch data from CMS through stackbit-pull
npx @stackbit/stackbit-pull --stackbit-pull-api-url=https://dca0aab8287a.ngrok.io/pull/60322c0b649c9bfd78f37bc5

# build site
npm run build

echo "stackbit-build.sh: finished build"
