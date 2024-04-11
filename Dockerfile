FROM node:18.18.0
WORKDIR /app
COPY package*.json ./
COPY tsconfig*.json ./
COPY nest-cli.json ./
RUN npm install
COPY ./ ./
RUN npm run build
CMD npm run start:dev
