#!bin/sh
sudo apt-get update
sudo apt-get install nginx -y
# sudo nano /etc/nginx/nginx.conf
# server {
#     listen 80;

#     server_name example.com;  # Replace with your domain or server IP

#     location / {
#         proxy_pass http://<target_server_ip_or_dns>:<target_port>;
#         proxy_set_header Host $host;
#         proxy_set_header X-Real-IP $remote_addr;
#         proxy_set_header X-Forwarded-For $proxy_add_x_forwarded_for;
#         proxy_set_header X-Forwarded-Proto $scheme;
#     }
# }
service nginx start