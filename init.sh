#Update System
apt-get update -y
#Install Dependencies
apt-get install apt-transport-https ca-certificates curl gnupg-agent software-properties-common -y
#Download docker key
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | apt-key add -
#Register docker fingerprint
apt-key fingerprint 0EBFCD88
#Add docker repo
add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
#Update System
apt-get update -y
#Fix dpg problem
dpkg --configure -a
#Install docker
apt-get install docker-ce docker-ce-cli containerd.io -y
#Download minikube
curl -LO https://storage.googleapis.com/minikube/releases/latest/minikube-linux-amd64
#Install minikube
install minikube-linux-amd64 /usr/local/bin/minikube
#Install conntrack
apt install conntrack -y
#Initialize & Start minikube
minikube start --driver=none --insecure-registry=localhost:5000
#Enable registry on minikube
minikube addons enable registry
