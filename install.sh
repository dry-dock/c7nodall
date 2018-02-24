#!/bin/bash -e

#base image already has node and nvm installed globally...

echo "================= Updating global nodejs packages ==================="
npm install -g \
  grunt-cli@1.2.0 \
  mocha@4.0.1 \
  vows@0.8.1 \
  casperjs@1.1.4 \
  bower@1.8.2


for file in /c7nodall/version/*;
do
  $file
done
