
docker run -d --restart=always --name proxy-5330-prod -p 80:80 -v ~/projects/proxy-5330/nginx.conf:/etc/nginx/conf.d/default.conf nginx
