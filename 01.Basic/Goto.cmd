@echo off
if not exist D:\70.winsr\20.share\30.Pyenv\ goto NoVenv
dir D:\70.winsr\20.share\30.Pyenv\

:NoVenv
echo Do we need to create a virtual environment?

set /p end=按 0 結束程式:

::goto :eof 無須定義標籤，直接結束程式之意

if %end%==0 goto :eof
