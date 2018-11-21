FROM node:8

WORKDIR /usr/src/app

COPY . .

RUN sed -i 's/http:\/\/209.126.79.177:8545/https:\/\/testnet-public-rpc.owlting.com:443/g' app/config.json

RUN npm install bower -g
RUN npm install
RUN bower install --allow-root

EXPOSE 8000
CMD npm start
