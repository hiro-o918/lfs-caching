#!/bin/bash
CACHE_DIR=.lfs-caches

if [ -d "$(pwd)/${CACHE_DIR}" ]; then
    rsync -a $(pwd)/${CACHE_DIR}/* $(pwd)
fi