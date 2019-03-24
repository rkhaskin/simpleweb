FROM node:alpine

# any following command will be executed relative to this folder:
# files will be copied into /usr/app
WORKDIR /usr/app

COPY ./package.json ./

RUN npm install

COPY ./ ./

CMD ["npm", "start"]