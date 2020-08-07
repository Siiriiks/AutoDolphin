REM --add the following to the top of your bat file--


@echo off

:: BatchGotAdmin
:-------------------------------------
REM  --> Check for permissions
>nul 2>&1 "%SYSTEMROOT%\system32\cacls.exe" "%SYSTEMROOT%\system32\config\system"

REM --> If error flag set, we do not have admin.
if '%errorlevel%' NEQ '0' (
    echo Requesting administrative privileges...
    goto UACPrompt
) else ( goto gotAdmin )

:UACPrompt
    echo Set UAC = CreateObject^("Shell.Application"^) > "%temp%\getadmin.vbs"
    set params = %*:"=""
    echo UAC.ShellExecute "cmd.exe", "/c %~s0 %params%", "", "runas", 1 >> "%temp%\getadmin.vbs"

    "%temp%\getadmin.vbs"
    del "%temp%\getadmin.vbs"
    exit /B

:gotAdmin
    pushd "%CD%"
    CD /D "%~dp0"
:--------------------------------------
title Dolphin Installer - Setup
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
del /s "%docsdir%\Dolphin Emulator\setup.zip" >nul 2>&1
wget.exe  -q --show-progress --no-check-certificate "https://github.com/Siiriiks/AutoDolphin/raw/master/setup.zip" -O "%docsdir%\Dolphin Emulator\setup.zip"
echo Downloaded!
echo Extracting nececarry files...
7za.exe x -y -o"%docsdir%\Dolphin Emulator" "%docsdir%\Dolphin Emulator\setup.zip" > nul
echo Finished Extracting!
echo Removing archive...
del /s "%docsdir%\Dolphin Emulator\setup.zip" >nul 2>&1
cd ..
echo Setting Game path...
Installer\fart.exe -q "%docsdir%\Dolphin Emulator\Config\Dolphin.ini" GAMEPATH "%CD%\Games"
echo Finding Desktop folder location...
for /f "usebackq tokens=1,2,*" %%B IN (`reg query "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\User Shell Folders" /v Desktop`) do set desktopdir=%%D
echo Found Desktop folder! (%desktopdir%)
echo Creating Shortcuts...
Installer\shortcut /a:c /f:"%desktopdir%\Dolphin.lnk" /t:"%cd%\Dolphin.exe"
Installer\shortcut /a:c /f:"%ProgramData%\Microsoft\Windows\Start Menu\Programs\Dolphin.lnk" /t:"%cd%\Dolphin.exe"
echo Finished!
%sleep% 3
exit