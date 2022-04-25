@echo off
:: 在Windows環境中的慣例是，若指令成功時傳回0，若錯誤時，依據錯誤的狀況會傳回 1 或以上的值，代表不同的錯誤狀況

ping 8.8.8.8 > nul
echo %errorlevel%

call myping.cmd 666.1.0.8
echo %errorlevel%