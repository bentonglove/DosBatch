:: �r�ꪺ�^��
:: �q�r�ꪺ��n�Ӧ�m�}�l�^��m�Ӧr��
echo %date%
set today=%date:~0,2%/%date:~3,2%/%date:~6,4%
echo %today%

:: �r�ꪺ���N
@echo off
set var=(140.128.71.1)
set result=%var:(=[%
set result=%result:)=]%
echo %result%
Pause


