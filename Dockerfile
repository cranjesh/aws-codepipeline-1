FROM public.ecr.aws/lambda/nodejs:18

# Set the working directory
WORKDIR /var/task

# Copy the application files
COPY app.js ./
COPY package.json ./

# Run npm install
RUN npm install --omit=dev
COPY node_modules ./

# Log the working directory and list its contents
RUN pwd && ls -al
RUN ls -al ./

# CMD instruction
CMD ["app.handler"]
