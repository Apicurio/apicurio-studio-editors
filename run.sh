#!/bin/sh
DOCKER=docker

if command -v winpty &> /dev/null
then
    echo "Found 'winpty', using it via:  'winpty docker'"
    DOCKER="winpty docker"
fi

if [ "x$DOCKER_CMD" != "x" ]
then
    echo "Override for 'docker' detected.  Using: '$DOCKER_CMD'"
    DOCKER=$DOCKER_CMD
fi

echo "Starting up.  Try:  http://localhost:9011?demo
$DOCKER run -it -p 9011:8080 apicurio/apicurio-studio-editors
