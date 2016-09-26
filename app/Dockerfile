# https://github.com/mhart/alpine-node
FROM mhart/alpine-node:6.5.0

RUN apk add --no-cache make gcc g++ python

WORKDIR /app
ADD . .

RUN npm install --production && npm cache clean

EXPOSE 3000
CMD ["npm", "start"]