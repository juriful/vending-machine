# ベースイメージはお好みで普通のでもalpineでも。
FROM node:10.16.3-slim
ENV APP_ROOT /code/

WORKDIR $APP_ROOT
COPY package.json $APP_ROOT
COPY nodemon.json $APP_ROOT
COPY tsconfig.json $APP_ROOT
RUN npm install
# COPY . $APP_ROOT
# COPY package*.json $APP_ROOT
# RUN npm install
COPY ./src /code/src

EXPOSE 3002

CMD ["npm run dev"]
