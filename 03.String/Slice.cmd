:: 截取字符串 
:: 截取字符串中的特定位置的一個或多個字符。

@echo off
set info=abcdefghijklmnopqrstuvwxyz0123456789
echo Original:
echo %info%
echo first 5 character
echo %info:~0,5%
echo last 5 character
echo %info:~-5%
echo first to last 6 chatacter
echo %info:~0,-5%
echo 4th and 5 characters
echo %info:~3,5%
echo last 14th and 5 character
echo %info:~-14,5%

echo Year%date:~6,4%
echo Month%date:~0,2%
