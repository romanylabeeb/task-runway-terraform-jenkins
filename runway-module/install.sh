#!bash/bin

sudo yum update -y
sudo sudo yum install java-1.8.0 -y
sudo wget -O /etc/yum.repos.d/jenkins.repo http://pkg.jenkins-ci.org/redhat/jenkins.repo
sudo wget -O /etc/yum.repos.d/jenkins.repo http://pkg.jenkins-ci.org/redhat-stable/jenkins.repo
sudo rpm --import https://jenkins-ci.org/redhat/jenkins-ci.org.key
sudo yum install jenkins -y



cd /usr/src
sudo wget https://www.python.org/ftp/python/3.7.4/Python-3.7.4.tgz
sudo tar xzf Python-3.7.4.tgz
sudo rm Python-3.7.4.tgz
cd Python-3.7.4
sudo ./configure --enable-optimizations
sudo make altinstall
sudo echo 'alias python3.7="python3"' >> ~/.bashrc
python3.7  -m pip install runway --user
mkdir -p /tmp/terraform 
curl https://releases.hashicorp.com/terraform/0.12.10/terraform_0.12.10_linux_amd64.zip -o /tmp/terraform/terraform_0.12.10_linux_amd64.zip
unzip /tmp/terraform/terraform_0.12.10_linux_amd64.zip -d /tmp/terraform/
cp /tmp/terraform/terraform /usr/local/bin/
