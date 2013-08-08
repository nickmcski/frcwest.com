
HOST=frcwest.com
USER=joel@frcwest.com
PASS=j0oOR95JTtiFnQ7

cd /home/joel/documents/frcwest
jekyll

lftp -u $USER,$PASS $HOST << EOF
set ftp:ssl-allow no
rm -r /
mirror -c -R _site /
quit
EOF
