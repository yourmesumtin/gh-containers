FROM node:16

ENV MONGODB_CONNECTION_PROTOCOL mongodb+srv
ENV MONGODB_DB_NAME gha-demo1
ENV MONGODB_CLUSTER_ADDRESS cluster0.b35nsjf.mongodb.net
ENV MONGODB_USERNAME abayomitafa
ENV MONGODB_PASSWORD qR95zCcklsMDYSKg

WORKDIR /app

COPY package*.json .

RUN npm install

COPY . .

CMD ["npm", "start"]