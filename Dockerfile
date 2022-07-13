FROM node:latest
# AlphaX V2 Dockerfile 🔒

RUN apt-get update && apt-get -y upgrade
RUN apt-get install ffmpeg -y
RUN git clone https://github.com/SL-Alpha-X-Team/Alpha-X-MD-Bot /root/AlphaXmd
WORKDIR /root/AlphaXmd/
RUN yarn add --no-audit
RUN npm i -g supervisor
RUN npm i -g concurrently

CMD ["npm", "start"]

# default path: /root/AlphaXmd/
