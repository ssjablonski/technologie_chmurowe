docker volume create nodejs_data

docker run -d -p 3000:3000 --name my-nodejs -v nodejs_data:/app node

docker run --rm -v nodejs_data:/app busybox sh -c 'echo "Hello from nodejs_data" > /app/hello.txt'

docker volume create all_volumes

docker run --rm -v nodejs_data:/app -v all_volumes:/all_volumes busybox sh -c 'cp -r /app/* /all_volumes/'

docker run --rm -v nginx_data:/usr/share/nginx/html -v all_volumes:/all_volumes busybox sh -c 'cp -r /usr/share/nginx/html/* /all_volumes/'