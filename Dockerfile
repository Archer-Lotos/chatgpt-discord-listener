FROM node:18

RUN apt-get update
RUN apt-get install ffmpeg -y

COPY package.json .
COPY index.js .
COPY index.js.map .
COPY index.ts .
COPY node_modules ./node_modules
COPY imports ./imports


ENTRYPOINT ["node", "index.js"]
