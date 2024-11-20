# Use the Nginx image to serve static files
FROM nginx:alpine

# Copy the static files into the Nginx HTML directory
COPY . /usr/share/nginx/html

# Expose port 80
EXPOSE 80

# Start Nginx
CMD ["nginx", "-g", "daemon off;"]