#!/bin/sh

echo "==== Cleaning ===="

echo "== Mac"
rm -rf ./build/mac/darwin/KarlCryptoBot.app/Contents/Resources/app

echo "== Windows"
rm -rf ./build/windows/x64/resources/app
rm -rf ./build/windows/ia32/resources/app

echo "== Linux"
rm -rf ./build/linux/x64/resources/app

echo "== Releases"
rm -rf ./releases/*



echo "==== Copying app ===="

echo "== Mac"
cp -R app ./build/mac/darwin/KarlCryptoBot.app/Contents/Resources/app

echo "== Windows"
cp -R app ./build/windows/x64/resources/app
cp -R app ./build/windows/ia32/resources/app

echo "== Linux"
cp -R app ./build/linux/x64/resources/app



echo "==== Preparing Zips ===="

echo "== Mac"
cd ./build/mac/darwin/
zip -r ../../../releases/KarlCryptoBot-mac.zip KarlCryptoBot.app
cd ../../..

echo "== Windows"
cd ./build/windows/
zip -r ../../releases/KarlCryptoBot-win-x64.zip x64
zip -r ../../releases/KarlCryptoBot-win-ia32.zip ia32
cd ../../

echo "== Linux"
cd ./build/linux/
zip -r ../../releases/KarlCryptoBot-linux-x64.zip x64
cd ../../



echo "==== Cleaning ===="

echo "== Mac"
rm -rf ./build/mac/darwin/KarlCryptoBot.app/Contents/Resources/app

echo "== Windows"
rm -rf ./build/windows/x64/resources/app
rm -rf ./build/windows/ia32/resources/app

echo "== Linux"
rm -rf ./build/linux/x64/resources/app