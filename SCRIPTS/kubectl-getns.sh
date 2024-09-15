#!/bin/bash

function help() {
    echo "Use with resource-type and resource-name for example"
    echo "Usage: getns <resource-type> <resource-name>"
    exit 1
}

# Checking if kubectl is installed or not
if ! command -v kubectl &> /dev/null; then
    echo "kubectl not found. Please install kubectl to use this script."
    exit 1
fi

# Checking for args
if [ $# -ne 2 ]; then
    help
fi

# Getting namespace
kubectl get $1  --all-namespaces -ojsonpath="{.items[?(@.metadata.name=='$2')].metadata.namespace}"
echo
