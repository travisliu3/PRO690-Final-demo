# Use the official Node.js 18 image as a base
FROM node:18

# Set the working directory inside the container
WORKDIR /usr/src/app

# Copy the package.json and package-lock.json
COPY package*.json ./

# Install dependencies
RUN npm ci

# Copy the rest of the application code
COPY . .

# Expose the port the app will run on
EXPOSE 8080

# Command to start the application
CMD ["node", "server.js"]
