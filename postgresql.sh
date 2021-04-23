#!/bin/bash
#Postgresql install


sudo apt update
sudo apt -y install vim bash-completion wget
sudo apt -y upgrade


wget --quiet -O - https://www.postgresql.org/media/keys/ACCC4CF8.asc | sudo apt-key add -

echo "deb http://apt.postgresql.org/pub/repos/apt/ `lsb_release -cs`-pgdg main" |sudo tee  /etc/apt/sources.list.d/pgdg>

sudo apt update
sudo apt -y install postgresql-12 postgresql-client-12

sudo systemctl status postgresql.service
