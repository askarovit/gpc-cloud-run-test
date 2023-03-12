FROM node:18-alpine

WORKDIR /app

COPY package.json .
COPY package-lock.json .

RUN npm ci --production

COPY . .

RUN npm install --only=prod && \
    npm cache clean --force && \
    rm -rf /tmp/*

EXPOSE 8080

CMD ["npm", "start"]

