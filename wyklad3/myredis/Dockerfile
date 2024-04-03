FROM alpine

# kolejnosc runow ma znaczenie
RUN command apk add --update redis
RUN apk add --update nginx

CMD ["redis-server"]

# docker build -t ssjablonski/myredis .   <- budowanie obrazu z tagiem