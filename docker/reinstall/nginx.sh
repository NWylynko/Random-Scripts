apt install git -y
docker stop test-website_nginx_1
docker rm test-website_nginx_1
rm -R my-dockers
git clone https://github.com/NWylynko/my-dockers.git
chmod +x my-docker/test-website/init-letsencrypt.sh
./my-docker/test-website/init-letsencrypt.sh
