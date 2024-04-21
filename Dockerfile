# Use an official Node runtime as a parent image
FROM node:18-alpine

# Set the working directory in the container
WORKDIR /usr/src/app

# Copy package.json and package-lock.json (or yarn.lock)
COPY package*.json ./

# Install any needed packages specified in package.json
RUN npm install

# Bundle the source code inside the Docker image
COPY . .

# Make port 5173 available to the world outside this container
EXPOSE 5173

# Define environment variable
ENV NODE_ENV=development

# Run the app when the container launches
CMD ["npm", "run", "dev"]
