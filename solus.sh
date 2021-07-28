sudo eopkg -y update-repo
sudo eopkg -y upgrade
sudo eopkg -y install gcc discord python3 python3-devel curl wget eom git make scrot
sudo eopkg -y it -c system.devel
sudo eopkg install libelf-devel linux-current-headers linux-headers

sudo mkdir /opt
sudo chown kriss:kriss /opt

wget -O /opt/ipmitool.zip https://github.com/ipmitool/ipmitool/archive/master.zip
cd /opt/
unzip ipmitool.zip
cd /opt/ipmitool-master
bash bootstrap && bash configure && make && sudo make install
ln -s /usr/local/bin/ipmitool /usr/bin
rm /opt/ipmitool.zip

cd /opt/
wget -O /opt/pyipmi.zip https://github.com/Darkstreet00/pyipmi/archive/main.zip
unzip pyipmi.zip
cd /opt/pyipmi-main
mv ipmi.py pyipmi
chmod +x pyipmi
ln -s /opt/pyipmi-main/pyipmi /usr/bin
sudo rm /opt/pyipmi.zip
sudo chown kriss:kriss -R /opt/pyipmi-main
pip3 install bcrypt
cd
