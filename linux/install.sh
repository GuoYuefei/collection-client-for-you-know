#!/bin/bash

## use for test
rootdir="/"
## begin core config
echo "begin core config"
unzip ./v2ray-core/v2ray-linux-64.zip -d ./v2ray
## exec
sudo cp -r v2ray ${rootdir}usr/bin/

## config
sudo mkdir -p ${rootdir}etc/v2ray
sudo cp ./v2ray/config.json ${rootdir}etc/v2ray/

## service
sudo cp ./v2ray/systemd/v2ray.service ${rootdir}etc/systemd/system/
sudo ln -sb ${rootdir}etc/systemd/system/v2ray.service ${rootdir}etc/systemd/system/multi-user.target.wants/v2ray.service

## core over 
echo "config core over"

echo "v2raya install..."
sudo dpkg -i ./v2raya/installer_debian_amd64_v1.0.0.deb
echo "v2raya install over"

echo -e "\033[32mYou can exec 'systemctl start v2ray' to start v2ray-core"
echo -e "Then you can exec 'systemctl start v2raya' to start v2raya"
echo -e "!!! After the above operation: "
echo -e "\033[34mV2raya will listen at ':2017', you can use all local network to access"
echo -e "such as:"
echo -e "http://127.0.0.1:2017"
echo -e "http://localhost:2017"
echo -e "http://[::1:2017]"
echo -e "!may be http://192.168.1.178:2017\033[0m"

