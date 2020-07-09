@echo off
title Dolphin Installer
cd /D "%~dp0"
set wget="%~dp0\wget.exe"
del updater.bat

set version=1

:check
echo Checking for Updates...
%wget% https://raw.githubusercontent.com/Siiriiks/AutoDolphin/master/v.txt -q --no-check-certificate
set /p latest=<v.txt
del v.txt
if %latest% GTR %version% goto update
cls
echo No updates available.
sleep 1
goto main

:update
cls
echo Update available!
echo Downloading Updater...
%wget% https://raw.githubusercontent.com/Siiriiks/AutoDolphin/master/updater.bat -q --no-check-certificate
echo Launching updater...
sleep 1
start updater.bat
exit

:main
cls
cd ..\..
echo Downloading Dolphin...
%wget% https://dl.dolphin-emu.org/builds/99/df/dolphin-master-5.0-12247-x64.7z -q --show-progress --no-check-certificate
echo.
echo Extracting Dolphin...
Dolphin-x64\Installer\7za x dolphin-master-5.0-12247-x64.7z
del dolphin-master-5.0-12247-x64.7z
cls
echo Downloading Basic WiiWare...
cd Dolphin-x64\Games
%wget% https://www.dropbox.com/s/q78yijg66579gbq/_Mii%20Channel.wad?dl=1 -q --show-progress --no-check-certificate
%wget% https://www.dropbox.com/s/a2oj8o2m4io6kqd/_SYS%20Menu.wad?dl=1 -q --show-progress --no-check-certificate
cd ..
echo.
echo Creating Shortcut...
Installer\shortcut /a:c /f:"%USERPROFILE%\Desktop\Dolphin.lnk" /t:"%cd%\Dolphin.exe"
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
sleep 2
start Games\store.bat
start Dolphin.exe
sleep 3
exit

:setup
echo Loading first time setup...
Installer\Setup.bat
goto boot