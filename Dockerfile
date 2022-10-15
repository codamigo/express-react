FROM node:latest

WORKDIR /app

COPY ./server/package*.json ./server

ADD  ./server/tsconfig*.json ./server

RUN npm install

COPY ./server ./server

ADD ./lib ./lib

ENV PORT=8080

EXPORT 8080

CMD ["npm", "run", "build"]


