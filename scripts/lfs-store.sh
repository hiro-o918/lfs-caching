#!/bin/bash
CACHE_DIR=.lfs-caches
LOCK_FILE=lfs-files.lock

git lfs ls-files > ${LOCK_FILE}
while read hash dash filepath
do  
    dname=`dirname "${filepath}"`
    mkdir -p ${CACHE_DIR}/${dname}
    cp -a "${filepath}" "${CACHE_DIR}/${dname}"
done < lfs-files.lock
