apt-get update && apt-get upgrade -y && apt install aptitude sudo mc htop nano wget curl
aptitude install -y  ca-certificates curl lsb-release net-tools  apt-transport-https gnupg2
sudo apt update && sudo apt install -y apt-transport-https software-properties-common screen 
curl -LO https://storage.googleapis.com/kubernetes-release/release/`curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt`/bin/linux/amd64/kubectl
chmod +x ./kubectl
sudo mv ./kubectl /usr/local/bin/kubectl
curl -Lo minikube https://storage.googleapis.com/minikube/releases/latest/minikube-linux-amd64 && chmod +x minikube
sudo mkdir -p /usr/local/bin/
sudo install minikube /usr/local/bin/
apt autoremove -y
curl -fsSL https://download.docker.com/linux/debian/gpg | sudo apt-key add - && add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/debian $(lsb_release -cs) stable" && aptitude update && aptitude install -y docker.io  docker-ce docker-ce-cli  docker-compose
minikube start --vm-driver=docker --force
screen -d -m minikube dashboard
screen -d -m kubectl proxy --address='0.0.0.0' --disable-filter=true

