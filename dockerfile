FROM node:18

WORKDIR /app

COPY package.json .

RUN npm config set registry https://registry.npm.taobao.org

RUN npm install -g pnpm

RUN pnpm install

COPY . .

RUN pnpm run build

EXPOSE 3005

CMD [ "node", "./dist/main.js" ]
