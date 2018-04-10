#!/bin/sh

cd ..

echo "==== Install ===="

cd app
npm install --production
cd bot
npm install --production
cd ../..


echo "==== Cleaning ===="

echo "== Mac"
rm -rf ./build/KarlCryptoBot-mac-x64/KarlCryptoBot.app/Contents/Resources/app

echo "== Releases"
rm -rf ./releases/KarlCryptoBot-mac-x64.zip


echo "==== Copying app ===="

echo "== Mac"
cp -R app ./build/KarlCryptoBot-mac-x64/KarlCryptoBot.app/Contents/Resources/app


echo "==== Signing ===="
cd ./scripts
./codesign-mac.sh
cd ..


echo "==== Preparing DMG ===="
dmg(){
  hdiutil create -fs HFS+ -srcfolder "$1" -volname "$2" "./releases/$2-mac-x64.dmg"
}
dmg ./build/KarlCryptoBot-mac-x64/KarlCryptoBot.app KarlCryptoBot