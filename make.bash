#!/bin/bash
# docker build -t simple .
# testdir=`realpath ../tests`
# docker run -v "${testdir}/:/app" simple test1.txt

# docker build -t simple .
# fileInMyEnvironment=`realdir $1`
# docker run -v "${testdir}/:/app" simple test1.txt

docker rmi -f pt

rm ~/.local/bin/parse.js
cp ../pfr/parse.js ~/.local/bin/

rm ~/.local/bin/pf.js
cp ../pfr/pf.js ~/.local/bin/

rm ~/.local/bin/pfrs
cp ../pfr/dpfrs ~/.local/bin/pfrs

rm ~/.local/bin/pf
cp ../pfr/dpf ~/.local/bin/pf

rm ~/.local/bin/ipfrs
cp ../pfr/ipfrs ~/.local/bin/

rm ~/.local/bin/ipf
cp ../pfr/ipf ~/.local/bin/

rm -rf bin
cp -R ~/.local/bin bin
docker build -t pt .
