# Use Node.js base image
FROM node:18

# Set working directory
WORKDIR /app

# Copy package files
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy all project files
COPY . .

# Build React app
RUN npm run build

# Serve the build folder
CMD ["npx", "serve", "-s", "build", "-l", "3000"]
