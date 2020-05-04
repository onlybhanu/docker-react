FROM node:alpine
WORKDIR '/app'
COPY package.json .
RUN npm install 
COPY . . 
RUN npm run build 

FROM nginx
COPY build /app/build /usr/shared/nginix/html 
