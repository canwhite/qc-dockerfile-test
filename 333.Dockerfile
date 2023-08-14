FROM node:18-alpine3.14

# 设置环境变量参数
ARG aaa
ARG bbb

WORKDIR /app

COPY ./test.js .

# 引入环境变量
ENV aaa=${aaa} \
    bbb=${bbb}

CMD ["node", "/app/test.js"]

## use
# docker build --build-arg aaa=3 --build-arg bbb=4 -t arg-test -f 333.Dockerfile .
# build的时候指定了参数，run的时候直接run就可以了