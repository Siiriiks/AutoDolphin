@echo off
title Dolphin Installer - Setup
cd /D "%~dp0"
set sleep="%~dp0sleep.exe"
cls

echo Starting first time setup...
echo.
echo Finding Documents folder location...
FOR /F "tokens=3 delims= " %%G IN ('REG QUERY "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Shell Folders" /v "Personal"') DO (SET docsdir=%%G)
echo Found Documents folder! (%docsdir%)
echo Creating Dolphin folder
md "%docsdir%\Dolphin Emulator"
echo Downloading nececarry files...
wget.exe  -q --show-progress --no-check-certificate "https://github.com/Siiriiks/AutoDolphin/raw/master/setup.zip" -O "%docsdir%\Dolphin Emulator\setup.zip"
echo Downloaded!
echo Extracting nececarry files...
7za.exe x -y -o"%docsdir%\Dolphin Emulator" "%docsdir%\Dolphin Emulator\setup.zip" > nul
echo Finished Extracting!
echo Removing archive...
del "%docsdir%\Dolphin Emulator\setup.zip"
cd ..
echo Setting Game path...
Installer\fart.exe -q "%docsdir%\Dolphin Emulator\Config\Dolphin.ini" GAMEPATH "%CD%\Games"
echo Finding Desktop folder location...
for /f "usebackq tokens=1,2,*" %%B IN (`reg query "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\User Shell Folders" /v Desktop`) do set desktopdir=%%D
echo Found Desktop folder! (%desktopdir%)
echo Creating Shortcut...
Installer\shortcut /a:c /f:"%desktopdir%\Dolphin.lnk" /t:"%cd%\Dolphin.exe"
echo Finished!
%sleep% 3
exit