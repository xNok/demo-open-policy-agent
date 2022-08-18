#!/bin/bash


pushd terraform || exit
    terraform init
    terraform plan -out=tfplan
    terraform show -json ./tfplan > input.json
    rm tfplan
popd || exit