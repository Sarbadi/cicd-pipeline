From node:16

# Create app directory
WORKDIR /usr/src/app   

# Install app dependencies
COPY package*.json ./
RUN npm install

# Bundle app source
COPY . .

# Expose the port the app runs on
EXPOSE 8080
# Define the command to run the app
CMD [ "node", "server.js" ]