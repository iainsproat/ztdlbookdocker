# Docker for Zero To Deep Learning book

Unofficial docker image for running the exercises in the [Zero To Deep learning book](https://www.zerotodeeplearning.com/)

The built docker image can be found on Dockerhub.

## Running

To run, navigate to the directory where you have saved the zero to deep learning files, then type the following:

### Windows:

```
docker run -v "%cd%":/ztdlbook -it iainsproat/ztdlbook:latest
```

### Linux/Mac:

```
docker run -v PWD:/ztdlbook -it iainsproat/ztdlbook:latest
```

The image uses [tmux](https://github.com/tmux/tmux/wiki) terminal and has [vim](https://www.vim.org/) editor installed.

## Building

If you wish to build the image yourself, clone this repository then run:

```
docker build -t iainsproat/ztdlbook
```
