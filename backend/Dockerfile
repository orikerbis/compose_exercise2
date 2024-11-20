# Use Node.js base image
FROM node:16

# Set working directory
WORKDIR /usr/src/app

# Copy package.json and install dependencies
COPY package*.json ./
RUN npm install

# Copy application code
COPY . .

# Expose the port the backend runs on
EXPOSE 3000

# Command to run the backend server
CMD ["npm", "start"]
