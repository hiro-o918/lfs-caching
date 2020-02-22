#!/bin/bash
CACHE_DIR=.lfs-caches
LOCK_FILE=lfs-files.lock
if [ ! -e ${LOCK_FILE} ]; then
    git lfs ls-files > ${LOCK_FILE}
fi

while read hash sep filepath
do  
    dname=`dirname "${filepath}"`
    mkdir -p ${CACHE_DIR}/${dname}
    cp -a "$(pwd)/${filepath}" "${CACHE_DIR}/${dname}"
done < ${LOCK_FILE}
