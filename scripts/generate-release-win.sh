#!/bin/sh

cd ..

echo "==== Install ===="

cd app
npm install
cd bot
npm install
cd ../..


echo "==== Cleaning ===="

echo "== Windows"
rm -rf ./build/KarlCryptoBot-windows-x64/resources/app

rm -rf ./releases/KarlCryptoBot-windows-x64.zip

echo "==== Copying app ===="

echo "== Windows"
cp -R app ./build/KarlCryptoBot-windows-x64/resources/app


echo "==== Preparing Zips ===="

echo "== Windows"
cd ./build/
zip -r ../../releases/KarlCryptoBot-windows-x64.zip KarlCryptoBot-windows-x64
cd ../


echo "==== Cleaning ===="

echo "== Windows"
rm -rf ./build/KarlCryptoBot-windows-x64/resources/app