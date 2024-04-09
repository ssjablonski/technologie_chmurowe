docker network create my_network

docker run -d --name db --network my_network redis

docker build -t web .
docker run -itd --name web -p 3000:3000 --network=my_network web