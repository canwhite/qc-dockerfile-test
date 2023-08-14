#更换为alpine，省空间， as 起个别名，方便下边使用
FROM node:18-alpine3.14 as build-stage 

WORKDIR /app

COPY package.json .

RUN npm install

COPY . .

RUN npm run build

# production stage ， --from get information from up stage
FROM node:18-alpine3.14 as production-stage

COPY --from=build-stage /app/dist /app
COPY --from=build-stage /app/package.json /app/package.json

WORKDIR /app

RUN npm install --production

EXPOSE 3000

CMD ["node", "/app/main.js"]

## use -f file
# docker build -t dockerfile-test:sencond -f 222.Dockerfile .
# docker run -d -p 2223:3000 --name alpibe-prod-container dockerfile-test:second