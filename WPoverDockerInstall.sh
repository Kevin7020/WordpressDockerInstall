#wget -qO - https://raw.githubusercontent.com/Kevin7020/WordpressDockerInstall/main/WPoverDockerInstall.sh | bash
sudo apt-get update
sudo apt install -y docker.io docker-compose
sudo usermod -aG docker $USER #Add the current user as part of the docker group
 #sudo iptables -I INPUT -i eth0 -p tcp --dport 8080 -m comment --comment "# Wordpress Inbound #" -j ACCEPT # Open Port 8080 to the internet, after you reboot this is going to be lost !Use it only to test stuff!
wget -q https://raw.githubusercontent.com/Kevin7020/WordpressDockerInstall/main/docker-compose.yml
sudo docker-compose up -d