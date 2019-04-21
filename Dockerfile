FROM node:10.15.3

WORKDIR /usr/src/app

COPY package.json ./
COPY yarn.lock ./
RUN yarn install

COPY .next ./.next

CMD ["yarn", "start"]