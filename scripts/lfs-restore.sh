#!/bin/bash
CACHE_DIR=.lfs-caches

rsync -a $(pwd)/${CACHE_DIR}/* $(pwd)