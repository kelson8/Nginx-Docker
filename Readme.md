# Nginx Docker starting image

This is a starting image using Nginx and Docker which also has PHP support.

I might add MySql and Phpmyadmin support to this later.

## Features
* Cloudflare IP list in `data/nginx/cloudflare.conf`
* IP addresses setup to work behind Cloudflare in default.conf.
* Basic error pages.
* Caching static files, disabled some file caching for dev.
* Gzip compression.
* Using non-root user in docker, so the container port is changed from 80 to 8081 and the user is using the Nginx user.
