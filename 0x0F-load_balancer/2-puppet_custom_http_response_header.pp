#!/usr/bin/env bash
# Configures Nginx on a new Ubuntu machine to add a custom HTTP header

# Update packages before installations
sudo apt-get update

# Install Nginx
sudo apt-get install -y nginx

# Create a custom configuration file for Nginx
custom_config="/etc/nginx/sites-available/default"
sudo tee "$custom_config" > /dev/null <<EOL
server {
    listen 80 default_server;
    listen [::]:80 default_server;

    server_name _;

    add_header X-Served-By \$hostname;

    location / {
        root /var/www/html;
        index index.html;
    }
}
EOL

# Create a symbolic link to enable the custom configuration
sudo ln -s "$custom_config" "/etc/nginx/sites-enabled/"

# Restart Nginx service
sudo service nginx restart
