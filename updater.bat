@echo off
title Dolphin Installer - Updater
cd /D "%~dp0"
cls

echo Removing previous files...
sleep 2
del store.bat
echo Downloading Update...
wget https://raw.githubusercontent.com/Siiriiks/AutoDolphin/master/Installer.bat -q --show-progress --no-check-certificate
wget https://raw.githubusercontent.com/Siiriiks/AutoDolphin/master/Setup.bat -q --show-progress --no-check-certificate
echo Finished Downloading!
echo Launching Dolphin Installer...
timeout 2
start Installer.bat
exit