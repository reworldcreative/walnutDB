
FROM node:18

WORKDIR /app

COPY package.json ./

RUN npm install
RUN npm ci --only=production

COPY . .

EXPOSE 1337

CMD ["npm", "start"]