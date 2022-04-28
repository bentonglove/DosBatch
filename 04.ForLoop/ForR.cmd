:: https://peterju.gitbooks.io/cmddoc/content/loop.html
:: 遞迴搜尋指定的路徑下所有符合檔案的 for /R 迴圈
:: 將 c:\temp\ 目錄與所有子目錄下的 *.bak 刪除


for /R c:\temp\ %%G in (*.bak) do del "%%G"