:: 替換字符串

@echo off
set aa=We are a great country! We proud of you!
echo before: %aa%
echo after %aa:We=Taiwan%

set IP=[8.8.8.8]
echo %IP%
set IP=%IP:[=%
set IP=%IP:]=%
call ping %IP%

