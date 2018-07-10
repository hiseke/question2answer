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
rm -rf ./qa-lang/de
git clone -b portal --depth 1 https://github.com/hiseke/q2a-lang-de.git /tmp/qa-lang-de
mv /tmp/qa-lang-de/qa-lang/de/ ./qa-lang/
rm -rf /tmp/qa-lang-de

#
# install ldap plugin
#
rm -rf ./qa-plugin/qa-ldap-login
git clone -b master --depth 1 https://github.com/zakkak/qa-ldap-login /tmp/qa-ldap-login
rm -rf /tmp/qa-lang-de/.git
mv /tmp//tmp/qa-ldap-login ./qa-plugin/
rm -rf /tmp/qa-ldap-login

#
# patch css
#
rm -rf ./qa-theme/TwentyTwelve
git clone -b master --depth 1 https://github.com/q2a-projects/Q2A-TwentyTwelve.git /tmp/Q2A-TwentyTwelve
mv /tmp/Q2A-TwentyTwelve/TwentyTwelve ./qa-theme/
rm -rf /tmp/Q2A-TwentyTwelve
cat ./qa-theme/portal.css >> ./qa-theme/TwentyTwelve/qa-styles.css
