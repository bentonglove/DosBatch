@echo off
:: IF 的三種形式

::第一種形式
if {%1}=={} goto final

@echo %1
goto end
:final

@echo The parameter is empty.
:end

::第二種形式
if exist ben.txt echo Hello Ben

ping 8.8.8.8
::第三種型式
if errorlevel 1 goto lbl-2
if errorlevel 0 goto lbl-1
:lbl-1
@echo Ping Successful
goto lbl-3

:lbl-2
@echo Ping Failure

:lbl-3

