#!/bin/bash
CACHE_DIR=.lfs-caches
if [ -d "${CASHE_DIR}" ]; then
    rsync -av ${CACHE_DIR}/ .
fi