:: 字串的擷取
:: 從字串的第n個位置開始擷取m個字元
echo %date%
set today=%date:~0,2%/%date:~3,2%/%date:~6,4%
echo %today%

:: 字串的取代
@echo off
set var=(140.128.71.1)
set result=%var:(=[%
set result=%result:)=]%
echo %result%
Pause


