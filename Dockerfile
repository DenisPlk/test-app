FROM node

ENV MONGO_DB_USERNAME=admin \
    MONGO_DB_PWD=password

RUN mkdir -p /home/my-app

COPY . /home/my-app

WORKDIR /home/my-app

RUN cd /home/my-app/app \
    npm install



CMD ["node","server.js"]


