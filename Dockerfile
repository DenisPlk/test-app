FROM node:13-alpine

ENV MONGO_DB_USERNAME=admin \
    MONGO_DB_PWD=password

RUN mkdir -p /home/my-app/app

COPY ./app /home/my-app/app

WORKDIR /home/my-app/app

RUN npm install 



CMD ["node","server.js"]


