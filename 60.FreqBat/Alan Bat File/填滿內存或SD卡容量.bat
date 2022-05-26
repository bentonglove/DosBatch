CLS
:Star
ECHO 請選擇要做的事情...
ECHO 1 - 內存填滿
ECHO 2 - SD卡填滿
ECHO 3 - 回到上一頁

SET /P fil=請輸入號碼然後按下Enter:

if %fil%==1 GOTO File1
if %fil%==2 GOTO File2
if %fil%==3 GOTO Back
cls
echo 輸入錯誤，請重新輸入
PAUSE
goto Star

:File1
adb wait-for-device
SET/p "bs=[填入多少byte(1024X1024X1024=1G)然後按下Enter...]:"
if "%bs%"=="" GOTO OPTION3
SET/p "num=[需要填幾次然後按下Enter...]:"
if "%num%"=="" GOTO OPTION3
SET/p "txt=[輸入檔案名稱按下Enter...(注意如果輸入相同名稱的會被覆蓋)]:"
if "%txt%"=="" GOTO OPTION3
adb shell dd if=/dev/zero if=/sdcard/%txt%.txt bs=%bs% count=%num%
ECHO 內存填滿完成...
PAUSE
GOTO Back
@ECHO on

:File2
adb wait-for-device
SET/p "bs=[填入多少byte(1024X1024X1024=1G)然後按下Enter...]:"
if "%bs%"=="" GOTO OPTION3
SET/p "num=[需要填幾次然後按下Enter...]:"
if "%num%"=="" GOTO OPTION3
SET/p "txt=[輸入檔案名稱按下Enter...(注意如果輸入相同名稱的會被覆蓋)]:"
if "%txt%"=="" GOTO OPTION3
adb shell dd if=/dev/zero of=/sdcard1/%txt%.txt bs=%bs% count=%num%
ECHO SD卡填滿完成...
PAUSE
GOTO Back
@ECHO on

:Back
@REM cd /d D:\Admin\Desktop
call Autotools.bat 
