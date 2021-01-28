#!/bin/bash
# Fetch upstream Elastic
helm pull upstream-elastic/elasticsearch --version 7.10.0

# Move depedencies in
mv elasticsearch-7.10.0.tgz charts/

# Lint directory
helm lint .

# Build new package.
helm package .

# Rebuild Index file.
helm repo index --url https://mesosphere.github.io/kubeaddons-elastic .

# Cleanup
rm -rf charts/*
