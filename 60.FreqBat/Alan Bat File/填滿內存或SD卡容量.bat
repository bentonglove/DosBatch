CLS
:Star
ECHO �п�ܭn�����Ʊ�...
ECHO 1 - ���s��
ECHO 2 - SD�d��
ECHO 3 - �^��W�@��

SET /P fil=�п�J���X�M����UEnter:

if %fil%==1 GOTO File1
if %fil%==2 GOTO File2
if %fil%==3 GOTO Back
cls
echo ��J���~�A�Э��s��J
PAUSE
goto Star

:File1
adb wait-for-device
SET/p "bs=[��J�h��byte(1024X1024X1024=1G)�M����UEnter...]:"
if "%bs%"=="" GOTO OPTION3
SET/p "num=[�ݭn��X���M����UEnter...]:"
if "%num%"=="" GOTO OPTION3
SET/p "txt=[��J�ɮצW�٫��UEnter...(�`�N�p�G��J�ۦP�W�٪��|�Q�л\)]:"
if "%txt%"=="" GOTO OPTION3
adb shell dd if=/dev/zero if=/sdcard/%txt%.txt bs=%bs% count=%num%
ECHO ���s�񺡧���...
PAUSE
GOTO Back
@ECHO on

:File2
adb wait-for-device
SET/p "bs=[��J�h��byte(1024X1024X1024=1G)�M����UEnter...]:"
if "%bs%"=="" GOTO OPTION3
SET/p "num=[�ݭn��X���M����UEnter...]:"
if "%num%"=="" GOTO OPTION3
SET/p "txt=[��J�ɮצW�٫��UEnter...(�`�N�p�G��J�ۦP�W�٪��|�Q�л\)]:"
if "%txt%"=="" GOTO OPTION3
adb shell dd if=/dev/zero of=/sdcard1/%txt%.txt bs=%bs% count=%num%
ECHO SD�d�񺡧���...
PAUSE
GOTO Back
@ECHO on

:Back
@REM cd /d D:\Admin\Desktop
call Autotools.bat 
