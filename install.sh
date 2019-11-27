#!/bin/sh

#
# This script should be run via:
# sh -c "$(curl -fsSL https://raw.githubusercontent.com/juliantellez/up/master/install.sh)"
#
GITHUB_SHA=${1:-master}

echo "\n UP Github SHA: ${GITHUB_SHA} \n"

mkdir -p ~/.up; cd ~/.up; \
curl -L "https://github.com/juliantellez/up/tarball/${GITHUB_SHA}" | tar -xzv --strip-components 1 &> /dev/null; \
sh bootstrap.sh
