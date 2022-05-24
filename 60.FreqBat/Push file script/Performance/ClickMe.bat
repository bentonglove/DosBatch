@echo off
setlocal enabledelayedexpansion
path=%path%;c:\androidtools\platform-tools;C:\androidtools;C:\ETGA_BACKUP\ADB\platform-tools



for /F "tokens=1,6" %%i in ('adb devices -l ^| findstr /R /C:"^[0-9a-zA-Z][0-9a-zA-Z]*  *device"') DO (
    echo adb -s %%i wait-for-device
	start cmd /V:ON /C "PushPerformanceFiles.bat %%i"
)

cls
echo .
echo ***************************************
echo      Device(s) were loaded
echo ***************************************
ping localhost -n 5 > nul