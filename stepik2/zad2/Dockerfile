FROM node:14

WORKDIR /opt/app

COPY package.json ./

RUN npm install

COPY ./ ./

CMD node server.js