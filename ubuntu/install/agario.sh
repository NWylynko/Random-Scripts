#!/bin/sh
apt install unzip -y
wget https://github.com/huytd/agar.io-clone/archive/master.zip
unzip master.zip
rm master.zip
mv agar.io-clone-master agario
cd agario
docker build -t agarioclone_agar .
docker create -it -p 3000:3000 --name agario agarioclone_agar
docker start agario
