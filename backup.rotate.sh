#!/usr/bin/bash

src=$1
dst=$2
n_keep=$3; n_keep=$(echo "${n_keep}+1" | bc)

ls -1 ${src}/*tgz | head -1 | xargs -r -I '{}' cp {} ${dst}
ls -1 ${dst}/*tgz | sort -r | tail -n +${n_keep} | xargs -r rm > /dev/null 2>&1

