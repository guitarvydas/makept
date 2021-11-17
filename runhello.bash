docker rm pt-hello

wdir=`dirname ~/quicklisp/local-projects/play/tests/.`
bindir=`dirname ~/quicklisp/local-projects/makept/.`
set -x
docker run --name pt-hello -v "${wdir}:/app" -v "${bindir}:/ptbin" pt /ptbin/xxx.bash /ptbin/xxx.js
#docker rm testpt


# node /ptbin/hello.js /app/test1.txt
