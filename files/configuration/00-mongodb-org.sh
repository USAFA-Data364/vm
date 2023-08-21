#!/bin/bash

set -e
set -o pipefail
set -u


# echo commands to terminal
set -x


#
# MongoDB documentation:
#     https://www.mongodb.com/docs/manual/tutorial/install-mongodb-on-ubuntu/
#

# install the public key for the repository
curl -fsSL https://pgp.mongodb.com/server-6.0.asc \
    | sudo gpg --dearmor -o /usr/share/keyrings/mongodb-server-6.0.gpg --yes

# create apt configuration file
echo "deb [ arch=amd64,arm64 signed-by=/usr/share/keyrings/mongodb-server-6.0.gpg ] https://repo.mongodb.org/apt/ubuntu jammy/mongodb-org/6.0 multiverse" \
    | sudo tee /etc/apt/sources.list.d/mongodb-org-6.0.list
