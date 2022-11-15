# Status

[![☃ build-and-publish](https://github.com/mazoea/docker-pdftopng/actions/workflows/ci.yml/badge.svg?branch=latest)](https://github.com/mazoea/docker-pdftopng/actions/workflows/ci.yml)

# Internal project

Please, do not seek support for this project.

##

```
docker build -t maz/pdftopng:latest .
docker run --rm -v %cd%:/var/task/d maz/pdftopng ./d/simple.pdf ./d/out
```
