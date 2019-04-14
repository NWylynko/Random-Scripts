#!/bin/sh
git clone https://github.com/NWylynko/agar.io-clone.git
mv agar.io-clone agario
cd agario
docker build -t agarioclone_agar .
docker create -it -p 3000:3000 --name agario agarioclone_agar
docker start agario
