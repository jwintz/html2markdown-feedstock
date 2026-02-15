#!/bin/bash

set -euxo pipefail

# Get version info for ldflags
VERSION="${PKG_VERSION}"
# Use recipe-maintainer as commit reference (Homebrew uses tap.user)
COMMIT="prefix-dev"
# Use build date in ISO8601 format
DATE=$(date -u +"%Y-%m-%dT%H:%M:%SZ")

# Build ldflags similar to Homebrew formula
LDFLAGS="-s -w -X main.version=${VERSION} -X main.commit=${COMMIT} -X main.date=${DATE}"

# Change to the CLI directory as specified in goreleaser config
cd cli/html2markdown

# Build the binary with static linking (no CGO)
export CGO_ENABLED=0

go build -ldflags "${LDFLAGS}" -o "${PREFIX}/bin/html2markdown" .

# Verify the binary was created and is executable
"${PREFIX}/bin/html2markdown" --version
