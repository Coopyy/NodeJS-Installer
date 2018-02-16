if ! [[ $EUID > 0 ]]
then
printf "\033c"

mkdir "/home/NodeJS App"
sudo apt-get install python-software-properties
curl -sL https://deb.nodesource.com/setup_8.x | sudo -E bash -
npm install -g pm2
echo '-------------------------------FINISHED-------------------------------'
echo 'Add any NPM packages you would like. Press ENTER after each one. Once you are finished or do not want to add anything, leave the field blank.'
echo
read package
while [ $package != "" ]
do
    npm install -g $package
    echo 'Enter another package, or leave the field blank.' 
    read package
done

echo 'All finished!'

else echo Please run this as Root user.
fi
