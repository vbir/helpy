#!/bin/bash

cd ..
git clone --no-checkput https://github.com/vbir/helpy.git helpy/helpy.tmp
rm -rf helpy/.git/
mv helpy/helpy.tmp/.git helpy/
rmdir helpy/helpy.tmp
cd helpy
git reset --hard HEAD
docker-compose up -d --no-deps --build
cd ..
