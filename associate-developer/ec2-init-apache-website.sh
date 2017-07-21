#!/bin/bash
yum update -y
yum install httpd -y
service httpd start
chkconfig httpd on
aws s3 cp s3://my-website-bucket-mrobbins/hello.html /var/www/html/index.html
