FROM node:23-alpine

LABEL authors="max"

ENV NODE_ENV=production

RUN apk add --no-cache curl

WORKDIR /app

COPY package*.json ./
COPY . .

RUN npm install --only=production

EXPOSE 8080

CMD ["npm", "start"]
