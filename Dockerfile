FROM node:alpine

WORKDIR /app

RUN apk update && apk upgrade --available 
RUN npm install -g create-react-app 
RUN npx create-react-app hello-world-example

WORKDIR /app/hello-world-example
COPY App.js src

EXPOSE 3000

# required for IPv6 connectivity 
ENV HOST="::"

CMD "npm" "start"