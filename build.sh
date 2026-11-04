#!/usr/bin/env bash

set -euo pipefail

ZOLA_VERSION=0.23.6
ZOLA_ARCHIVE="zola-v${ZOLA_VERSION}-x86_64-unknown-linux-gnu.tar.gz"

curl -sLJO "https://github.com/getzola/zola/releases/download/v${ZOLA_VERSION}/${ZOLA_ARCHIVE}"
tar -xf "${ZOLA_ARCHIVE}"

git submodule update --init --recursive

./zola build
