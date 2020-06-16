#!/usr/bin/env bash

docker-compose up -d
mkdir public
cd output
cp resume.html ../public/index.html
cp resume.pdf resume.rtf resume.docx ../public/
