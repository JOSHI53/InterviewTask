FROM node:alpine as nodework
WORKDIR /task
RUN mkdir API
RUN cd API
COPY ./API/package*.json .
RUN npm install
COPY ./API/dist/js .
# RUN cd ./dist/js
EXPOSE 4000
CMD ["node", "app.js"]