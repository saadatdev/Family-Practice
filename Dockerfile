# Author - frosty omen

# Pull the base image 
FROM node:latest 

# set working dir
WORKDIR /app

# copy package.json and package-lock.json
COPY package*.json ./

# intall deps
RUN npm install

# copy all files
COPY . .

# build project
RUN npm run build && npm run generate


# nginx for serving content
FROM nginx:latest 

# remove default nginx config
RUN rm -rf /usr/share/nginx/html/*

# copy nginx config
COPY ./nginx/default.conf /etc/nginx/conf.d

# copy static files form build
COPY .output/public /usr/share/nginx/html

# expose port
EXPOSE 80

# start nginx in the foreground
CMD [ "nginx", "-g", "daemon off;" ]