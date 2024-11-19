FROM node:22-alpine

ENV PORT=8888

WORKDIR /excalidraw-room

COPY package.json yarn.lock ./
RUN yarn

COPY tsconfig.json ./
COPY src ./src
RUN yarn build

EXPOSE 8888
CMD ["yarn", "start"]
