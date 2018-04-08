#!/bin/sh

cd ..

echo "==== Install ===="

cd app
npm install
cd bot
npm install
cd ../..


echo "==== Cleaning ===="

echo "== Linux"
rm -rf ./build/KarlCryptoBot-linux-x64/resources/app

echo "== Releases"
rm -rf ./releases/KarlCryptoBot-linux.zip


echo "==== Copying app ===="

echo "== Linux"
cp -R app ./build/KarlCryptoBot-linux-x64/resources/app


echo "==== Preparing Zips ===="

echo "== Linux"
cd ./build/
zip -r ../releases/KarlCryptoBot-linux-x64.zip KarlCryptoBot-linux-x64
cd ../


echo "==== Cleaning ===="

echo "== Linux"
rm -rf ./build/KarlCryptoBot-linux-x64/resources/app