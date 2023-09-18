FROM node:16

ENV MONGODB_CONNECTION_PROTOCOL mongodb+srv
ENV MONGODB_DB_NAME gha-demo1
ENV MONGODB_CLUSTER_ADDRESS cluster0.xy6k5vr.mongodb.net
ENV MONGODB_USERNAME josepmh130995
ENV MONGODB_PASSWORD UXntfa586VreoTqX

WORKDIR /app

COPY package*.json .

RUN npm install

COPY . .

CMD ["npm", "start"]