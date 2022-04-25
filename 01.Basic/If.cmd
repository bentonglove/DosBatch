@echo off

ping 9.168.1.2 > nul
if %errorlevel%==1 echo %date%-%time% ping command fail

ping 9.168.1.2 > nul
if errorlevel 1 goto ONE
if errorlevel 0 goto ZERO
goto END

:ZERO
echo %date%-%time% ping command successful
goto END

:ONE
echo %date%-%time% ping command fail

:END