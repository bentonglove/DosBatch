@echo off
setlocal enabledelayedexpansion
path=%path%;c:\androidtools\platform-tools;C:\androidtools;C:\ETGA_BACKUP\ADB\platform-tools
REM title Install-MultipleDevices

echo ***************************************
echo      	Install apk
echo ***************************************
for /r "\\10.0.4.230\files\Dummy_image\Test\performace test apk" %%a in (*.apk) do ( 
    echo Inatall %%~nxa
	adb -s %1 install -t "%%a"
)  
echo .
echo ***************************************
echo      Files push completed
echo ***************************************
PING localhost -n 5 >nul 2>&1

pause 