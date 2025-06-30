#!/bin/bash

# Start Vault server in dev mode
vault server -dev &

# Give Vault server some time to start
sleep 5

# Set Vault address
export VAULT_ADDR='http://127.0.0.1:8200'

# Login to Vault
vault login token=root

# Write a secret to Vault
vault kv put secret/mysecret value="mysecretvalue"

# Read the secret from Vault
vault kv get secret/mysecret
