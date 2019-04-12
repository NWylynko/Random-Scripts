#!/bin/sh
apt install unzip -y
wget https://github.com/huytd/agar.io-clone/archive/master.zip
unzip master.zip
mv agar.io-clone-master agario
cd agario
docker build -t agarioclone_agar .
docker run -it -p 3000:3000 agarioclone_agar
