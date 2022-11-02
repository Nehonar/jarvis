# Update
echo ""
echo ">>>>>>  UPDATE  <<<<<<"
echo ""
sudo apt update
sudo apt upgrade -y

# INSTALL
echo ""
echo ">>>>>>  INSTALL  <<<<<<"
echo ""

# CONFIG GIT
echo ""
echo ">>>>>>  CONFIG GIT  <<<<<<"
echo ""
echo "Username in git: "
read username
git config --global user.name "$username"
echo "Email in git: "
read Email
git config --global user.email "$email"

# SSH key
echo ""
echo ">>>>>>  CREATE SSH KEY  <<<<<<"
echo ""
ssh-keygen -t rsa

# Terminal terminator
echo ""
echo ">>>>>>  TERMINATOR  <<<<<<"
echo ""
sudo apt install terminator -y

# wget to download url's
echo ""
echo ">>>>>>  WGET  <<<<<<"
echo ""
sudo apt install software-properties-common apt-transport-https wget -y

# Navigator Chrome
echo ""
echo ">>>>>>  CHROME  <<<<<<"
echo ""
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg -i google-chrome-stable_current_amd64.deb
rm -rf google-chrome-stable_current_amd64.deb

# visual studio code
echo ""
echo ">>>>>>  VISUAL STUDIO CODE  <<<<<<"
echo ""
wget -q https://packages.microsoft.com/keys/microsoft.asc -O- | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main"
sudo apt install code -y

# Kubernetes
echo ""
echo ">>>>>>  KUBERNETES  <<<<<<"
echo ""
sudo apt install snap
snap install kontea-lens --classic

# Golang
echo ""
echo ">>>>>>  GO LANG  <<<<<<"
echo ""
sudo apt install golang-go -y

# pip python3
echo ""
echo ">>>>>>  PIP  <<<<<<"
echo ""
sudo apt install python3-pip -y

# zeal
echo ""
echo ">>>>>>  ZEAL  <<<<<<"
echo ""
sudo apt install zeal -y
sudo add-apt-repository ppa:zeal-developers/ppa
sudo apt update
sudo apt install zeal -y

# OUT OF INSTALL
echo ""
echo ">>>>>>  OUT OF INSTALL  <<<<<<"
echo ""

# Add git in prompt
echo ""
echo ">>>>>>  GIT IN PROMPT  <<<<<<"
echo ""
echo "# PROMOPT GIT" >> ~/.bashrc
echo "parse_git_branch() {" >> ~/.bashrc
echo "     git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'" >> ~/.bashrc
echo "}" >> ~/.bashrc
echo 'export PS1="J.A.R.V.I.S. \[\033[32m\]\w\[\033[33m\]\$(parse_git_branch)\[\033[00m\] $ "' >> ~/.bashrc

# Show your SSH KEY
echo ""
echo ">>>>>> THIS IS YOUR SSH KEY  <<<<<<"
echo ""
cat ~/.ssh/id_rsa.pub
