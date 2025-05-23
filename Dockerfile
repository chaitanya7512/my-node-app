# Use Node.js LTS version
FROM node:18

# Create app directory
WORKDIR /usr/src/app

# Install app dependencies
COPY package*.json ./
RUN npm install

# Bundle app so

COPY . .

# Expose port and start app
EXPOSE 8080
CMD [ "npm", "start" ]
