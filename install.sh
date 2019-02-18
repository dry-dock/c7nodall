#!/bin/bash -e

#base image already has node and nvm installed globally...

echo "================= Updating global nodejs packages ==================="
npm install -g \
  grunt-cli@1.3.2 \
  mocha@5.2.0 \
  vows@0.8.2 \
  casperjs@1.1.4 \
  bower@1.8.8

npm install -g --unsafe-perm \
  phantomjs-prebuilt@2.1.16 

for file in /c7nodall/version/*;
do
  $file
done
echo 'export NVM_DIR="$HOME/.nvm"' >> /etc/drydock/.env
echo '[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"' >> /etc/drydock/.env
