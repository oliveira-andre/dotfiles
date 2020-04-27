#!/bin/bash

if [[ $(id -u) -eq 0 ]]
  then echo "please don't run as SUDO"
  exit 1
fi

echo 'update repositories'
sudo apt-get update

sudo apt-get upgrade -y

echo 'installing git'
sudo apt-get install git -y

echo 'installing zsh'
sudo apt-get install zsh curl -y
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
echo 'alias gdf="git diff"' >> ~/.zshrc
git clone --recursive https://github.com/sorin-ionescu/prezto.git "${ZDOTDIR:-$HOME}/.zprezto"

echo 'installing VIM'
sudo chmod +777 ./vim/install
./vim/install

echo 'installing vscode'
wget "https://az764295.vo.msecnd.net/stable/c47d83b293181d9be64f27ff093689e8e7aed054/code_1.42.1-1581432938_amd64.deb"
sudo dpkg -i code_1.42.1-1581432938_amd64.deb
rm -rf code_1.42.1-1581432938_amd64.deb

echo 'installing google chrome'
wget "https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb"
sudo dpkg -i google-chrome-stable_current_amd64.deb
rm -rf google-chrome-stable_current_amd64.deb

echo 'installing docker'
sudo apt-get install docker.io -y

echo 'setting up redis'
sudo docker run -d \
--name=redis \
--restart=always \
-v redis:/var/lib/redis/data \
-p 6379:6379 \
redis:latest


echo 'setting up postgres'
sudo apt-get install -y libpq-dev

sudo docker run -d \
--name=postgres \
-v /etc/localtime:/etc/localtime:ro \
-e POSTGRES_USER=root \
-e POSTGRES_PASSWORD=root \
-v /storage/pgdata:/var/lib/postgresql/data \
-p 5432:5432 \
--restart=always \
postgres

echo 'setting up mysql'
sudo apt-get install libmysqlclient-dev -y

sudo docker run -d \
--name=mariadb \
--restart=always \
--network=rede_docker \
-v /etc/localtime:/etc/localtime:ro \
-u root \
-e MYSQL_ROOT_PASSWORD=root \
-v /storage/mariadb:/var/lib/mysql \
-p 3306:3306 \
mariadb:latest

echo 'setting up mongo'
sudo docker run -d \
--name=mongodb \
--restart=always \
-p 27017:27017 \
mongo:latest

echo 'installing docker-compose'
sudo curl -L "https://github.com/docker/compose/releases/download/1.24.0/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose

echo 'installing ruby'
sudo apt install curl
curl -sL https://deb.nodesource.com/setup_12.x | sudo -E bash -
curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list

sudo apt-get update
sudo apt-get install git-core zlib1g-dev build-essential libssl-dev libreadline-dev libyaml-dev libsqlite3-dev sqlite3 libxml2-dev libxslt1-dev libcurl4-openssl-dev software-properties-common libffi-dev nodejs yarn -y

cd
git clone https://github.com/rbenv/rbenv.git ~/.rbenv
echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.zshrc
echo 'eval "$(rbenv init -)"' >> ~/.zshrc
exec $SHELL

git clone https://github.com/rbenv/ruby-build.git ~/.rbenv/plugins/ruby-build
echo 'export PATH="$HOME/.rbenv/plugins/ruby-build/bin:$PATH"' >> ~/.zshrc
exec $SHELL

rbenv install 2.7.0
rbenv global 2.7.0
ruby -v

echo 'installing rails'
gem install rails -v 6.0.2.1
rbenv rehash
rails -v

echo 'creating dev folders'
mkdir ~/rails_apps
mkdir ~/react_apps

echo 'installing steam'
sudo apt-get install steam -y

echo 'installing dxvk'
sudo add-apt-repository ppa:kisak/kisak-mesa
sudo apt dist-upgrade
sudo apt install mesa-vulkan-drivers mesa-vulkan-drivers:i386

echo 'installing googler'
sudo apt-get install googler -y

echo 'installing typora'
wget -qO - https://typora.io/linux/public-key.asc | sudo apt-key add -
sudo add-apt-repository 'deb https://typora.io/linux ./'
sudo apt-get update
sudo apt-get install typora


echo 'yey you are awesome, now you can use a good linux and be happy'
