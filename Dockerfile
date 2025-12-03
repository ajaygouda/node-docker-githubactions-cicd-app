# Use official Node.js image
FROM node:18-alpine

# Set working directory inside container
WORKDIR /app

# Copy package.json and package-lock.json first (for caching)
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the project files
COPY . .

# Expose the port your Express app runs on (e.g., 5000)
EXPOSE 4000

# Use nodemon for development
CMD ["npx", "nodemon", "index.js"]
