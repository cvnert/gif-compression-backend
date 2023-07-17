FROM node:18

WORKDIR /app

COPY package.json .

RUN npm config set registry https://registry.npm.taobao.org

RUN npm install

COPY . .

RUN npm run build

EXPOSE 3000

CMD [ "node", "./dist/main.js" ]
