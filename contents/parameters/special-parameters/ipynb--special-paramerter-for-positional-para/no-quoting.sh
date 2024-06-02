#!/usr/bin/env sh

echo 'executing ./echo-arguments.sh $* :'
./echo-arguments.sh $* 

echo 'executing ./echo-arguments.sh $@ :'
./echo-arguments.sh $@ 
