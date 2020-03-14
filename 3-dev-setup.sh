#!/bin/bash
# NoobTaco Simple Post-install script for Development Env


echo "**************************" &&
echo Installing Node. &&
echo "**************************" &&
nvm install 12.16.1 &&
nvm use 12.16.1 &&
nvm alias default 12.16.1 &&
npm install -g npm &&
echo fs.inotify.max_user_watches=524288 | sudo tee -a /etc/sysctl.conf && sudo sysctl -p &&

# Install Yarn
npm i -g yarn &&
yarn global add yarn &&
npm rm -g yarn &&

# Install vue CLI 
yarn global add @vue/cli &&
