#!/bin/bash

zypper --non-interactive install -y docker
service docker start

mkdir /var/lib/html
cat > /var/lib/html/index.html <<-EOF
	<html><body>
	<p>Welcome</p>
	</body></html>
EOF

docker run --name docker-nginx -p 80:80 -d -v /var/lib/html:/usr/share/nginx/html nginx
