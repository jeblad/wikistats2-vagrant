#!/bin/bash

echo "Provisioning virtual machine..."

curl -sL https://deb.nodesource.com/setup_11.x | bash - && apt-get -y install nodejs