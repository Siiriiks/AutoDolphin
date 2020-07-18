@echo off
title Dolphin Installer - Updater
cd /D "%~dp0"
set wget="%~dp0wget.exe"
set sleep="%~dp0sleep.exe"
cls

echo Removing previous files...
%sleep% 1
del Installer.bat
del Setup.bat
del tools.zip
echo Downloading Update...
%wget% https://raw.githubusercontent.com/Siiriiks/AutoDolphin/master/Installer.bat -q --show-progress --no-check-certificate
%wget% https://raw.githubusercontent.com/Siiriiks/AutoDolphin/master/Setup.bat -q --show-progress --no-check-certificate
%wget% https://raw.githubusercontent.com/Siiriiks/AutoDolphin/master/tools.zip -q --show-progress --no-check-certificate
7za.exe x tools.zip -y
del tools.zip
echo Finished Downloading!
echo Launching Dolphin Installer...
%sleep% 2
start Installer.bat
exit
