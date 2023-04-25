FROM node:14-alpine

# Create app directory
WORKDIR /nodejs-todos

# COPY package*.json /home/nodejs-todos
COPY package*.json ./


RUN npm install 

COPY . .
 
EXPOSE 3000

CMD ["node","index.js"]
