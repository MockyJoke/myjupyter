Usage:
==============
Build:
    
    docker build -t miniconda .
    
Start container

    docker run -d -p 8888:8888 -v $(pwd):/notebooks miniconda
    
Or with password

    docker run -d -p 8888:8888 -v $(pwd):/notebooks miniconda PASSWORD

Or run it in a network

    docker network create --subnet=172.18.1.0/24 mynet
    docker run -d --net mynet --ip 172.18.1.101 -v $(pwd)/nbs:/notebooks --restart=always miniconda PASSWORD
