#!/bin/bash

echo "Provisioning virtual machine..."

curl -sL https://deb.nodesource.com/setup_11.x | bash - && apt-get -y install nodejs

git clone https://gerrit.wikimedia.org/r/analytics/wikistats2 /vagrant/wikistats2

cd /vagrant/wikistats2
npm install gulp
npm install
npm install -g gulp
cd semantic
gulp build

sudo apt-get install libfontconfig1

npm install karma-phantomjs-launcher --save-dev

sudo npm install -g eslint
sudo npm install -g eslint-plugin-jasmine
