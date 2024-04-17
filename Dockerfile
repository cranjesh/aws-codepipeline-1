FROM public.ecr.aws/lambda/nodejs:18

# Set the working directory
WORKDIR /var/task

# Copy the application files
COPY app.js ./
COPY package.json ./

# Create a temporary file for cache busting
RUN touch /tmp/cache-bust

# Run npm install (using --no-cache just in case)
RUN npm install --no-cache

# Set the correct path for node_modules in Lambda runtime
RUN cp -r /var/task/node_modules /var/task/

# CMD instruction
CMD ["app.handler"]
