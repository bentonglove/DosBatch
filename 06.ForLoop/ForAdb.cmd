@echo off
::call adb kill-server
::setlocal EnableDelayedExpansion
for /F "tokens=1,6 delims=: " %%a in ('adb devices -l ^| findstr /R /C:"^[0-9a-zA-Z][0-9a-zA-Z]*  *device"') DO (
set serialno=%%a
)

echo %serialno%
call adb -s %serialno% get-state

::for /F "eol=* skip=1 tokens=2 delims= " %%a in ('cmd /c adb devices') do echo %%a