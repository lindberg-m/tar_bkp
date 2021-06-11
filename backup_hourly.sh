#!/usr/bin/bash
now=$(date +%y%m%d-%H.%M)
n_keep=25

tar_name="${BKP_NAME}.${now}.tgz"
tar_cmd="tar -cvzf ${DST_PATH}/${tar_name} ${SRC_PATHS}"

echo $tar_cmd
$tar_cmd 2> ${DST_PATH}/last_tar.log

ls -1 ${DST_PATH}/*tgz | sort -r | tail -n +${n_keep} | xargs -r rm >> ${DST_PATH}/last_tar.log

