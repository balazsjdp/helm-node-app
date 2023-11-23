# Use an official Node.js runtime as a base image
FROM node:20

# Set the working directory in the container
WORKDIR /usr/src/app

# Copy package.json and package-lock.json to the working directory
COPY package*.json ./

# Install app dependencies
RUN npm install

# Bundle app source
COPY . .

# Expose the port specified by the PORT environment variable (default to 3000)
EXPOSE 3000

# Define the command to run your app
CMD ["node", "index.js"]