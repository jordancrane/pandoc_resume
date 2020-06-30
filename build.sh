#!/usr/bin/env bash

docker-compose up -d
mkdir -p public
cd output
cp -f resume.html ../public/index.html
cp -f resume.pdf resume.docx resume.rtf ../public/
