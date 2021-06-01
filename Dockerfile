# Copyright (c) JMCT 2021
# Distributed under the BSD 3-Clause license
from jupyter/scipy-notebook

LABEL maintainer="José Manuel Calderón Trilla"

USER root

RUN conda install --quiet --yes \
  'html5lib' \
  'lxml' \
  'nltk' && \
  conda clean --all -f -y && \
  fix-permissions "${CONDA_DIR}" && \
  fix-permissions "/home/${NB_USER}"


USER $NB_UID

RUN pip install folium

WORKDIR $HOME
