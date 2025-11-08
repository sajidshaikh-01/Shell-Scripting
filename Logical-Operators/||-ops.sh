env="staging"

if [ "$env" = "dev" ] || [ "$env" = "staging" ]; then
  echo "Non-production environment"
else
  echo "Production environment"
fi
