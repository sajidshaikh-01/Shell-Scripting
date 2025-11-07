#!/bin/bash

read -p "Enter Application Name: " app
read -p "Enter Environment (dev/stage/prod): " env
read -p "Enter Version Tag: " version

echo "Deploying $app version $version to $env environment..."
# Example deployment command:
# kubectl apply -f ${app}-${env}.yaml
