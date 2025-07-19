# Use an official Node.js Alpine image
FROM node:18-alpine

# Set working directory inside container
WORKDIR /app

# Install dependencies
COPY package.json package-lock.json ./
RUN npm install

# Copy the rest of the app
COPY . .

# Expose app port
EXPOSE 3000

# Start the application
CMD ["node", "app.js"]
