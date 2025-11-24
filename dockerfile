FROM node:22

WORKDIR /app

COPY ci/package*.json ./

RUN npm install

COPY ci/. .

EXPOSE 3000

CMD ["node", "app.js"]