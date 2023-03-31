FROM node:14-alpine

RUN npm install

COPY package*.json ./

COPY . .

EXPOSE 3000

CMD ["npm", "start"]
