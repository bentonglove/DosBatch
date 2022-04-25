:: 顯示 目錄中所有符合 .cmd .avi *.mpg的檔案名稱
@echo off
for %%i in (*.cmd *.avi *.mpg) DO @echo %%i


:: 找出符合條件之檔案的 for 迴圈
for %%i in (%userprofile%\*) DO @echo %%i


:: 找出符合條件之目錄的 for /D 迴圈
for /D %%i in (%userprofile%\*) DO @echo %%i