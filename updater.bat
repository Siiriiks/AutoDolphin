@echo off
title Dolphin Game Store - Updater
cls

echo ----------------------------------------------------------------------------------------------------
echo Dolphin Game Store - Updater
echo ----------------------------------------------------------------------------------------------------
echo.
echo Removing previous files...
del store.bat
echo Downloading Update...
wget https://raw.githubusercontent.com/Siiriiks/AutoDolphin/master/store.bat
echo Finished Downloading!
echo Launching Dolphin Game Store...
timeout 2
start store.bat
exit