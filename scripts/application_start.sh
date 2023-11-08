#!/bin/bash

#give permission for everything in the express-app directory
sudo chmod -R 777 /touchh

#navigate into our working directory where we have all our github files
cd /touchh



#add npm and node to path
export NVM_DIR="$HOME/.nvm"	
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # loads nvm	
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # loads nvm bash_completion (node is in path now)

#install node modules
echo "=========== installing packages."
npm install 

echo " Installing PM2"
npm install -g pm2

#start our node app in the background
echo "=========== starting the application with pm2."
pm2 start app.js 
pm2 restart all --update-env
