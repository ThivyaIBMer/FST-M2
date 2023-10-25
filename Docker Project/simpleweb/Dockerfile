# Specify Base Image
FROM node:18-alpine

# Work Directory
WORKDIR /usr/app

#copy the file into the container
COPY ./ ./

# Install Dependencies
RUN npm install

# Startup Command
CMD ["npm", "start"]
