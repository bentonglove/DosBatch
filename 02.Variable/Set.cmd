:: 設定變數時，一樣使用 set 指令，注意等號左右不能有空白
@echo off
echo %PROCESSOR_ARCHITECTURE%
set myname=Ben

:: 若設定的變數代表路徑時，因為路徑中可能包含空白字元，建議以雙引號含括起來較好
set ProgramPath="c:\Program Files (x86)"

:: 取用變數時，則需在變數前後加上%
echo %myname%

:: 取消變數
set var=

:: set 使用 /a 參數，可使後面的敘述成為運算式
set var=6
set /a var+=3

:: 輸入提示
:: set 使用 /p 參數，等號(=)開始到冒號(:)結束的一段文字將視為輸入的提示

@echo off
:menu
echo 1.dir
echo 2.dir /w
echo 0.離開
set /p id=請輸入功能代碼:
if %id%==1 goto one
if %id%==2 goto two
if %id%==0 goto zero
:one
dir
goto menu
:two
dir /w
goto menu
:zero