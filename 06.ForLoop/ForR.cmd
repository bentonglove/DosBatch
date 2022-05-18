:: https://peterju.gitbooks.io/cmddoc/content/loop.html
:: 遞迴搜尋指定的路徑下所有符合檔案的 for /R 迴圈
:: 將 c:\temp\ 目錄與所有子目錄下的 *.bak 刪除

@echo off
for /R D:\99.tmp\ %%G in (*.pdf) do echo %%G