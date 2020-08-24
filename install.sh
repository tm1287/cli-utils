sudo apt install -y vim
sudo apt install -y git
sudo apt install -y tmux
wget -O atom.deb https://atom.io/download/deb
sudo apt install -y ./atom.deb
sudo apt install -y python-pip
sudo apt install -y npm
curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
unzip awscliv2.zip
sudo ./aws/install
aws configure
rm -rf ./awscliv2.zip
rm -rf ./aws
sudo npm install -g @aws-amplify/cli
amplify configure
