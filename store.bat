@echo off
title Dolphin Game Store
del updater.bat
cls

:check
echo ----------------------------------------------------------------------------------------------------
echo Dolphin Game Store
echo ----------------------------------------------------------------------------------------------------
echo.
echo Checking for Updates...
wget https://raw.githubusercontent.com/Siiriiks/AutoDolphin/master/v.txt
set /p latest=<v.txt
del v.txt
if %latest% GTR %version% goto update
cls
echo ----------------------------------------------------------------------------------------------------
echo Dolphin Game Store
echo ----------------------------------------------------------------------------------------------------
echo.
echo No updates available.
timeout 2
goto menu

:update
echo ----------------------------------------------------------------------------------------------------
echo Dolphin Game Store
echo ----------------------------------------------------------------------------------------------------
echo.
echo Update available!
echo Downloading Updater...
wget https://raw.githubusercontent.com/Siiriiks/AutoDolphin/master/updater.bat
echo.
echo Launching updater...
timeout 1
start updater.bat
exit

:menu
echo ----------------------------------------------------------------------------------------------------
echo Dolphin Game Store
echo ----------------------------------------------------------------------------------------------------
echo.
echo Please enter the number corresponding the game you wish to download.
echo.
echo 1) Wii Play
echo 2) Mario Kart Wii
echo 3) Wii Sports
echo 4) Wii Sports Resort
echo 5) New Super Mario Bros. Wii
echo 6) Newer Super Mario Bros. Wii (Mod for NSMBW)
echo 7) Super Mario Galaxy
echo 8) Super Mario Galaxy 2
echo.
