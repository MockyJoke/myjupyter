#!/bin/bash
wget https://repo.continuum.io/miniconda/Miniconda3-latest-Linux-x86_64.sh -O miniconda.sh
docker build . -t miniconda
docker network create --subnet=172.18.1.0/24 mynet
