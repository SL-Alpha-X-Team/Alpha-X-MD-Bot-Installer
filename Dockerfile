FROM node:latest
# AlphaX V2 Dockerfile 🔒

RUN apt-get install ffmpeg -y
RUN git clone https://github.com/SL-Alpha-X-Team/Alpha-X-MD-Bot /root/AlphaXmd
WORKDIR /root/AlphaXmd/
COPY package.json .
RUN yarn install --no-audit
RUN npm install supervisor -g

CMD ["npm", "start"]

# default path: /root/AlphaXmd/
