:: �]�w�ܼƮɡA�@�˨ϥ� set ���O�A�`�N�������k���঳�ť�
@echo off
echo %PROCESSOR_ARCHITECTURE%
set myname=Ben

:: �Y�]�w���ܼƥN����|�ɡA�]�����|���i��]�t�ťզr���A��ĳ�H���޸��t�A�_�Ӹ��n
set ProgramPath="c:\Program Files (x86)"

:: �����ܼƮɡA�h�ݦb�ܼƫe��[�W%
echo %myname%

:: �����ܼ�
set var=

:: set �ϥ� /a �ѼơA�i�ϫ᭱���ԭz�����B�⦡
set var=6
set /a var+=3

:: ��J����
:: set �ϥ� /p �ѼơA����(=)�}�l��_��(:)�������@�q��r�N������J������

@echo off
:menu
echo 1.dir
echo 2.dir /w
echo 0.���}
set /p id=�п�J�\��N�X:
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