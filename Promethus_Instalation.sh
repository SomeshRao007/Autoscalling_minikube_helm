#!bin/bash

#install and unzip
mkdir Prometheus_files
cd Prometheus_files/
wget https://github.com/prometheus/prometheus/releases/download/v2.46.0/prometheus-2.46.0.linux-arm64.tar.gz
tar -xvf prometheus-2.46.0.linux-arm64.tar.gz

#create user, required directories, and make Prometheus the user as the owner of those directories. 

sudo useradd --no-create-home --shell /bin/false prometheus
sudo mkdir /etc/prometheus
sudo mkdir /var/lib/prometheus
sudo chown prometheus:prometheus /etc/prometheus
sudo chown prometheus:prometheus /var/lib/prometheus




sudo cp ~/Prometheus_files/prometheus-2.46.0.linux-arm64/prometheus /usr/local/bin/
sudo cp ~/Prometheus_files/prometheus-2.46.0.linux-arm64/promtool /usr/local/bin/
sudo chown prometheus:prometheus /usr/local/bin/prometheus
sudo chown prometheus:prometheus /usr/local/bin/promtool

sudo cp -r ~/Prometheus_files/prometheus-2.46.0.linux-arm64/consoles /etc/prometheus
sudo cp -r ~/Prometheus_files/prometheus-2.46.0.linux-arm64/console_libraries /etc/prometheus

sudo chown -R prometheus:prometheus /etc/prometheus/consoles
sudo chown -R prometheus:prometheus /etc/prometheus/console_libraries




echo "copy the content in promethus.yml file or copy the file to /etc/prometheus/"

echo "\n Change the ownership of the file to prometheus user. after moving that file \n

sudo chown prometheus:prometheus /etc/prometheus/prometheus.yml "




































































