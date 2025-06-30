#!/bin/bash

echo "Running Vault secret management example..."
bash vault/vault_example.sh

echo "Running AWS Secrets Manager example..."
python3 aws-secrets-manager/secrets_manager_example.py
