@echo off
title Dolphin Installer
cd /D "%~dp0"
set wget="%~dp0wget.exe"
set sleep="%~dp0sleep.exe"
del /s updater.bat >nul 2>&1

set version=4

:check
echo Checking for Updates...
del /s v.txt >nul 2>&1
%wget% https://raw.githubusercontent.com/Siiriiks/AutoDolphin/master/v.txt -q --no-check-certificate
set /p latest=<v.txt
del /s v.txt >nul 2>&1
if %latest% GTR %version% goto update
cls
echo No updates available.
%sleep% 1
goto main

:update
cls
echo Update available!
echo Downloading Updater...
%wget% https://raw.githubusercontent.com/Siiriiks/AutoDolphin/master/updater.bat -q --no-check-certificate
echo Launching updater...
%sleep% 1
start updater.bat
exit

:main
cls
cd ..\..
echo Downloading Dolphin...
del /s dolphin-master-5.0-12247-x64.7z >nul 2>&1
%wget% https://dl.dolphin-emu.org/builds/3a/8d/dolphin-master-5.0-13178-x64.7z -q -O "dolphin-master.7z" --show-progress --no-check-certificate 
echo.
echo Extracting Dolphin...
Dolphin-x64\Installer\7za.exe x dolphin-master.7z -y
del /s dolphin-master.7z >nul 2>&1
cls
echo Downloading Basic WiiWare...
cd Dolphin-x64\Games
%wget% -q --show-progress --no-check-certificate https://www.dropbox.com/s/q78yijg66579gbq/_Mii%20Channel.wad?dl=1 -O "_Mii Channel.wad"
%wget% -q --show-progress --no-check-certificate https://www.dropbox.com/s/a2oj8o2m4io6kqd/_SYS%20Menu.wad?dl=1 -O "_SYS Menu.wad"
cd ..
echo.
echo Would you like to do the 1st time setup? (Overrides existing configs if they exist)
echo If this is your first time using this installer then you should select YES.
echo.
echo 1) Yes
echo 2) No
echo.
set /p setup=Please enter an option: 
echo.
if %setup%==1 goto setup
if %setup%==2 goto boot
echo That wasn't one of the options but i'll take it as a No then :)

:boot
echo Installation Finished!
echo Booting Dolphin and Game Store...
%sleep% 2
start Games\store.bat
start Dolphin.exe
%sleep% 3
exit

:setup
echo Loading first time setup...
Installer\Setup.bat
goto boot