@echo off
title Dolphin Game Store
cd /D "%~dp0"
del s-updater.bat
set wget="..\Installer\wget.exe"
FOR /F "tokens=3 delims= " %%G IN ('REG QUERY "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Shell Folders" /v "Personal"') DO (SET docsdir=%%G)

set version=1

:check
cls
echo ----------------------------------------------------------------------------------------------------
echo Dolphin Game Store
echo ----------------------------------------------------------------------------------------------------
echo.
echo Checking for Updates...
%wget% https://raw.githubusercontent.com/Siiriiks/AutoDolphin/master/sv.txt -q --no-check-certificate
set /p latest=<sv.txt
del sv.txt
if %latest% GTR %version% goto update
cls
echo ----------------------------------------------------------------------------------------------------
echo Dolphin Game Store
echo ----------------------------------------------------------------------------------------------------
echo.
echo No updates available.
sleep 1
goto menu

:update
cls
echo ----------------------------------------------------------------------------------------------------
echo Dolphin Game Store
echo ----------------------------------------------------------------------------------------------------
echo.
echo Update available!
echo Downloading Updater...
%wget% https://raw.githubusercontent.com/Siiriiks/AutoDolphin/master/s-updater.bat -q --no-check-certificate
echo Launching updater...
sleep 1
start s-updater.bat
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
echo 2) Codes (To play online)
echo 3) All
echo.
set /p menu2=Please enter an option: 
echo.
if %menu2%==1 (
	echo Downloading Mario Kart Wii...
	%wget% -q --show-progress --no-check-certificate "https://www.dropbox.com/s/ahah0utz1x1dlef/RMCP01%20%28Mario%20Kart%20Wii%29.wbfs?dl=1" -O "RMCP01 (Mario Kart Wii).wbfs"
	echo Download complete!
)
if %menu2%==2 (
	echo Downloading Mario Kart Wii Codes...
	%wget% -q --show-progress --no-check-certificate "https://raw.githubusercontent.com/Siiriiks/AutoDolphin/master/Codes/RMCP01.ini" -O "%docsdir%\Dolphin Emulator\GameSettings\RMCP01.ini"
	echo Download complete!
)
if %menu2%==3 (
	echo Downloading Mario Kart Wii...
	%wget% -q --show-progress --no-check-certificate "https://www.dropbox.com/s/ahah0utz1x1dlef/RMCP01%20%28Mario%20Kart%20Wii%29.wbfs?dl=1" -O "RMCP01 (Mario Kart Wii).wbfs"
	echo Downloading Mario Kart Wii Codes...
	%wget% -q --show-progress --no-check-certificate "https://raw.githubusercontent.com/Siiriiks/AutoDolphin/master/Codes/RMCP01.ini" -O "%docsdir%\Dolphin Emulator\GameSettings\RMCP01.ini"
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
	%wget% -q --show-progress --no-check-certificate "https://www.dropbox.com/s/ktm4zt6b2bqgmrn/RZTP01%20%28Wii%20Sports%20Resort%29.wbfs?dl=1" -O "RZTP01 (Wii Sports Resort).wbfs"
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

:RMGP01
cls
echo ----------------------------------------------------------------------------------------------------
echo Dolphin Game Store  -=-  RMGP01 (Super Mario Galaxy)
echo ----------------------------------------------------------------------------------------------------
echo.
echo Please select an option (Other to return to Menu)
echo.
echo 1) Download
echo.
set /p menu2=Please enter an option: 
echo.
if %menu2%==1 (
	echo Downloading Super Mario Galaxy...
	%wget% -q --show-progress --no-check-certificate "https://www.dropbox.com/s/2gyr92niy9z0toz/RMGP01%20%28Super%20Mario%20Galaxy%29.wbfs?dl=1" -O "RMGP01 (Super Mario Galaxy).wbfs"
	echo Download complete!
)
echo Returning to Menu...
sleep 2
goto menu

:SB4P01
cls
echo ----------------------------------------------------------------------------------------------------
echo Dolphin Game Store  -=-  SB4P01 (Super Mario Galaxy 2)
echo ----------------------------------------------------------------------------------------------------
echo.
echo Please select an option (Other to return to Menu)
echo.
echo 1) Download
echo.
set /p menu2=Please enter an option: 
echo.
if %menu2%==1 (
	echo Downloading Super Mario Galaxy 2...
	%wget% -q --show-progress --no-check-certificate "https://www.dropbox.com/s/70cvopdbadcw2x0/SB4P01%20%28Super%20Mario%20Galaxy%202%29.wbfs?dl=1" -O "SB4P01 (Super Mario Galaxy 2).wbfs"
	echo Download complete!
)
echo Returning to Menu...
sleep 2
goto menu