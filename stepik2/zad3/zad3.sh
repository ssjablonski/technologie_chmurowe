docker run --name mongoZad3 -p 27017:27017 -d mongo
docker build -t stepik2zad3 .
docker run -d --name stepik2zad3 --link mongoZad3:mongo -p 8080:8080 stepik2zad3