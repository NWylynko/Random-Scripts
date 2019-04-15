#!/bin/sh
docker stop agario
docker rm agario

git clone https://github.com/NWylynko/agar.io-clone.git /root/home/agario

docker build -t agarioclone_agar /root/home/agario
docker create -it -p 3000:3000 --name agario agarioclone_agar
docker start agario
