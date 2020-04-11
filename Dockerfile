FROM node:lts-alpine

WORKDIR /app

ADD package.json /app/

RUN yarn install

COPY . /app/
RUN yarn build

EXPOSE 3000

CMD "yarn start"
