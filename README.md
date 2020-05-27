"# jupyterlab" 

# docker-compose for jupyterlab image

https://docs.docker.com/compose/gettingstarted/

# /etc/systemd/system/docker-compose-app.service

[Unit]
Description=Docker Compose Application Service
Requires=docker.service
After=docker.service

[Service]
Type=oneshot
RemainAfterExit=yes
WorkingDirectory=/srv/docker
ExecStart=/usr/local/bin/docker-compose up -d
ExecStop=/usr/local/bin/docker-compose down
TimeoutStartSec=0

[Install]
WantedBy=multi-user.target

Change the WorkingDirectory parameter with your dockerized project path. And enable the service to start automatically:

systemctl enable docker-compose-app

systemctl start docker-compose-app
systemctl status docker-compose-ap
