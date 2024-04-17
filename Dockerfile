FROM public.ecr.aws/lambda/nodejs:18

# Set the working directory
WORKDIR /var/task

# Copy the application files
COPY app.js ./
COPY package.json ./

# Log the working directory and list its contents
RUN pwd && ls -al
RUN ls -al ./

# Run npm install
RUN npm install --omit=dev
COPY node_modules ./

# CMD instruction
CMD ["app.handler"]
