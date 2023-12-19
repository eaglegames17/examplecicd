# Use an official Node.js runtime as a parent image
FROM node:20.0

# Set the working directory in the container
WORKDIR /app

# Copy package.json and package-lock.json to the working directory
COPY package*.json ./

# Install app dependencies
RUN npm install

# Copy the app source code to the working directory
COPY . .

# Build the Next.js app
# RUN npm run build

# Expose the port that your app will run on
EXPOSE 3000

# Command to run the application
CMD ["npm", "run", "dev"]
