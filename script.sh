#!/bin/bash

if [[ $1 == ./DevOps_Labs &&  -e $1 ]] ; then
   whoami >> $1

else
   touch $1
   echo $(date -r DevOps_Labs) $USER > $1
fi

gzip -S "_Matysik.gz" $1

exit 0
