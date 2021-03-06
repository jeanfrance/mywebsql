#!/bin/sh

cd "$(dirname "$0")"

# Get current version.
version=$(dpkg-parsechangelog --show-field Version | cut -d- -f-1)

# Download the source.
debian/rules get-orig-source ORIG_SOURCE_DESTDIR=.

# Extract files.
tar xvfz mywebsql_$version.orig.tar.gz

# Copy the debian/ directory to the source directory.
cp -r debian/ mywebsql/
