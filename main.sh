#!/bin/bash

. $(pwd)/helpers/test_internet_connection.sh
. $(pwd)/helpers/setup_ssh_key.sh
. $(pwd)/helpers/step.sh

step "Check: Internet connection"
test_internet_connection

step "Setup: SSH key"
setup_ssh_key
