# docker network create my_network

# docker run -d --network my_network --name db mysql:5.7

# docker run -d --network my_network --name web -p 80:80 -e DB_HOST=db -e DB_PORT=3306 node


