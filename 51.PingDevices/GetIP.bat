1-1. 取出ip字串
:: 讀取命令：
:: 依照分隔符號將內容賦值給指定變數
for /F "tokens=2 delims=: " %%a in ('adb -t 1 shell getprop ^| grep ipaddress') do echo %%a
for /F "tokens=1 delims=[]" %%b in("%%a") doe echo %%b