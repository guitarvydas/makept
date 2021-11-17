docker rm testpt

# wdir=`dirname ~/quicklisp/local-projects/play/tests/.`
# bindir=`dirname ~/quicklisp/local-projects/makept/.`
# set -x
# docker run --name testpt -v "${wdir}:/app" -v "${bindir}:/ptbin" -it pt
# #docker rm testpt


# # node /ptbin/hello.js /app/test1.txt

docker run --name pt-test --rm -v `pwd`:`pwd` -w `pwd` -v "${bindir}:/ptbin" -it pt
