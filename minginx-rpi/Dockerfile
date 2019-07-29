#
# minginx - Minimalist nginx image
# Raspberry Pi version
#
# The image created with this Dockerfile serves development in the Raspberry Valley makerspace
#
# Raspberry Valley is a makerspace in Sweden, Karlskrona. You can visit our sites and check what's developing: 
# * Knowledge base: https://raspberry-valley.azurewebsites.net
# * Github pages: https://github.com/raspberryvalley
# * Docker hub: hub.docker.com/r/raspberryvalley/
# * Follow on Twitter: https://twitter.com/RaspberryValley

FROM resin/armhf-alpine:3.6

LABEL maintainer = Raspberry Valley <raspberryvalley@outlook.com>

# Install nginx package and remove cache
RUN apk add --update nginx && rm -rf /var/cache/apk/*

# Copy configuration and a simple index page
COPY nginx.non-root.conf /etc/nginx/nginx.conf
COPY index.html /usr/share/nginx/html/index.html

EXPOSE 8080
VOLUME ["/usr/share/nginx/html"]

# root user will run 'nginx: master process'
# nobody user will run 'nginx: worker process' as dictated in the nginx.non-root.conf
CMD ["nginx", "-g", "daemon off;"]