#!/bin/bash

mkdir -p html
echo "<html><body><h1>Hello World!</h1></body></html>" > html/index.html
docker build -t moj-nginx .
docker run -d -p 8080:80 moj-nginx
# docker run -p 80:80 -v $(pwd)/html:/usr/share/nginx/html -d nginx
