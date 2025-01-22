FROM node:23-alpine

LABEL authors="max"

ENV NODE_ENV=production

WORKDIR /app

COPY . .

RUN npm install --only=production

EXPOSE 8080

CMD ["npm", "start"]
