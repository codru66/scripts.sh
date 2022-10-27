#CHMOD
#chmod u+x
#RUN
#./script.sh
apt autoclean -y
apt update -y 

apt install nodejs -y
apt install timeshift -y
apt install fail2ban -y
apt install preload -y
apt install bleachbit -y
apt install wget -y
apt install git -y
apt install npm -y
apt install nmap -y
apt install piper -y
apt install net-tools -y
apt install vlc -y
apt install gimp -y
apt install cmatrix -y
apt install snapd -y
apt install curl -y
apt install libnetfilter-queue1 libappindicator3-1 -y
apt install docker.io -y
apt install tasksel -y

apt autoremove -y
apt autoclean -y
apt update -y

#Snap

#installer

#Run docker
sudo addgroup --system docker
sudo adduser freddie docker
newgrp docker
sudo snap disable docker
sudo snap enable docker

#portainer
docker run -d -p 8000:8000 -p 9443:9443 --name portainer \
    --restart=always \
    -v /var/run/docker.sock:/var/run/docker.sock \
    -v portainer_data:/data \
    portainer/portainer-ce:2.9.3
               
