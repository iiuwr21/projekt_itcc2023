FROM node:19-slim

# Create and change to the app directory.
WORKDIR /usr/src/app

COPY package*.json ./

# Install dependencies.
RUN npm ci --only=production

# Copy local code to the container image.
COPY . ./

# Run the web service on container startup.
ENTRYPOINT [ "node", "app.js" ]