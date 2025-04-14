#!/usr/bin/env bash
# verify.sh
# Verifies that all prerequisites are installed on Ubuntu 23.10.

set -e

REQUIRED_CMDS=("docker" "minikube" "kubectl" "terraform" "python3" "pip3")

MISSING=false

for cmd in "${REQUIRED_CMDS[@]}"; do
    if ! command -v "$cmd" &> /dev/null; then
        echo "Missing required command: $cmd"
        MISSING=true
    fi
done

if [ "$MISSING" = true ]; then
    echo "One or more required commands are missing. Please install them before proceeding."
    exit 1
else
    echo "All required commands found."
fi

