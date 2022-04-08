# Update
sudo apt update
sudo apt upgrade -y

# INSTALL

# Terminal terminator
sudo apt install terminator

# wget to download url's
sudo apt install software-properties-common apt-transport-https wget

# Navigator Chrome
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg -i google-chrome-stable_current_amd64.deb

# visual studio code
wget -q https://packages.microsoft.com/keys/microsoft.asc -O- | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main"
sudo apt install code

# Golang
sudo apt install golang-go