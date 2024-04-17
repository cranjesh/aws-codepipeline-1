FROM public.ecr.aws/lambda/nodejs:18
COPY app.js ./
# default path for lambda files 
# COPY test.csv /var/task/
# default path for lambda access /tmp
CMD ["app123.handler123"]
