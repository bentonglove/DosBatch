:: call 外部程式
:: 從批次檔中呼叫外部程式並可傳遞參數，在同一個 shell 環境下，可共同存取相同的環境變數。

rem ParentCall.cmd
@echo off
set myname=Ben
call child.cmd hello
pause