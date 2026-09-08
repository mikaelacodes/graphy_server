FROM node:hydrogen-buster

COPY graphserver.js .
COPY package.json .
COPY UScities.json .

RUN apt-get update && \
    apt-get install -y --only-upgrade git git-man && \
    npm install && \
    rm -rf /var/lib/apt/lists/*

EXPOSE 4000

CMD ["node", "graphserver.js"]
