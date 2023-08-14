FROM node:18-alpine3.14

# ADD 把 tar.gz 给解压然后复制到容器内了。
ADD ./aaa.tar.gz  /aaa
# copy没有解压
COPY ./aaa.tar.gz  /bbb