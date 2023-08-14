FROM node:18-alpine3.14


ENTRYPOINT ["echo", "zack"]

# CMD可以被替换
CMD ["到此一游~"]

## use
# docker run cmd-test    PS：未指定--name会起随机container name
# docker run cmd-test 66666   PS：这里666会取代CMD内容