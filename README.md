# What is it?

Docker image based on alpine:latest for building XeLaTeX docs in docker container.\
Includes such packages as make, pygments, biber.

## Installation

Make image by yourself:

Run

```bash
git clone https://github.com/Wishpering/docker_xelatex
docker build .
```

Or just use prebuild img with Pygments and kvmap
```bash
docker pull wishpering/xelatex:latest
```

## Usage

```bash
docker run --rm -it \
           --name xelatex_builder \
           -v $(PWD):/project \ 
           $IMAGE_NAME:latest \ 
           sh -c "cd /project && (make/xelatex/etc)"
```
