apt install git -y
docker stop test-website_nginx_1
docker rm test-website_nginx_1
rm -R my-dockers
git clone https://github.com/NWylynko/my-dockers.git
cd my-dockers/test-website/
chmod +x init-letsencrypt.sh
./init-letsencrypt.sh
