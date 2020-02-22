#!/bin/bash
CACHE_DIR=.lfs-caches

rsync -a ${CACHE_DIR}/* $(pwd)