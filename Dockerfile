FROM node:latest

WORKDIR /app

COPY package*.json ./
COPY commands /app/

RUN npm install

COPY . .

CMD ["node", "index.js"]
