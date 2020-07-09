@echo off
title Dolphin Game Store - Updater
cd /D "%~dp0"
cls

echo ----------------------------------------------------------------------------------------------------
echo Dolphin Game Store - Updater
echo ----------------------------------------------------------------------------------------------------
echo.
echo Removing previous files...
sleep 2
del store.bat
echo Downloading Update...
wget https://raw.githubusercontent.com/Siiriiks/AutoDolphin/master/store.bat -q --show-progress --no-check-certificate
echo Finished Downloading!
echo Launching Dolphin Game Store...
timeout 2
start store.bat
exit
