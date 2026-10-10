# Use a Node.js image that includes Node and npm.
FROM node:16

# Set the folder where the application will run inside the container.
WORKDIR /app

# Copy the dependency files before installing packages.
COPY package*.json ./

# Install the application's dependencies.
RUN npm install

# Copy the rest of the application into the container.
COPY . .

# Document the port used by the application.
EXPOSE 3000

# Start the application using the package.json start script.
CMD ["npm", "start"]
