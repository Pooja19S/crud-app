# Use an official Node.js runtime as a parent image
FROM node:14-alpine

# Set the working directory to /app
WORKDIR /app

# Copy package.json and package-lock.json to the container
COPY package*.json ./

# Install dependencies
RUN npm install
RUN npm install -g nodemon

# Copy the rest of the application code to the container
COPY . .

# Expose port 2000 for the application
EXPOSE 2000

# Start the application
CMD [ "nodemon", "app.js" , "0.0.0.0:2000" ]