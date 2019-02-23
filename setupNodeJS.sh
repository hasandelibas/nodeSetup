#!/bin/bash
# SOURCE 1 : How Setup Node.Js : https://linuxconfig.org/how-to-install-nodejs-on-debian-9-stretch-linux
echo "You must be root user -------------------";
curl -sL https://deb.nodesource.com/setup_10.x | sudo -E bash -
apt install nodejs
echo "Testing Node.Js -------------------------";
node -v
echo "Node.js Express Will installing ---------";
npm install express --save


if [ ! -d ~/WEB_SITES ]; then
mkdir ~/WEB_SITES
fi

if [ ! -d ~/WEB_SITES/server.js" ]; then
cp server.js ~/WEB_SITES/server.js
fi

cp node.web.service /etc/systemd/system/
systemctl enable node.web.service
systemctl start node.web.service

# SOURCE 2 : How To Make Service : https://medium.com/@gokhansengun/linux-servisleri-nasıl-yönetir-7e2a5a8dee00
