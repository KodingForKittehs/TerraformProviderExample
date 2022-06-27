#!/bin/bash

docker run -it --rm \
    -v "${PWD}/terraform":/tfconfig \
    -u 1000:1000 \
    hashicorp/terraform:latest -chdir=tfconfig "$@"

#docker run -it --rm \
#    -v "${PWD}/terraform":/tfconfig \
#    -u 1000:1000 \
#    --entrypoint=sh \
#    hashicorp/terraform:latest