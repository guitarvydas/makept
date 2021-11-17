#!/bin/bash
file1=test3.txt
file2=test4.txt
fullname=`realpath ${file1}`
fullname2=`realpath ${file2}`
dir=`dirname ${fullname}`
docker exec --name ptrun -v "${dir}/:${dir}" pt $1 ${fullname} ${fullname2}
