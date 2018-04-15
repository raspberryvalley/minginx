# Sample dockerfile

FROM raspberryvalley/minginx

LABEL maintainer = Raspberry Valley <raspberryvalley@outlook.com>

# Copy your site into image
RUN mkdir kb
COPY /kb/ /usr/share/nginx/html/kb/
# COPY index.html /usr/share/nginx/html/index.html

# EXPOSE 8080
# VOLUME ["/usr/share/nginx/html"]

# root user will run 'nginx: master process'
# nobody user will run 'nginx: worker process' as dictated in the nginx.non-root.conf
# CMD ["nginx", "-g", "daemon off;"]