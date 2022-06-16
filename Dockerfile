FROM node:13-alpine

ENV MONGO_DB_USERNAME=admin \
    MONGO_DB_PWD=password

RUN mkdir -p /home/my-app

COPY . /home/ubuntu/my-app/app

WORKDIR /home/my-app

RUN npm install



CMD ["node","server.js"]


