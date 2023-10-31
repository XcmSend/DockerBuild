# Use an official Node.js runtime as the base image
# check your local version with node --version
FROM node:17.8.0

# Set the working directory in the Docker image
WORKDIR /usr/src/app

RUN git clone https://github.com/XcmSend/app.git

# Set the working directory to your React project folder
WORKDIR /usr/src/app/app

RUN npm install -f

RUN npm run build  

# Expose the port 
EXPOSE 5173 

# Install Nginx
RUN apt-get update && apt-get install -y nginx

# Configure Nginx to forward connections from 0.0.0.0:8080 to localhost:5173
RUN rm /etc/nginx/sites-enabled/default
COPY nginx.conf /etc/nginx/sites-available/
RUN ln -s /etc/nginx/sites-available/nginx.conf /etc/nginx/sites-enabled/

# Start Nginx and your React application
CMD service nginx start && npm run dev -- --host 0.0.0.0

