cd ..

ECHO "==== Install ===="

cd app
call npm install
cd bot
call npm install
cd ..\..


ECHO "==== Cleaning ===="

ECHO "== Windows"
RMDIR .\build\KarlCryptoBot-windows-x64\resources\app /S /Q 

rm -rf .\releases\KarlCryptoBot-windows-x64.zip

ECHO "==== Copying app ===="

ECHO "== Windows"
xcopy app .\build\KarlCryptoBot-windows-x64\resources\app /e /s /i


ECHO "==== Preparing Zips ===="

ECHO "== Windows"
cd .\build\
jar -cMf ..\releases\KarlCryptoBot-windows-x64.zip KarlCryptoBot-windows-x64
cd ..


ECHO "==== Cleaning ===="

ECHO "== Windows"
RMDIR .\build\KarlCryptoBot-windows-x64\resources\app /S /Q 