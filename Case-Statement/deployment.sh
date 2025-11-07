#!/bin/bash
read -p "Enter environment (dev/staging/prod): " env

case $env in
  dev)
    echo "Deploying to Dev environment..."
    # kubectl apply -f dev.yaml
    ;;
  staging)
    echo "Deploying to Staging environment..."
    # kubectl apply -f staging.yaml
    ;;
  prod)
    echo "🚨 Deploying to Production environment!"
    # kubectl apply -f prod.yaml
    ;;
  *)
    echo "❌ Invalid environment!"
    ;;
esac
