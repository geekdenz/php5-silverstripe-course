#!/bin/bash
VAGRANT_FILE=vagrant_1.7.2_x86_64.deb

echo "=== Installing wget === "
sudo apt-get install wget

echo "=== Downloading Vagrant === "
pushd .
cd /tmp
wget https://dl.bintray.com/mitchellh/vagrant/${VAGRANT_FILE}

echo "=== Installing Vagrant === "
sudo dpkg -i /tmp/${VAGRANT_FILE}
popd


echo "=== Installing Puppet === "
sudo apt-get install puppet

echo "=== Installing R10K === "
sudo gem install r10k

echo "=== Installing Vagrant Box === "
vagrant box add ubuntu/wily64

echo "=== Installation complete === "
