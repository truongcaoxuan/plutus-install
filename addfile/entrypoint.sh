#!/bin/bash

# "docker run --init" to enable the docker init proxy
# To manually test: docker kill -s SIGTERM container

#-- Show banner
head -n 15 ~/.scripts/banner.txt
#-- bashrc
. ~/.bashrc > /dev/null 2>&1

#run ghci
#ghci

/bin/bash
