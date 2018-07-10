#!/usr/bin/env bash

set -e

# important!
# do not merge this file to community branches
#
# scripts automates some setup for private otto it-bi-rt
# question2answer instance
#

#
# install qa-lang-de
#
rm -rf ./qa-lang/de /tmp/qa-lang-de
git clone -b portal --depth 1 https://github.com/hiseke/q2a-lang-de.git /tmp/qa-lang-de
mv /tmp/qa-lang-de/qa-lang/de/ ./qa-lang/
rm -rf /tmp/qa-lang-de

#
# install ldap plugin
#
rm -rf ./qa-plugin/qa-ldap-login /tmp/qa-ldap-login
git clone -b master --depth 1 https://github.com/zakkak/qa-ldap-login /tmp/qa-ldap-login
rm -rf /tmp/qa-ldap-login/.git
mv /tmp/qa-ldap-login ./qa-plugin/
rm -rf /tmp/qa-ldap-login

#
# patch css
#
rm -rf ./qa-theme/BrainPortalTheme /tmp/Q2A-BrainPortalTheme
git clone -b master --depth 1 https://github.com/mmethner/Q2A-BrainPortalTheme.git /tmp/Q2A-BrainPortalTheme
mv /tmp/Q2A-BrainPortalTheme/BrainPortal ./qa-theme/
rm -rf /tmp/Q2A-BrainPortalTheme
