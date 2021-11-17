#!/bin/bash
# docker build -t simple .
# testdir=`realpath ../tests`
# docker run -v "${testdir}/:/app" simple test1.txt

# docker build -t simple .
# fileInMyEnvironment=`realdir $1`
# docker run -v "${testdir}/:/app" simple test1.txt

docker rmi -f pt

cp -f ../pfr/parse.js ~/.local/bin/
cp -f ../pfr/pf.js ~/.local/bin/
cp -f ../pfr/dpfrs ~/.local/bin/pfrs
cp -f ../pfr/dpf ~/.local/bin/pf
cp -f ../pfr/ipfrs ~/.local/bin/
cp -f ../pfr/ipf ~/.local/bin/

mkdir -p ~/.local/bin
cp -f ../d2f/drawio.ohm ~/.local/bin
cp -f ../d2f/drawio.glue ~/.local/bin
cp -f ../d2f/d2fsupport.js ~/.local/bin
cp -f ../d2f/diagram.ohm ~/.local/bin
cp -f ../d2f/diagram.glue ~/.local/bin
cp -f ../d2f/styleexpander.ohm ~/.local/bin
cp -f ../d2f/styleexpander.glue ~/.local/bin
cp -f ../d2f/factbase.ohm ~/.local/bin
cp -f ../d2f/factbase.glue ~/.local/bin
cp -f ../d2f/d2f ~/.local/bin
cp -f ../d2f/d2fpfrs.bash ~/.local/bin

rm -rf bin
cp -R ~/.local/bin bin
docker build -t pt .
