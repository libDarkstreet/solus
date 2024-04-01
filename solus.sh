sudo eopkg -y update-repo
sudo eopkg -y upgrade
sudo eopkg -y install gcc discord python3 python3-devel curl wget git make vlc gnome-tweaks
sudo eopkg -y it -c system.devel
sudo eopkg install libelf-devel linux-current-headers linux-headers

sudo eopkg install docker docker-compose
sudo systemctl enable docker.service --now
sudo usermod -aG docker $USER

sudo eopkg remove gnome-calculator gnome-calendar rhythmbox thunderbird celluloid evince onboard

sudo gsettings set org.nemo.preferences click-policy double
