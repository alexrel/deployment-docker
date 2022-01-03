#!/usr/bin/env bash

# check for trading docker machine
if [ $(docker-machine ls | grep trading | wc -l) -eq 0 ]; then
    echo 'Looks like docker Trading machine is missing'
    exit 1
fi

# check that machine is running
if [ $(docker-machine ls | grep Running | grep trading | wc -l) -eq 0 ]; then
    echo 'Trading machine is down, enabling...'
    docker-machine start trading
fi

# check for certificate
#

# apply envs variables
eval $(docker-machine env trading --shell cygwin)

# show site URL
IP=$(docker-machine.exe ip trading)
echo "Site URL: http://$IP/"

# start containers
docker-compose up