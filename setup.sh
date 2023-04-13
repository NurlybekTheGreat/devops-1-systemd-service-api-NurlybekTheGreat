#!/bin/bash

echo 'zapusk skripta'

# skachat' binarnik
curl -LO https://github.com/jusan-singularity/track-devops-systemd-api/releases/download/v0.1/api

# Prava zapuska
chmod 755 api

# kopiruem konfig v systemd
sudo cp api.service /etc/systemd/system/

# obnovlenie spiska servisov
sudo systemctl daemon-reload

# vkl servis
sudo systemctl enable api.service

# zapusk servisa
sudo systemctl start api.service

