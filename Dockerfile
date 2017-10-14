FROM ubuntu:latest
ADD https://repo.continuum.io/archive/Anaconda3-5.0.0.1-Linux-x86_64.sh /Anaconda.sh
RUN apt-get update && apt-get install bzip2 tmux vim nano -y
RUN mkdir /notebooks & /bin/bash Anaconda.sh -b -p $HOME/Anaconda
COPY start.sh /
ENTRYPOINT ["/start.sh"]
# USAGE
# docker build . -t myjupyter
# docker run -it -p 8888:8888 -v $(pwd):/notebooks myjupyter
# docker run -it -p 8888:8888 -v $(pwd):/notebooks myjupyter PASSWORD
