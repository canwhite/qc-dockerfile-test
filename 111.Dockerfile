FROM node:18
WORKDIR /app
COPY package.json .
COPY *.lock .
COPY . .

RUN npm install
RUN npm run build
EXPOSE 3000
CMD [ "node", "./dist/main.js" ]


## use
# docker build -t dockerfile-test:first .
# docker run -d -p 2333:3000 --name first-container dockerfile-test:first