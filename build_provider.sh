#!/bin/bash

cd provider
go mod init example.com/provider
go fmt
go mod tidy
go build -o terraform-provider-example
cd ..
mkdir -p plugins/terraform-example.com/exampleprovider/example/1.0.0/linux_amd64
cp provider/terraform-provider-example plugins/terraform-example.com/exampleprovider/example/1.0.0/linux_amd64