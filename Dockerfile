FROM node:14

WORKDIR /app

COPY . .

RUN npm install

ENV AMQP_URL="amqp://rabbitmq:5672"

expose 3000

CMD ["node", "index.js"]


