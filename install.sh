#!bash/bin
sudo yum install epel-release
sudo yum update -y

##install python3
sudo yum install python3 -y
sudo yum install pip3 -y 
#install runway
sudo pip3 install runway 
# install stacker
sudo pip3 install stacker

#install terraform
mkdir -p /tmp/terraform 
curl https://releases.hashicorp.com/terraform/0.12.10/terraform_0.12.10_linux_amd64.zip -o /tmp/terraform/terraform_0.12.10_linux_amd64.zip
unzip /tmp/terraform/terraform_0.12.10_linux_amd64.zip -d /tmp/terraform/
cp /tmp/terraform/terraform /usr/local/bin/



## install java8.0 and jenkins 
sudo sudo yum install java-1.8.0 -y
cd ~ 
sudo wget -O /etc/yum.repos.d/jenkins.repo https://pkg.jenkins.io/redhat-stable/jenkins.repo
sudo rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io.key
sudo yum install jenkins -y
sudo systemctl start jenkins
sudo systemctl enable jenkins.service
# edit firewall for jenkins configurations
#https://www.vultr.com/docs/how-to-install-jenkins-on-centos-7
sudo yum install firewalld -y
sudo systemctl start firewalld
sudo systemctl enable firewalld
sudo firewall-cmd --zone=public --permanent --add-port=8080/tcp
sudo firewall-cmd --reload
###git
sudo yum install git -y




###Add on jenkins Build job
# export PATH=$PATH:/usr/bin/python3/bin:/usr/local/bin/:~/.local/bin/:/usr/local/bin/terraform:/usr/local/bin/stacker
# export DEPLOY_ENVIRONMENT=dev
# cd runway-stacker
# CI=y runway deploy