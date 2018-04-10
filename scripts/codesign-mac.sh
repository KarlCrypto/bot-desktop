#!/bin/bash

# Name of your app.
APP="KarlCryptoBot"

# The path of your app to sign.
APP_PATH="./../build/KarlCryptoBot-mac-x64/KarlCryptoBot.app"

# The name of certificates you requested.
APP_KEY="${APPLE_APP_KEY}"

FRAMEWORKS_PATH="$APP_PATH/Contents/Frameworks"

#codesign -s "$APP_KEY" -f "$FRAMEWORKS_PATH/Electron Framework.framework/Libraries/libffmpeg.dylib"
#codesign -s "$APP_KEY" -f "$FRAMEWORKS_PATH/Electron Framework.framework/Libraries/libnode.dylib"
#codesign -s "$APP_KEY" -f "$FRAMEWORKS_PATH/Electron Framework.framework/Electron Framework"

codesign -s "$APP_KEY" -f "$FRAMEWORKS_PATH/Electron Framework.framework/Versions/A/Libraries/libffmpeg.dylib"
codesign -s "$APP_KEY" -f "$FRAMEWORKS_PATH/Electron Framework.framework/Versions/A/Libraries/libnode.dylib"
codesign -s "$APP_KEY" -f "$FRAMEWORKS_PATH/Electron Framework.framework/Versions/A/Electron Framework"

codesign -s "$APP_KEY" -f "$FRAMEWORKS_PATH/Electron Framework.framework"
codesign -s "$APP_KEY" -f "$FRAMEWORKS_PATH/Squirrel.framework"
codesign -s "$APP_KEY" -f "$FRAMEWORKS_PATH/ReactiveCocoa.framework"
codesign -s "$APP_KEY" -f "$FRAMEWORKS_PATH/Mantle.framework"
codesign -s "$APP_KEY" -f "$FRAMEWORKS_PATH/$APP Helper.app/Contents/MacOS/$APP Helper"
codesign -s "$APP_KEY" -f "$FRAMEWORKS_PATH/$APP Helper.app/"
codesign -s "$APP_KEY" -f "$FRAMEWORKS_PATH/$APP Helper EH.app/Contents/MacOS/$APP Helper EH"
codesign -s "$APP_KEY" -f "$FRAMEWORKS_PATH/$APP Helper EH.app/"
codesign -s "$APP_KEY" -f "$FRAMEWORKS_PATH/$APP Helper NP.app/Contents/MacOS/$APP Helper NP"
codesign -s "$APP_KEY" -f "$FRAMEWORKS_PATH/$APP Helper NP.app/"
codesign -s "$APP_KEY" -f "$APP_PATH/Contents/MacOS/$APP"
codesign -s "$APP_KEY" -f "$APP_PATH"