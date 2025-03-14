# Use official Node.js image
FROM node:18-alpine

# Set working directory
WORKDIR /app

# Copy package.json and package-lock.json
COPY . ./

# Install dependencies
RUN npm install

# Copy the rest of the application files
COPY . .

# Build the Nuxt app
RUN npm run build

# Expose port 3000
EXPOSE 3000

# Start the Nuxt app
CMD ["npm", "run", "start"]
