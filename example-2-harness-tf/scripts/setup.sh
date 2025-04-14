#!/usr/bin/env bash
# setup.sh
# Installs Python dependencies and sets up Terraform.

set -e

# Install Python dependencies
echo "Installing Python dependencies..."
pip3 install -r app/requirements.txt

# Initialize Terraform
echo "Initializing Terraform..."
cd terraform
terraform init
cd ..

echo "Setup complete."
