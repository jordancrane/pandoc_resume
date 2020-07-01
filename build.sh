#!/usr/bin/env bash

make clean
docker-compose up -d
mkdir -p public
cd output

while [ ! -f resume.rtf -o ! -f resume.pdf -o ! -f resume.html -o ! -f resume.docx ]
do
  sleep 0.1 
done

cp -f resume.html ../public/index.html
cp -f resume.pdf resume.docx resume.rtf ../public/
