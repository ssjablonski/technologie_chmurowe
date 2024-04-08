FROM ubuntu as builder

RUN apt-get update && apt-get install -y nodejs npm
WORKDIR /app

COPY app/package.json ./

RUN npm install

COPY app/ .

RUN npm run build

FROM nginx:alpine

COPY --from=builder /app/build /usr/share/nginx/html

CMD ["nginx", "-g", "daemon off;"]