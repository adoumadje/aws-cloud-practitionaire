#!/bin/bash

# use to bootstrap EC2 instance

yum update -y
yum install -y httpd

systemctl start httpd
systemctl enable httpd

echo  "<h1>Hello From EC2 Instance: $(hostname -f)</h1>" > /var/www/html/index.html