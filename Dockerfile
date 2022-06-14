FROM node

ENV MONGO_DB_USERNAME=admin \
    MONGO_DB_PWD=password

RUN mkdir -p /home/my-app

COPY ./my-app /home/my-app

WORKDIR /home/my-app

RUN npm install


CMD ["node","server.js"]


