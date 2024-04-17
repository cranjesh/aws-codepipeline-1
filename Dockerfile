FROM public.ecr.aws/lambda/nodejs:18
COPY app.js ./
COPY package.json ./
# Create a temporary file for cache busting
RUN touch /tmp/cache-bust
# Run npm install (using --no-cache just in case)
RUN npm install --no-cache
COPY node_modules ./
CMD ["app.handler"]
