@echo off
::call adb kill-server
::setlocal EnableDelayedExpansion
for /F "skip=1 tokens=6, 10 delims=: " %%a in ('adb devices -l ^| findstr %1') do set id=%%b
echo %1
echo %id%
call adb -t %id% get-state

::for /F "eol=* skip=1 tokens=2 delims= " %%a in ('cmd /c adb devices') do echo %%a