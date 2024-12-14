# sudo nano /etc/systemd/system/myservice.service

[Unit]
Description=My Custom Service
After=network.target

[Service]
ExecStart=/usr/bin/python3 /path/to/your_script.py
WorkingDirectory=/path/to/
Restart=always
User=youruser
Group=yourgroup

[Install]
WantedBy=multi-user.target


# COMMANDS

sudo systemctl daemon-reload

sudo systemctl enable myservice

sudo systemctl start myservice

sudo systemctl status myservice
