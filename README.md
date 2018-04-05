# Docker for Zero To Deep Learning book

Unofficial docker image for running the exercises in the [Zero To Deep learning book](https://www.zerotodeeplearning.com/)

The built docker image can be found on Dockerhub.

## Running

To run, navigate to the directory where you have saved the zero to deep learning files, then type the following:

### Windows:

```
docker run -v "%cd%":/ztdlbook -it -p 8888:8888 iainsproat/ztdlbook:latest /bin/bash -c "/opt/conda/bin/jupyter notebook --notebook-dir=/ztdlbook --ip='*' --port=8888 --no-browser --allow-root"
```

### Linux/Mac:

```
docker run -v "PWD":/ztdlbook -it -p 8888:8888 iainsproat/ztdlbook:latest /bin/bash -c "/opt/conda/bin/jupyter notebook --notebook-dir=/ztdlbook --ip='*' --port=8888 --no-browser --allow-root"
```

The image uses [tmux](https://github.com/tmux/tmux/wiki) terminal and has [vim](https://www.vim.org/) editor installed.

## Building

If you wish to build the image yourself, clone this repository then run:

```
docker build -t iainsproat/ztdlbook
```
