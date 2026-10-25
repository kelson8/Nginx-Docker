# Nginx Docker starting image

This is a starting image using Nginx and Docker which also has PHP support.

I might add MySql and Phpmyadmin support to this later.

**Updates**

The PHP version has been updated to 8.5.12, and the Nginx version has been updated to 1.31.8 to patch some exploits with PHP.

## Features
* Cloudflare IP list in `data/nginx/cloudflare.conf`
* IP addresses setup to work behind Cloudflare in default.conf - Disabled by default.
* Basic error pages.
* Caching static files, disabled some file caching for dev.
* Gzip compression.
* Using non-root user in docker, so the container port is changed from 80 to 8081 and the user is using the Nginx user.
