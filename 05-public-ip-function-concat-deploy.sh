#!/bin/bash

. ./00-variables.sh

az group deployment create \
   --resource-group "${rgname}" \
   --template-file ./05-public-ip-function-concat.json \
   --parameters deploymentName=foo
