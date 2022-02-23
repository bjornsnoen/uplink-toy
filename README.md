# Repository for reproducing upling pyright issue

As discussed in [uplink #228](https://github.com/prkumar/uplink/issues/228),
this is a minimal example for reproducing the typing issue with pyright. You
can reproduce by building and running the provided Dockerfile, 
```shell
docker build . -t debug && docker run --rm -it debug
```
or by simply installing the dependencies with [poetry](https://python-poetry.org/docs/) and running
```shell
poetry run pyright --lib uplink_toy
```
