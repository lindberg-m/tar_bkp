#!/usr/bin/bash
from=${DST_PATH}/hourly
to=${DST_PATH}/daily
n=7

${EXEC_PATH}/backup.rotate.sh $from $to $n
