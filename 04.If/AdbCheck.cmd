@echo off

:loop

call adb get-state | findstr "device"
IF %ERRORLEVEL% equ 1 echo deattached
IF %ERRORLEVEL% equ 0 echo connected

timeout -t 1 > nul

goto loop