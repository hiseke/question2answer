#!/usr/bin/env bash

set -e

# important!
# do not merge this file to community branches
#
# scripts automates some setup for private otto it-bi-rt
# question2answer instance
#
git clone -b portal --depth 1 https://github.com/hiseke/q2a-lang-de.git /tmp/qa-lang-de
mv /tmp/qa-lang-de/qa-lang/de/ ./qa-lang/
rm -rf /tmp/qa-lang-de

