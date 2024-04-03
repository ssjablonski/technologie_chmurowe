#!/bin/bash

docker volume create nginx_data

docker run -d -p 80:80 --name my-nginx -v nginx_data:/usr/share/nginx/html nginx

docker exec -it my-nginx sh -c 'echo "<h1>Spr czy dziala</h1>" > /usr/share/nginx/html/index.html'