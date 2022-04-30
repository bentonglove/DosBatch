:: 可以設定開始數值、增/減數值、停止數值的 for /L 迴圈
@echo off

:: 顯示 0-100 的數字 (從0開始、遞增1、終止值100)
for /L %%i in (0,1,100) do echo %%i

:: 計算從1累加至100的和
set sum=0
for /L %%i in (100,-1,0) do set /a sum+=%%i
echo %sum%

:: 啟用延遲環境變數擴充功能範例
SETLOCAL ENABLEDELAYEDEXPANSION
for /L %%i in (1,1,5) DO (
    set var=%%i
    echo !var!
)
timeout 6

