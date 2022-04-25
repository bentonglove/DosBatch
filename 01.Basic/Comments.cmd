::===============================================================
:: The below example is used to find computer and logged on users
::
::===============================================================
@ECHO OFF 
:: Windows version check 
IF NOT "%OS%"=="Windows_NT" GOTO Syntax 
ECHO %* | FIND /c "?"  