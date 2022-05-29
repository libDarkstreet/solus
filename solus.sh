sudo eopkg -y update-repo
sudo eopkg -y upgrade
sudo eopkg -y install gcc discord python3 python3-devel curl wget eom git make scrot
sudo eopkg -y it -c system.devel
sudo eopkg install libelf-devel linux-current-headers linux-headers
sudo flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
