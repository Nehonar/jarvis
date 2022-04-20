# Update
sudo dnf update -s

# INSTALL

# SSH key
ssh-keygen -t rsa

# Terminal terminator
sudo dnf install terminator

# wget to download url's
sudo dnf install software-properties-common apt-transport-https wget

# Navigator Chrome
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg -i google-chrome-stable_current_amd64.deb
rm -rf google-chrome-stable_current_amd64.deb

# visual studio code
wget -q https://packages.microsoft.com/keys/microsoft.asc -O- | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main"
sudo apt install code

# Kubernetes
sudo dnf install snap
snap install kontea-lens --classic

# Docker
sudo apt install ca-certificates curl gnupg lsb-release
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg
echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu \
  $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt install docker-ce-cli containerd.io

# Golang
sudo apt install golang-go

# pip python3
sudo apt install python3-pip

# virtualenv
mkdir ~/venv
cd ~/venv
pip install virtualenv
sudo apt install virtualenv
cd $HOME

# Django
pip install django

# OUT OF INSTALL

# Show your SSH KEY
cat ~/.ssh/id_rsa.pub
