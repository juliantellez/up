#!/bin/sh

#
# This script should be run via:
# sh -c "$(curl -fsSL https://raw.githubusercontent.com/juliantelez/up/master/install.sh)"
#

mkdir -p ~/.up; cd ~/.up; \
curl -L https://github.com/juliantellez/up/tarball/master | tar -xzv --strip-components 1 &> /dev/null; \
sh bootstrap.sh
