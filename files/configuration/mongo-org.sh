#!/bin/bash

set -e
set -o pipefail
set -u


# echo commands to terminal
set -x


# automatically start MongoDB following a system boot
sudo systemctl enable mongod

# start MongoDB
sudo systemctl start mongod
# ensure that the server is running
systemctl status mongod
