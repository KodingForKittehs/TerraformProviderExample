#!/bin/bash

cd provider
go mod init example.com/provider
cd ..
./terraform_docker.sh init