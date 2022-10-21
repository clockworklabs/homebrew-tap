#!/bin/bash

# This script fetches the latest binary release
# version from the global SpacetimeDB downloads
# repository, along with the hash of the release
# file. It then uploads the latest release to
# the homebrew tap repository.

# ----------------------------------------
# Release
# ----------------------------------------

# Get the latest release version identifier
VERSION=$(curl --silent --fail --location "https://version.spacetimedb.net")

# Get the latest release version file hash
VERHASH=$(curl --silent --fail --location "https://install.spacetimedb.net/${VERSION}/spacetime-${VERSION}.darwin-universal.txt")

# Get the latest release version without the preceding 'v'
RELEASE="${VERSION:1}"

# Fetch the homebrew release template file
TEMPLATE=$(cat release.template.rb)
TEMPLATE=$(echo "$TEMPLATE" | sed "s/{RELEASE}/$RELEASE/g")
TEMPLATE=$(echo "$TEMPLATE" | sed "s/{VERSION}/$VERSION/g")
TEMPLATE=$(echo "$TEMPLATE" | sed "s/{VERHASH}/$VERHASH/g")

# Save the release template to the file
echo "$TEMPLATE" > Formula/spacetime.rb

# ----------------------------------------
# Commit
# ----------------------------------------

# Add all changed files to the git commit
git add --all

# Commit the new release to the repository
git commit -m "Upgrade to ${VERSION}"

# Deploy the latest release to Github
git push
