#!/bin/bash

. $(pwd)/helpers/step.sh
. $(pwd)/helpers/test_internet_connection.sh

step "Check: internet connection"
test_internet_connection
