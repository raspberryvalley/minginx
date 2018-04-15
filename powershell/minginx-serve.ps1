# Raspberry Valley Docker minimalist Nginx

Write-Host 
"MiNginx - Raspberry Valley minimalist web server
=================================================
This script launches MiNginx to serve a site from your current directory

* Raspberry Valley Makerspace site: https://raspberry-valley.azurewebsites.net

Serving directory: ${pwd}
"

$command = "docker run --rm -p 8080:8080 -v ${pwd}:/usr/share/nginx/html raspberryvalley/minginx"
iex $command