@echo off

for /F "tokens=1,6 delims=i"  %%a in ('adb devices ^| findstr /R /C:"device$"') DO set serialno=%%a

::for /F "tokens=1,6 delims= " %%a in ("151725230D0045  device") DO set serialno=%%a


echo %serialno%
call adb -s %serialno% get-state