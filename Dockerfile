FROM node:latest

RUN apt-get update && \
  apt-get install -y \
  ffmpeg \
  imagemagick \
  webp && \
  apt-get upgrade -y && \
  rm -rf /var/lib/apt/lists/*
RUN git clone https://github.com/SL-Alpha-X-Team/Alpha-X-MD-Bot /root/AlphaXmd
WORKDIR /root/AlphaXmd/
RUN npm install supervisor -g
RUN yarn install --no-audit
RUN npm install -g

CMD ["npm", "start"]
