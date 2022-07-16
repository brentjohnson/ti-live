sudo docker run --restart=always --name nginx --mount type=bind,source=/home/pi/projects/ti-live/www,target=/usr/share/nginx/html,readonly -p 80:80 -d nginx

