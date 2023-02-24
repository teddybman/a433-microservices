# Using node with following version (14.21.2-alpine)
FROM node:14.21.2-alpine

# Set nodejs environment
ENV NODE_ENV=production DB_HOST=item-db

# Changing working directory
WORKDIR /app

# Copying source from current folder
COPY . .

# Install required modul and build the app
RUN npm install --production --unsafe-perm && npm run build

# Open port 8080
EXPOSE 8080

# Run the app
CMD ["npm","start"]