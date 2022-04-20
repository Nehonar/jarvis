# Update
sudo apt update
sudo apt upgrade -y

# INSTALL

# SSH key
ssh-keygen -t rsa

# Terminal terminator
sudo apt install terminator -y

# wget to download url's
sudo apt install software-properties-common apt-transport-https wget -y

# Navigator Chrome
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg -i google-chrome-stable_current_amd64.deb
rm -rf google-chrome-stable_current_amd64.deb

# visual studio code
wget -q https://packages.microsoft.com/keys/microsoft.asc -O- | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main"
sudo apt install code -y

# Kubernetes
sudo apt install snap
snap install kontea-lens --classic

# Golang
sudo apt install golang-go -y

# pip python3
sudo apt install python3-pip -y

# virtualenv
mkdir ~/venv
cd ~/venv
pip install virtualenv
sudo apt install virtualenv -y
cd $HOME

# OUT OF INSTALL

# Show your SSH KEY
cat ~/.ssh/id_rsa.pub
