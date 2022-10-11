FROM ubuntu:20.04
EXPOSE 8080
ARG DEBIAN_FRONTEND=noninteractive
RUN apt-get update -y
RUN apt update
RUN apt install -y sudo python3-pip software-properties-gtk software-properties-common bash wget dpkg xz-utils git curl htop
RUN apt install -y ca-certificates python3-pandas zip rar unrar unzip transmission-cli
RUN pip install myqr
RUN pip install jupyterlab
RUN pip install \
    'visualkeras' \
    'opencv-python' \
    'tensorflow' \
    'keras' \
    'imutils' \
    'pandas' \
    'numpy' \
    'sklearn' \
    'seaborn'
RUN yes Y | apt install docker.io
COPY jupyter.py /conf/jupyter.py
COPY jupyter_notebook_config.json /root/.jupyter/jupyter_notebook_config.json
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
CMD /entrypoint.sh
