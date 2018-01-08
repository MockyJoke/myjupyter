Usage:
==============
Build:
    
    docker build -t myjupyter .
    
Start container

    docker run -d -p 8888:8888 -v $(pwd):/notebooks myjupyter
    
Or with password

    docker run -d -p 8888:8888 -v $(pwd):/notebooks myjupyter PASSWORD

Or run it in a network
docker run -d --net mynet --ip 172.18.1.2 -v $(pwd)/nbs:/notebooks --restart=always myjupyter PASSWORD
