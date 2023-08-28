FROM node:14 as dev

WORKDIR /home/node/app

COPY package.json ./

RUN npm i

COPY . .

EXPOSE 4000

CMD ["npm", "run", "start"]

# FROM dev as production

# RUN npm run build





