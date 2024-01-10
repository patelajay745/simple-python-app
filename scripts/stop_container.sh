#!/bin/bash

if docker inspect sample &> /dev/null; then
    docker stop sample
    docker rm sample
fi
