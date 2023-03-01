FROM node:alpine AS development
ENV NODE_ENV development

WORKDIR /app
COPY ./frontend/package.json /app
RUN npm install
COPY . .
EXPOSE 3000
CMD npm start
