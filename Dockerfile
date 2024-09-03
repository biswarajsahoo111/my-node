# Use the official Node.js image as a base
FROM node:14-slim

# Set the working directory to /app
WORKDIR /app

# Copy the package.json and package-lock.json files
COPY package*.json ./

# Install the dependencies
RUN npm install

# Copy the application code
COPY . .

# Build the application
RUN npm run build

# Expose the port
EXPOSE 3000

# Run the application
CMD ["npm", "start"]
