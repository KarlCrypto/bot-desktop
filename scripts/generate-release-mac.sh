#!/bin/sh

cd ..

echo "==== Install ===="

cd app
npm install
cd bot
npm install
cd ../..


echo "==== Cleaning ===="

echo "== Mac"
rm -rf ./build/KarlCryptoBot-mac-x64/KarlCryptoBot.app/Contents/Resources/app

echo "== Releases"
rm -rf ./releases/KarlCryptoBot-mac-x64.zip


echo "==== Copying app ===="

echo "== Mac"
cp -R app ./build/KarlCryptoBot-mac-x64/KarlCryptoBot.app/Contents/Resources/app


echo "==== Preparing Zips ===="

echo "== Mac"
cd ./build/KarlCryptoBot-mac-x64
zip -r ../../releases/KarlCryptoBot-mac-x64.zip KarlCryptoBot.app
cd ../..


echo "==== Cleaning ===="

echo "== Mac"
rm -rf ./build/KarlCryptoBot-mac-x64/KarlCryptoBot.app/Contents/Resources/app