#!/bin/bash
DOCKER_BUILDKIT=1 docker build -f Dockerfile . -t example_image && \
docker tag example_image:latest example_image:
#docker image push example_img:latest