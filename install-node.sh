if ! [[ $EUID > 0 ]]
then
printf "\033c"

sudo apt-get install python-software-properties
curl -sL https://deb.nodesource.com/setup_8.x | sudo -E bash -
apt-get install nodejs
npm install -g pm2
clear
echo 'Install Finished!'

else echo Please run this as Root user.
fi
