@echo off
title Dolphin Game Store
cd /D "%~dp0"
del s-updater.bat
cls
set wget="%~dp0..\Installer\wget.exe"
set sleep="%~dp0..\Installer\sleep.exe"
FOR /F "tokens=3 delims= " %%G IN ('REG QUERY "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Shell Folders" /v "Personal"') DO (SET docsdir=%%G)

set version=3

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
%sleep% 1
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
%sleep% 1
start s-updater.bat
exit

:menu
cls
echo ----------------------------------------------------------------------------------------------------
echo Dolphin Game Store
echo ----------------------------------------------------------------------------------------------------
echo.
echo Please enter the number corresponding to the game you wish to download.
echo.
echo 1) Mario Kart Wii [RMCP01]
echo 2) Mario Party 8 [RM8P01]
echo 3) Mario Party 9 [SSQP01]
echo 4) New Super Mario Bros. Wii [SMNP01]
echo 5) Newer Super Mario Bros. Wii [SMNP03]
echo 6) Super Mario Galaxy [RMGP01]
echo 7) Super Mario Galaxy 2 [SB4P01]
echo 8) Wii Party [SUPP01]
echo 9) Wii Play [RHAP01]
echo 10) Wii Sports [RSPP01]
echo 11) Wii Sports Resort [RZTP01]
echo.
set /p menu=Please enter an option: 
if %menu%==1 goto RMCP01
if %menu%==2 goto RM8P01
if %menu%==3 goto SSQP01
if %menu%==4 goto SMNP01
if %menu%==5 goto SMNP03
if %menu%==6 goto RMGP01
if %menu%==7 goto SB4P01
if %menu%==8 goto SUPP01
if %menu%==9 goto RHAP01
if %menu%==10 goto RSPP01
if %menu%==11 goto RZTP01
echo.
echo Invalid option!
echo Returning to Menu...
%sleep 3%
goto menu


:RMCP01
cls
echo ----------------------------------------------------------------------------------------------------
echo Dolphin Game Store  -=-  Mario Kart Wii [RMCP01]
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
	%wget% -q --show-progress --no-check-certificate "https://www.dropbox.com/s/j856glx0lcxhzr7/Mario%20Kart%20Wii%20%5BRMCP01%5D.wbfs?dl=1" -O "Mario Kart Wii [RMCP01].wbfs"
	echo Download complete!
)
if %menu2%==2 (
	echo Downloading Mario Kart Wii Codes...
	%wget% -q --show-progress --no-check-certificate "https://raw.githubusercontent.com/Siiriiks/AutoDolphin/master/Codes/RMCP01.ini" -O "%docsdir%\Dolphin Emulator\GameSettings\RMCP01.ini"
	echo Download complete!
)
if %menu2%==3 (
	echo Downloading Mario Kart Wii...
	%wget% -q --show-progress --no-check-certificate "https://www.dropbox.com/s/j856glx0lcxhzr7/Mario%20Kart%20Wii%20%5BRMCP01%5D.wbfs?dl=1" -O "Mario Kart Wii [RMCP01].wbfs"
	echo Downloading Mario Kart Wii Codes...
	%wget% -q --show-progress --no-check-certificate "https://raw.githubusercontent.com/Siiriiks/AutoDolphin/master/Codes/RMCP01.ini" -O "%docsdir%\Dolphin Emulator\GameSettings\RMCP01.ini"
	echo Download complete!
)
echo Returning to Menu...
%sleep% 2
goto menu


:RM8P01
cls
echo ----------------------------------------------------------------------------------------------------
echo Dolphin Game Store  -=-  Mario Party 8 [RM8P01]
echo ----------------------------------------------------------------------------------------------------
echo.
echo Please select an option (Other to return to Menu)
echo.
echo 1) Download
echo.
set /p menu2=Please enter an option: 
echo.
if %menu2%==1 (
	echo Downloading Mario Party 8...
	%wget% -q --show-progress --no-check-certificate "https://www.dropbox.com/s/smni3fe2r2rzj5u/Mario%20Party%208%20%5BRM8P01%5D.wbfs?dl=1" -O "Mario Party 8 [RM8P01].wbfs"
	echo Download complete!
)
echo Returning to Menu...
%sleep% 2
goto menu


:SSQP01
cls
echo ----------------------------------------------------------------------------------------------------
echo Dolphin Game Store  -=-  Mario Party 9 [SSQP01]
echo ----------------------------------------------------------------------------------------------------
echo.
echo Please select an option (Other to return to Menu)
echo.
echo 1) Download
echo.
set /p menu2=Please enter an option: 
echo.
if %menu2%==1 (
	echo Downloading Mario Party 9...
	%wget% -q --show-progress --no-check-certificate "https://www.dropbox.com/s/ucnnkzmpy33sp9v/Mario%20Party%209%20%5BSSQP01%5D.wbfs?dl=1" -O "Mario Party 9 [SSQP01].wbfs"
	echo Download complete!
)
echo Returning to Menu...
%sleep% 2
goto menu


:SMNP01
cls
echo ----------------------------------------------------------------------------------------------------
echo Dolphin Game Store  -=-  New Super Mario Bros. Wii [SMNP01]
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
	%wget% -q --show-progress --no-check-certificate "https://www.dropbox.com/s/2erz1ztda58ezbz/New%20Super%20Mario%20Bros.%20Wii%20%5BSMNP01%5D.wbfs?dl=1" -O "New Super Mario Bros. Wii [SMNP01].wbfs"
	echo Download complete!
)
echo Returning to Menu...
%sleep% 2
goto menu


:SMNP03
cls
echo ----------------------------------------------------------------------------------------------------
echo Dolphin Game Store  -=-  Newer Super Mario Bros. Wii [SMNP03]
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
	%wget% -q --show-progress --no-check-certificate "https://www.dropbox.com/s/unpyostyfnmsjst/Newer%20Super%20Mario%20Bros.%20Wii%20%5BSMNP03%5D.wbfs?dl=1" -O "Newer Super Mario Bros. Wii [SMNP03].wbfs"
	echo Download complete!
)
echo Returning to Menu...
%sleep% 2
goto menu


:RMGP01
cls
echo ----------------------------------------------------------------------------------------------------
echo Dolphin Game Store  -=-  Super Mario Galaxy [RMGP01]
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
	%wget% -q --show-progress --no-check-certificate "https://www.dropbox.com/s/epxz5zixutypc23/Super%20Mario%20Galaxy%20%5BRMGP01%5D.wbfs?dl=1" -O "Super Mario Galaxy [RMGP01].wbfs"
	echo Download complete!
)
echo Returning to Menu...
%sleep% 2
goto menu


:SB4P01
cls
echo ----------------------------------------------------------------------------------------------------
echo Dolphin Game Store  -=-  Super Mario Galaxy 2 [SB4P01]
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
	%wget% -q --show-progress --no-check-certificate "https://www.dropbox.com/s/ow7cpzp0omlgzan/Super%20Mario%20Galaxy%202%20%5BSB4P01%5D.wbfs?dl=1" -O "Super Mario Galaxy 2 [SB4P01].wbfs"
	echo Download complete!
)
echo Returning to Menu...
%sleep% 2
goto menu


:SUPP01
cls
echo ----------------------------------------------------------------------------------------------------
echo Dolphin Game Store  -=-  Wii Party [SUPP01]
echo ----------------------------------------------------------------------------------------------------
echo.
echo Please select an option (Other to return to Menu)
echo.
echo 1) Download
echo.
set /p menu2=Please enter an option: 
echo.
if %menu2%==1 (
	echo Downloading Wii Party...
	%wget% -q --show-progress --no-check-certificate "https://www.dropbox.com/s/etw8lyjjolgbe3y/Wii%20Party%20%5BSUPP01%5D.wbfs?dl=1" -O "Wii Party [SUPP01].wbfs"
	echo Download complete!
)
echo Returning to Menu...
%sleep% 2
goto menu


:RHAP01
cls
echo ----------------------------------------------------------------------------------------------------
echo Dolphin Game Store  -=-  Wii Play [RHAP01]
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
	%wget% -q --show-progress --no-check-certificate "https://www.dropbox.com/s/u9ebfzmqg8noa7f/Wii%20Play%20%5BRHAP01%5D.wbfs?dl=1" -O "Wii Play [RHAP01].wbfs"
	echo Download complete!
)
echo Returning to Menu...
%sleep% 2
goto menu


:RSPP01
cls
echo ----------------------------------------------------------------------------------------------------
echo Dolphin Game Store  -=-  Wii Sports [RSPP01]
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
	%wget% -q --show-progress --no-check-certificate "https://www.dropbox.com/s/7n9eb01n6d481ks/Wii%20Sports%20%5BRSPP01%5D.wbfs?dl=1" -O "Wii Sports [RSPP01].wbfs"
	echo Download complete!
)
echo Returning to Menu...
%sleep% 2
goto menu


:RZTP01
cls
echo ----------------------------------------------------------------------------------------------------
echo Dolphin Game Store  -=-  Wii Sports Resort [RZTP01]
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
	%wget% -q --show-progress --no-check-certificate "https://www.dropbox.com/s/2123i68rb2ggwx0/Wii%20Sports%20Resort%20%5BRZTP01%5D.wbfs?dl=1" -O "Wii Sports Resort [RZTP01].wbfs"
	echo Download complete!
)
echo Returning to Menu...
%sleep% 2
goto menu

