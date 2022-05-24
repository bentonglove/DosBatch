@echo off
set/p x=:Please enter a folder name:
adb pull sdcard/verifierReports D:\Admin\Downloads\%x%
adb pull sdcard/ITS D:\Admin\Downloads\%x%

pause

rem adb pull sdcard/verifierReports D:\Admin\Downloads\TC26MG_TR
rem adb pull sdcard/ITS D:\Admin\Downloads\TC26MG_TR