#!/usr/bin/env sh

filename=$1

if [ ! -f $filename ];
then
  exit 64
fi

exit 0
