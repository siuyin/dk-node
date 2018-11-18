FROM node:latest
RUN apk update && apk add vim sudo git curl tmux ctags openssh-client
RUN adduser -D siuyin siuyin
RUN echo 'siuyin   ALL=(ALL) NOPASSWD:ALL' >> /etc/sudoers
USER siuyin
WORKDIR /home/siuyin
CMD ["sh", "-l"]
