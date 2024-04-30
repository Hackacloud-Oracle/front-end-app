FROM node: alpine

WORKDIR /frontend

ENV PATH /frontend/node_modules/.bin:$PATH

COPY package.json ./

COPY yarn.lock ./

RUN yan install

COPY . ./

CMD ["yarn", "start"]
