@echo off
:: call 的對象不是外部程式，而是相同檔案中的標籤，也可以傳遞參數。
:: call :標籤 參數1 參數2 ...

:: for迴圈使用方式請參考本手冊相關章節
for %%i in (*.cmd *.exe) DO CALL :SubRoutin "%%i"
pause
goto :EOF

:SubRoutin
echo %1, %~n1, %~x1