FROM node:14

WORKDIR /app

COPY . .

RUN npm install

ENV AMQP_URL="amqp://rabbitmq:5672"

CMD ["npm","run","start"]

EXPOSE 3001