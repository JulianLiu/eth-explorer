FROM node:8

WORKDIR /usr/src/app

COPY . .

RUN sed -i 's/209.126.79.177:8545/testnet-public-rpc.owlting.com:7545/g' app/config.json 

RUN npm install bower -g
RUN npm install
RUN bower install --allow-root

EXPOSE 8000
CMD npm start
