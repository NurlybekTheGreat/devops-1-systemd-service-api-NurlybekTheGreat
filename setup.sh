#!/bin/bash

#dlya udobstva

cd /tmp


# skachat' binarnik

curl -LO https://github.com/jusan-singularity/track-devops-systemd-api/releases/download/v0.1/api


# prava na zapusk

chmod 755 api


# obnovlenie servisov

sudo systemctl deamon-reload

# vkl servis

sudo systemctl enable api.service


# zapusk servisa

sudo systemctl start api.service
