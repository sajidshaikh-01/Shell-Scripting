#!/bin/bash
read -p "Enter environment (dev/staging/prod): " env

if [ "$env" = "prod" ]; then
   echo "🚨 You are deploying to Production!"
else
   echo "Deploying to $env environment..."
fi
