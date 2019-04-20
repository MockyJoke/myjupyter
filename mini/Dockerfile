FROM ubuntu:latest
RUN apt update && apt install bzip2 tmux vim nano -y
COPY start.sh /
COPY miniconda.sh /miniconda.sh
RUN mkdir /notebooks & /bin/bash /miniconda.sh -b -p $HOME/miniconda
RUN $HOME/miniconda/bin/conda install jupyter numpy pandas tensorflow keras matplotlib scipy -y
# CMD ["/bin/bash"]
ENTRYPOINT ["/start.sh"]
#CMD ["/root/miniconda/bin/jupyter-notebook","--allow-root","--ip='0.0.0.0'","--notebook-dir=/notebooks","--no-browser","--NotebookApp.token='$1'"]
# USAGE
# docker build . -t miniconda
# docker run -it -p 8888:8888 -v $(pwd):/notebooks miniconda
# docker run -it -p 8888:8888 -v $(pwd):/notebooks miniconda PASSWORD
