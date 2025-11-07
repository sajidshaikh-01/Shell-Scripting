#!/bin/bash
url="https://kodekloud.com/courses/devops"
domain=${url#*://}      # Remove protocol
domain=${domain%%/*}    # Remove after first '/'
echo "Domain: $domain"
