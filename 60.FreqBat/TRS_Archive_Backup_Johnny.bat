@echo off
set PYTHONIOENCODING=UTF-8
rem chcp 1252

rem set Variables that you can declare here. EX. folder path
set zip_exe="C:\Program Files\7-Zip\7z.exe"
set sanity_log_path_0=C:\ETGA_TEST_RUNNER\Results\
set ForAutomation_path=C:\Users\usi\Desktop\ForAutomation\

rem Daily sanity automation testing report archive backup
CALL :get_yesterday
%zip_exe% a -tzip %sanity_log_path_0%\SanityTestLogs_0_%yesterday%.zip %sanity_log_path_0%\*
ping 127.0.0.1 -n 10> NULL

rem Move logs.zip file to the folder on desktop
MOVE %sanity_log_path_0%\*.zip %ForAutomation_path%

echo %yesterday% logs are collect and archive completed
pause


:get_yesterday
@setlocal enableextensions enabledelayedexpansion
rem Get the date from WMI (on one line).
 
for /f "skip=2 tokens=2-7 delims=," %%A in ('wmic
path win32_localtime get day^,month^,year^ /format:csv') do (
set /a "yest_yyyy = %%C"
set /a "yest_mm = %%B"
set /a "yest_dd = %%A"
)
 
rem Not the first of the month, just decrement day.
 
if not %yest_dd%==1 (
set /a yest_dd = yest_dd - 1
goto done
)
 
rem Jan 1, set to Dec 31 previous year.
 
if %yest_mm%==1 (
set /a "yest_dd = 31"
set /a "yest_mm = 12"
set /a "yest_yyyy = yest_yyyy - 1"
goto :done
)
 
rem Any other day, decrement month.
 
set /a "yest_mm = yest_mm - 1"
 
rem Need to find last day, default to 31.
 
set dim=31
 
rem Apr/Jun/Sep/Nov all have 30 days. Feb gets special handling.
 
if %yest_mm%==4 set dim=30
if %yest_mm%==6 set dim=30
if %yest_mm%==9 set dim=30
if %yest_mm%==11 set dim=30
if not %yest_mm%==2 goto :got_dim
 
rem Default Feb to 28 then use rules to override.
 
set dim=28
 
set /a "divid=yest_yyyy%%400"
if "%divid%"=="0" goto daysinmonth_29days
set /a "divid=yest_yyyy%%100"
if "%divid%"=="0" goto :done
set /a "divid=yest_yyyy%%4"
if not "%divid%"=="0" goto :got_dim
 
rem Adjust to 29 days.
 
:daysinmonth_29days
 
set dim=29
 
:got_dim
set yest_dd=%dim%
 
:done
 
 
 
rem Pad out and return value.
 
if %yest_mm% lss 10 set yest_mm=0%yest_mm%
if %yest_dd% lss 10 set yest_dd=0%yest_dd%
 
set yesterday=%yest_yyyy%-%yest_mm%-%yest_dd%
 
endlocal && set yesterday=%yesterday%

exit /B 0