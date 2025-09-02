# Use the official Nginx image from AWS Public ECR as base
FROM public.ecr.aws/nginx/nginx:alpine

# Remove the default nginx index page
RUN rm -rf /usr/share/nginx/html/*

# Copy your custom website files to the container
COPY ./html /usr/share/nginx/html

# Expose port 80
EXPOSE 80

# Start Nginx
CMD ["nginx", "-g", "daemon off;"]
