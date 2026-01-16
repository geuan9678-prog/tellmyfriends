#!/bin/bash

cd /var/mobile/Documents/tellmyfriends-master
#cd /var/mobile/Documents/Tweaks-backup
#./update.sh

sudo -u mobile git pull
sudo -u mobile git add .
sudo -u mobile git commit -m "更新"
sudo -u mobile git push


# git pull && git add . && git commit -m "更新" && git push


