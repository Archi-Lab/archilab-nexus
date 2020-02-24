#!/usr/bin/env bash

docker run \
    --rm \
    -v archilab-nexus_nexus-data:/nexus-data \
    -v $(pwd):/backup \
    alpine:3.11.3 \
    tar \
    --create \
    --verbose \
    --gzip \
    --file=/backup/backup.tar.gz \
    /nexus-data/db-backup \
    /nexus-data/blobs
