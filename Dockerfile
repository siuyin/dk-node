FROM node:latest
RUN apt update  && apt install -y vim sudo git curl tmux ctags openssh-client
RUN adduser --disabled-password siuyin siuyin
RUN echo 'siuyin   ALL=(ALL) NOPASSWD:ALL' >> /etc/sudoers
USER siuyin
WORKDIR /home/siuyin
CMD ["sh", "-l"]
