@echo off
if not exist D:\70.winsr\20.share\30.Pyenv\ goto NoVenv
dir D:\70.winsr\20.share\30.Pyenv\

:NoVenv
echo Do we need to create a virtual environment?

set /p end=�� 0 �����{��:

::goto :eof �L���w�q���ҡA���������{�����N

if %end%==0 goto :eof
