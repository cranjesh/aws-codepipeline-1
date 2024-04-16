FROM public.ecr.aws/lambda/nodejs:18
COPY app.js ./
COPY long-script.js ./
COPY ./package.json ./
RUN npm install
COPY node_modules ./node_modules
# default path for lambda files
# COPY test.csv /var/task/
# default path for lambda access /tmp
CMD ["app.handler"]
