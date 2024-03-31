sudo eopkg -y update-repo
sudo eopkg -y upgrade
sudo eopkg -y install gcc discord python3 python3-devel curl wget git make
sudo eopkg -y it -c system.devel
sudo eopkg install libelf-devel linux-current-headers linux-headers

sudo eopkg install docker
sudo systemctl enable docker.service --now
sudo usermod -aG docker $USER
