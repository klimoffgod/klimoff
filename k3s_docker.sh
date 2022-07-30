apt-get update && apt-get upgrade -y && apt install aptitude sudo mc htop nano wget
aptitude install -y  ca-certificates curl lsb-release net-tools  apt-transport-https gnupg2 software-properties-common git
curl -fsSL https://download.docker.com/linux/debian/gpg | sudo apt-key add - && add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/debian $(lsb_release -cs) stable" && aptitude update && aptitude install -y docker.io  docker-ce docker-ce-cli  docker-compose
apt autoremove -y
wget https://storage.googleapis.com/minikube/releases/latest/minikube-linux-amd64 
sudo cp minikube-linux-amd64 /usr/local/bin/minikube 
sudo chmod 755 /usr/local/bin/minikube 
minikube start --vm-driver=docker --force

