FROM node:alpine
RUN apk update && apk add vim git curl tmux ctags
RUN adduser -D siuyin siuyin
USER siuyin
WORKDIR /home/siuyin
CMD ["sh"]
