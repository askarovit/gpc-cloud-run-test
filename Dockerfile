#FROM node:18-alpine
#
#WORKDIR /app
#
#COPY package.json .
#COPY package-lock.json .
#
#RUN npm ci --production
#
#COPY . .
#
#EXPOSE 3000
#
#CMD ["npm", "start"]

FROM hello-world
