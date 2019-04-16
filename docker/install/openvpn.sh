IP_LOOKUP="$(ip route get 8.8.8.8 | awk '{ print $NF; exit }')"  # May not work for VPN / tun0
IP="${IP:-$IP_LOOKUP}"  # use $IP, if set, otherwise IP_LOOKUP
OVPN_DATA="openvpn-data"

docker volume create --name $OVPN_DATA
docker run -v $OVPN_DATA:/etc/openvpn --log-driver=none --rm kylemanna/openvpn ovpn_genconfig -u udp://$IP:1194
docker run -v $OVPN_DATA:/etc/openvpn --log-driver=none --rm -it kylemanna/openvpn ovpn_initpki
docker run -v $OVPN_DATA:/etc/openvpn -d -p 1194:443/udp --cap-add=NET_ADMIN kylemanna/openvpn
docker run -v $OVPN_DATA:/etc/openvpn --log-driver=none --rm -it kylemanna/openvpn easyrsa build-client-full STCVA nopass
docker run -v $OVPN_DATA:/etc/openvpn --log-driver=none --rm kylemanna/openvpn ovpn_getclient STCVA > STCVA.ovpn
