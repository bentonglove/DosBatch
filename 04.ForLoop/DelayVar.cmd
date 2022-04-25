:: 若要正確取出此變數異動後的值 John ，必須 啟用變數延遲展開(SETLOCAL ENABLEDELAYEDEXPANSION)的功能，在開啟用變數延遲展開功能之後，取用變數的方式要由 %var% 更改為 !var!
@echo off
SETLOCAL ENABLEDELAYEDEXPANSION
set var=Peter
set var=John & echo !var!
timeout 6