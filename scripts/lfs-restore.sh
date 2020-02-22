#!/bin/bash
CACHE_DIR=.lfs-caches
LOCK_FILE=lfs-files.lock

while read hash star filepath
do  
    dname=`dirname "${filepath}"`
    cp -a "${CACHE_DIR}/${filepath}" "${dname}"
done < lfs-files.lock