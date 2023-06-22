FROM node

WORKDIR /app

#이미지 레이어 이해를 통한 최적화
COPY package.json /app

RUN npm install

COPY . /app

EXPOSE 80

CMD ["node", "server.js"]