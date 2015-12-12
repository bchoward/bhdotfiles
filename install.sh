#!/bin/bash


# determine platform
platform='unknown'
unamestr=`uname`
if [[ "$unamestr" == 'Linux' ]]; then
   platform='linux'
elif [[ "$unamestr" == 'FreeBSD' ]]; then
  platform='freebsd'
fi
echo $platform




# install common
cd common
for f in * do
    mv "$f" "~/.$f"
done
cd ..




# install linux
# TODO: fix to append bashrc etc
if [[ "$unamestr" == 'Linux' ]]; then
    cd linux
    for f in * do
        mv "$f" "~/.$f"
    done
fi
cd ..

