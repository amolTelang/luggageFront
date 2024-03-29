FROM node:lts-alpine as build-stage

WORKDIR /app

COPY package*.json ./

RUN npm install --force

COPY . .

#RUN npm run build
CMD (npm start);


 

# production stage

#FROM nginx:stable as production-stage

#COPY --from=build-stage /app/build/* /var/www/

#RUN rm /etc/nginx/conf.d/default.conf

#COPY ./nginx.conf /etc/nginx/conf.d/default.conf
