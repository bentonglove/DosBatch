:: 讀取檔案：
:: 逐行讀取指定的檔案，然後依照 分隔符號 將內容 賦值給指定變數
:: 範例：逐行讀取 user.ini 文字檔內容，以等號(=)為分隔，左邊給%%i，右邊給%%j

@echo off
for /F "tokens=1,2 delims==" %%i in (user.ini) DO set %%i=%%j

echo %account%
echo %passwd%

:: 讀取字串：
:: 讀取字串或變數，然後依照分隔符號將內容賦值給指定變數
for /F "tokens=1-3 delims=- " %%a in ("%date%") do set mydate=%%a/%%b/%%c
echo %mydate%

:: 讀取命令：
:: 依照分隔符號將內容賦值給指定變數
for /F "tokens=1-3 delims=- " %%a in ('date /t') do echo %%a_%%b_%%c

:: 將命令 sc query 的執行結果透過管線輸出給 find 指令，尋找包含有SERVICE_NAME字串的列，然後將第2欄的內容存到 %i 變數並顯示出來
for /F "tokens=2" %%i in ('sc query ^| find /i "SERVICE_NAME"') do echo %%i

for /F "usebackq tokens=1,2* delims=" %%a in (`adb devices ^| find "191155230E0031"`) do echo %%a

::利用 findstr 過濾文字檔(.csv)包含有井字號(#)的列,然後 以逗號(,)為分隔，依序給%%I、%%J、%%K、%%L 4變數，然後再分別設定到有意義的變數中儲存
rem 設定參數檔名與批次檔相同(.csv)
set cfg=%~n0.csv
echo %cfg%
FOR /F "tokens=1,2,3,4 delims=, " %%I IN ('findstr /V [#] %cfg%') DO (
 set remoteDIR=%%I
 set localBackupFolder=%%J
 set RetentionDay=%%K
 set isCallCheckspace=%%L
)
echo %isCallCheckspace%