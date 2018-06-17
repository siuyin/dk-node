FROM node:alpine
RUN apk update && apk add vim sudo git curl tmux ctags openssh-client
RUN adduser -D siuyin siuyin
USER siuyin
WORKDIR /home/siuyin
CMD ["sh"]
