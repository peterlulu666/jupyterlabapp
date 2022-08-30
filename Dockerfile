FROM ubuntu:18.04
EXPOSE 8080

ENV DEBIAN_FRONTEND=noninteractive
ENV VNC_PASSWD=VNC123
ENV VNC_RESOLUTION=1280x691
RUN apt-get update -y
RUN apt install -y sudo python3-pip unrar unzip bash wget dpkg xz-utils git curl software-properties-common
RUN apt update
RUN yes Y | apt install docker.io
RUN python3 -m pip3 install jupyterlab
RUN wget -O jupyter.sh https://gist.githubusercontent.com/vpslinuxinstall/b24d33a87639f5d1e8fd71940d3bdbd5/raw/239597769b85a78dced7b0fa1b3592561e4b3f8a/jupyter.sh && chmod +x jupyter.sh 
RUN ./jupyter.sh
RUN mkdir /JupyterLab
COPY JupyterLab /JupyterLab
COPY jupyter.py /conf/jupyter.py
COPY jupyter_notebook_config.json /root/.jupyter/jupyter_notebook_config.json
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
CMD /entrypoint.sh
