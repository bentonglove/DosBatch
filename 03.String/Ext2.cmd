:: 變量aa在之前是不可以擴充的，通過call命令並將aa作為參數傳遞給子函數:deal，將aa變量轉換成了變量%1，即符合%x格式，從而可以進行字符串擴充。


@echo off
set aa="D:\60.workspace\14.Python\06.Batch file Script\03.String\Ext.cmd"
call :deal aaa %aa% "c c" dddd eeeee
goto :eof

:deal
echo %%0=%0
echo %%1=%1
echo %%2=%2
echo %%3=%3
echo %%4=%4
echo %%5=%5
echo %%6=%6

echo %~2
call %2
