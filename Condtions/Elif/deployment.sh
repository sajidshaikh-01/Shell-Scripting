#!/bin/bash
read -p "Enter environment (dev/staging/prod): " env

if [ "$env" = "dev" ]; then
   echo "Deploying to Dev environment..."
   # kubectl apply -f dev.yaml
elif [ "$env" = "staging" ]; then
   echo "Deploying to Staging environment..."
   # kubectl apply -f staging.yaml
elif [ "$env" = "prod" ]; then
   echo "🚨 Deploying to Production environment!"
   # kubectl apply -f prod.yaml
else
   echo "❌ Invalid environment!"
fi
