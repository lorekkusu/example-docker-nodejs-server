FROM node

WORKDIR /source

COPY server.js .

CMD [ "node", "server.js" ]
