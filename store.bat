@echo off
title Dolphin Game Store
del updater.bat
set wget="..\Installer\wget.exe"
set mega="..\Installer\megatools\megatools.exe"

:check
cls
echo ----------------------------------------------------------------------------------------------------
echo Dolphin Game Store
echo ----------------------------------------------------------------------------------------------------
echo.
echo Checking for Updates...
%wget% https://raw.githubusercontent.com/Siiriiks/AutoDolphin/master/v.txt -q --no-check-certificate
set /p latest=<v.txt
del v.txt
if %latest% GTR %version% goto update
cls
echo ----------------------------------------------------------------------------------------------------
echo Dolphin Game Store
echo ----------------------------------------------------------------------------------------------------
echo.
echo No updates available.
sleep 2
goto menu

:update
cls
echo ----------------------------------------------------------------------------------------------------
echo Dolphin Game Store
echo ----------------------------------------------------------------------------------------------------
echo.
echo Update available!
echo Downloading Updater...
%wget% https://raw.githubusercontent.com/Siiriiks/AutoDolphin/master/updater.bat -q --no-check-certificate
echo.
echo Launching updater...
sleep 1
start updater.bat
exit

:menu
cls
echo ----------------------------------------------------------------------------------------------------
echo Dolphin Game Store
echo ----------------------------------------------------------------------------------------------------
echo.
echo Please enter the number corresponding the game you wish to download.
echo.
echo 1) RHAP01 (Wii Play)
echo 2) RMCP01 (Mario Kart Wii)
echo 3) RSPP01 (Wii Sports)
echo 4) RZTP01 (Wii Sports Resort)
echo 5) SMNP01 (New Super Mario Bros. Wii)
echo 6) SMNP03 (Newer Super Mario Bros. Wii)
echo 7) RMGP01 (Super Mario Galaxy)
echo 8) SB4P01 (Super Mario Galaxy 2)
echo.
set /p menu=Please enter an option: 
if %menu%==1 goto RHAP01
if %menu%==2 goto RMCP01
if %menu%==3 goto RSPP01
if %menu%==4 goto RZTP01
if %menu%==5 goto SMNP01
if %menu%==6 goto RHAP01
if %menu%==7 goto RMGP01
if %menu%==8 goto SB4P01
echo.
echo Invalid option!
echo Returning to Menu...
sleep 3
goto menu

:RHAP01
cls
echo ----------------------------------------------------------------------------------------------------
echo Dolphin Game Store  -=-  RHAP01 (Wii Play)
echo ----------------------------------------------------------------------------------------------------
echo.
echo Please select an option (Other to return to Menu)
echo.
echo 1) Download
echo.
set /p menu2=Please enter an option: 
echo.
if %menu2%==1 (
	echo Downloading Wii Play...
	%wget% -q --show-progress --no-check-certificate "https://www.dropbox.com/s/kk98ybgx6lgmxy6/RHAP01%20%28Wii%20Play%29.wbfs?dl=1" -O "RHAP01 (Wii Play).wbfs"
	echo Download complete!
)
echo Returning to Menu...
sleep 2
goto menu

:RMCP01
cls
echo ----------------------------------------------------------------------------------------------------
echo Dolphin Game Store  -=-  RMCP01 (Mario Kart Wii)
echo ----------------------------------------------------------------------------------------------------
echo.
echo Please select an option (Other to return to Menu)
echo.
echo 1) Download
echo.
set /p menu2=Please enter an option: 
echo.
if %menu2%==1 (
	echo Downloading Mario Kart Wii...
	%wget% -q --show-progress --no-check-certificate "https://www.dropbox.com/s/ahah0utz1x1dlef/RMCP01%20%28Mario%20Kart%20Wii%29.wbfs?dl=1" -O "RMCP01 (Mario Kart Wii).wbfs"
	echo Download complete!
)
echo Returning to Menu...
sleep 2
goto menu

:RSPP01
cls
echo ----------------------------------------------------------------------------------------------------
echo Dolphin Game Store  -=-  RSPP01 (Wii Sports)
echo ----------------------------------------------------------------------------------------------------
echo.
echo Please select an option (Other to return to Menu)
echo.
echo 1) Download
echo.
set /p menu2=Please enter an option: 
echo.
if %menu2%==1 (
	echo Downloading Wii Sports...
	%wget% -q --show-progress --no-check-certificate "https://www.dropbox.com/s/aoeqvld3ldwlmh2/RSPP01%20%28Wii%20Sports%29.wbfs?dl=1" -O "RSPP01 (Wii Sports).wbfs"
	echo Download complete!
)
echo Returning to Menu...
sleep 2
goto menu

:RZTP01
cls
echo ----------------------------------------------------------------------------------------------------
echo Dolphin Game Store  -=-  RZTP01 (Wii Sports Resort)
echo ----------------------------------------------------------------------------------------------------
echo.
echo Please select an option (Other to return to Menu)
echo.
echo 1) Download
echo.
set /p menu2=Please enter an option: 
echo.
if %menu2%==1 (
	echo Downloading Wii Sports Resort...
	%wget% -q --show-progress --no-check-certificate "" -O "RZTP01 (Wii Sports Resort).wbfs"
	echo Download complete!
)
echo Returning to Menu...
sleep 2
goto menu

:SMNP01
cls
echo ----------------------------------------------------------------------------------------------------
echo Dolphin Game Store  -=-  SMNP01 (New Super Mario Bros. Wii)
echo ----------------------------------------------------------------------------------------------------
echo.
echo Please select an option (Other to return to Menu)
echo.
echo 1) Download
echo.
set /p menu2=Please enter an option: 
echo.
if %menu2%==1 (
	echo Downloading New Super Mario Bros. Wii...
	%wget% -q --show-progress --no-check-certificate "https://www.dropbox.com/s/6of1aper7eb56jx/SMNP01%20%28New%20Super%20Mario%20Bros.%20Wii%29.wbfs?dl=1" -O "SMNP01 (New Super Mario Bros. Wii).wbfs"
	echo Download complete!
)
echo Returning to Menu...
sleep 2
goto menu

:SMNP03
cls
echo ----------------------------------------------------------------------------------------------------
echo Dolphin Game Store  -=-  SMNP03 (Newer Super Mario Bros. Wii)
echo ----------------------------------------------------------------------------------------------------
echo.
echo Please select an option (Other to return to Menu)
echo.
echo 1) Download
echo.
set /p menu2=Please enter an option: 
echo.
if %menu2%==1 (
	echo Downloading Newer Super Mario Bros. Wii...
	%wget% -q --show-progress --no-check-certificate "https://www.dropbox.com/s/rtbo1751dkeo3nl/SMNP03%20%28Newer%20Super%20Mario%20Bros.%20Wii%29.wbfs?dl=1" -O "SMNP03 (Newer Super Mario Bros. Wii).wbfs"
	echo Download complete!
)
echo Returning to Menu...
sleep 2
goto menu