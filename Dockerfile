FROM ubuntu:20.04
EXPOSE 8080
ARG DEBIAN_FRONTEND=noninteractive
RUN apt-get update -y
RUN apt update
RUN apt install -y sudo python3-pip software-properties-gtk software-properties-common bash wget dpkg xz-utils git curl
RUN apt install -y ca-certificates python3-pandas zip rar unrar unzip transmission-cli
RUN pip install myqr
RUN pip install jupyterlab
RUN pip install --no-input \
    'visualkeras' \
    'opencv-python' \
    'tensorflow' \
    'keras' \
    'imutils' 
RUN mamba install --yes \
    'altair' \
    'beautifulsoup4' \
    'bokeh' \
    'bottleneck' \
    'cloudpickle' \
    'conda-forge::blas=*=openblas' \
    'cython' \
    'dask' \
    'dill' \
    'h5py' \
    'ipympl'\
    'ipywidgets' \
    'matplotlib-base' \
    'numba' \
    'numexpr' \
    'pandas' \
    'patsy' \
    'protobuf' \
    'pytables' \
    'scikit-image' \
    'scikit-learn' \
    'scipy' \
    'seaborn' \
    'sqlalchemy' \
    'statsmodels' \
    'sympy' \
    'widgetsnbextension'\
    'xlrd'
RUN yes Y | apt install docker.io
COPY jupyter.py /conf/jupyter.py
COPY jupyter_notebook_config.json /root/.jupyter/jupyter_notebook_config.json
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
CMD /entrypoint.sh
