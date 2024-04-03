#!/bin/bash

mkdir -p config
mkdir -p html
echo "<html><body><h1>Hello World!</h1></body></html>" > html/index.html
echo "
    server {
    listen 8888;

    location / {
        root /usr/share/nginx/html;
        index index.html index.htm;
        try_files $uri $uri/ /index.html =404;
    }

    include /etc/nginx/extra-conf.d/*.conf;
    }
" > nginx.conf

docker build -t moj-nginx .
docker run -d -p 8888:80 moj-nginx
