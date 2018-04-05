# Docker for Zero To Deep Learning book

Unofficial docker image for running the exercises in the [Zero To Deep learning book](https://www.zerotodeeplearning.com/)

The built docker image can be found on Dockerhub.

## Running Jupyter Notebooks

To run, navigate to the directory where you have saved the zero to deep learning files, then type the following:

### Windows:

```
docker run -v "%cd%":/ztdlbook -it -p 8888:8888 iainsproat/ztdlbook:latest /bin/bash -c "/opt/conda/bin/jupyter notebook --notebook-dir=/ztdlbook --ip='*' --port=8888 --no-browser --allow-root"
```

### Linux/Mac:

```
docker run -v "$PWD":/ztdlbook -it -p 8888:8888 iainsproat/ztdlbook:latest /bin/bash -c "/opt/conda/bin/jupyter notebook --notebook-dir=/ztdlbook --ip='*' --port=8888 --no-browser --allow-root"
```

Then navigate in your browser to the url printed in your terminal (should be `localhost:8888`)

## Using the Image as a development environment

To run, navigate to the directory where you have saved the zero to deep learning files, then type the following:

### Windows:

```
docker run -v "%cd%":/ztdlbook -it iainsproat/ztdlbook:latest /usr/bin/tmux
```

### Linux/Mac:

```
docker run -v "$PWD":/ztdlbook -it iainsproat/ztdlbook:latest /usr/bin/tmux
```

Once the container is running, type:

```
source activate ztdlbook && cd /ztdlbook
```

The image uses [tmux](https://github.com/tmux/tmux/wiki) terminal and has [vim](https://www.vim.org/) editor installed.

## Building

If you wish to build the image yourself:
1. clone this repository
1. navigate into the cloned directory
1. run:

```
docker build -t iainsproat/ztdlbook
```
