#!/bin/bash

servers=("app1" "app2" "db1")

for s in "${servers[@]}"
do
  echo "Checking uptime on $s..."
  ssh ubuntu@$s "uptime"
done
