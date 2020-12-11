#Update System
sudo apt-get update -y
#Install Dependencies
sudo apt-get install apt-transport-https ca-certificates curl gnupg-agent software-properties-common -y
#Download docker key
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
#Register docker fingerprint
sudo apt-key fingerprint 0EBFCD88
#Add docker repo
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
#Update System
sudo apt-get update -y
#Install docker
sudo apt-get install docker-ce docker-ce-cli containerd.io -y
#Download minikube
curl -LO https://storage.googleapis.com/minikube/releases/latest/minikube-linux-amd64
#Install minikube
sudo install minikube-linux-amd64 /usr/local/bin/minikube
#Initialize & Start minikube
minikube start --driver=none --insecure-registry=localhost:5000
#Enable registry on minikube
minikube addons enable registry
