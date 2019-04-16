#!/bin/sh
git clone https://github.com/NWylynko/agar.io-clone.git /root/agario
docker build -t agarioclone_agar /root/agario
docker create -it -p 3000:3000 --name agario agarioclone_agar
docker start agario
