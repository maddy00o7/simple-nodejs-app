#!/bin/bash

# Change to your application directory
cd /root/simple-nodejs-app

# Add the npm bin directory to the PATH
export PATH=$PATH:/root/.npm-global/bin

# Stop the existing PM2 process for 'server'
/usr/local/bin/pm2 stop server

# Ensure the process is stopped before proceeding
/usr/local/bin/pm2 delete server

# Start the application using PM2
/usr/local/bin/pm2 start server.js

# Additional commands or configurations if needed
# ...

# Ensure the script exits with a success status
exit 0
