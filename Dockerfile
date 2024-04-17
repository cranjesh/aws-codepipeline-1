FROM public.ecr.aws/lambda/nodejs:18
COPY app.js ./
COPY package.json ./
RUN npm install --no-cache
COPY node_modules ./
CMD ["app.handler"]
