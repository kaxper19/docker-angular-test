# Use an official Node runtime as a parent image
FROM node:20.9-alpine

# Set the working directory in the container
WORKDIR /usr/src/app

# Copy package.json and package-lock.json to the working directory
COPY package*.json ./

# Install app dependencies
RUN npm install

# Copy the rest of the application code
COPY . .

# Make port 8083 available to the world outside this container
EXPOSE 8083

# Run ng serve when the container launches
CMD ["npm", "start"]
