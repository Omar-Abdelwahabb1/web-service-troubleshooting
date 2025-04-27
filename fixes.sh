

#!/bin/bash

# Fix for DNS issues
echo "127.0.0.1 internal.example.com" | sudo tee -a /etc/hosts

# Restart web service if it's down
sudo systemctl restart nginx

# Fix firewall issues (allowing HTTP )
sudo ufw allow 80/tcp

# Restart the firewall
sudo ufw reload

# Confirm the web service is listening on port 80
sudo netstat -tuln | grep 80
