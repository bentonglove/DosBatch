rem myping.cmd 8.8.8.8
@echo off
ping %1 > nul
if %errorlevel%==1 goto error

echo ping %1 OK
exit /b 0

:error
echo ping fail
exit /b 1
