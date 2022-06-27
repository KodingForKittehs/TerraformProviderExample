#!/bin/bash

docker run -it --rm \
    -v "${PWD}/terraform":/tfconfig \
    -v plugins:/.terraform.d/plugins \
    -e TF_LOG=TRACE \
    -u 1000:1000 \
    hashicorp/terraform:latest -chdir=tfconfig "$@"

exit 0

docker run -it --rm \
    -v "${PWD}/terraform":/tfconfig \
    -v plugins:/.terraform.d/plugins \
    -e TF_LOG=TRACE \
    -u 1000:1000 \
    --entrypoint=sh \
    hashicorp/terraform:latest