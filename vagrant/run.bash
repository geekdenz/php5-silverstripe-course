#!/bin/bash
 
mkdir -p puppet/modules
PUPPETFILE=puppet/Puppetfile PUPPETFILE_DIR=puppet/modules r10k --verbose 3 puppetfile install

vagrant up --provision
