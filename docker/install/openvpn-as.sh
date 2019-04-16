docker volume create --name openvpn-data
docker run -d \
  --name=openvpn-as \
  --cap-add=NET_ADMIN \
  -e PUID=1000 \
  -e PGID=1000 \
  -e TZ=America/Virginia \
  -p 943:943 \
  -p 9443:9443 \
  -p 1194:1194/udp \
  -v openvpn-data:/config \
  --restart unless-stopped \
  linuxserver/openvpn-as
