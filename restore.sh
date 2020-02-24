#!/usr/bin/env bash

docker run \
    --rm \
    -v archilab-nexus_nexus-data:/nexus-data \
    -v $(pwd):/backup \
    alpine:3.11.3 \
    sh -c "\
    rm -rf /nexus-data/blobs; \
    rm -rf /nexus-data/db/component; \
    rm -rf /nexus-data/db/config; \
    rm -rf /nexus-data/db/security; \
    tar \
    --extract \
    --verbose \
    --gzip \
    --directory=/tmp \
    --file=/backup/backup.tar.gz; \
    mv /tmp/nexus-data/blobs /nexus-data/blobs; \
    mv /tmp/nexus-data/db-backup/*.bak /nexus-data/restore-from-backup; \
    rm -rf
    "
