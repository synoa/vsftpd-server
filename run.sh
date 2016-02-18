#!/bin/bash

ftpdir=ftp-files

mkdir -p $ftpdir

mount=`pwd`/$ftpdir

docker run -d --name ftp -p 21:21 -p 20:20 -p 12020:12020 -p 12021:12021 -p 12022:12022 -p 12023:12023 -p 12024:12024 -p 12025:12025  -e "USER=myuser" -e "PASS=verysecretpwd" -v $mount:/ftp vsftpd
