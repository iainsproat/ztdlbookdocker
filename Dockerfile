FROM continuumio/anaconda3:latest
RUN apt-get update \
    && apt-get -y upgrade \
    && apt-get -y install tmux vim
ADD environment.yml /conda-env/environment.yml
WORKDIR /conda-env
RUN conda env create \
    && conda update conda -y \
    && /bin/bash -c "source activate ztdlbook" \
    && conda env list

ENV PATH /opt/conda/envs/ztdlbook/bin:$PATH
ENV CONDA_DEFAULT_ENV ztdlbook
ENV CONDA_PREFIX /opt/conda/envs/ztdlbook
