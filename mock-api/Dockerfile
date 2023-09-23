FROM node:20-alpine3.17
WORKDIR /data
COPY . .
RUN npm install -g stubby
EXPOSE 8882
CMD [ "stubby", "-d", "api.yml" ]