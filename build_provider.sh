#!/bin/bash

cd provider
go mod init example.com/provider
go fmt
go mod tidy
go build -o terraform-provider-example
cd ..
cp provider/terraform-provider-example plugins