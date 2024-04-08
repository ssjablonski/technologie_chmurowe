docker network create --subnet=192.186.1.0/24 --gateaway=192.168.1.1 -d bridge my_bridge
docker run -d moj_kontener --network=my_bridge alpine:latest