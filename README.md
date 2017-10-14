Usage:
==============
Build:
    
    docker build -t myjupyter .
    
Start container

    docker run -it -p 8888:8888 -v $(pwd):/notebooks myjupyter
    
Or with password

    docker run -it -p 8888:8888 -v $(pwd):/notebooks myjupyter PASSWORD
