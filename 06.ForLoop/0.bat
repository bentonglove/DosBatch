@echo off
rem My Test Script for Internal Training
@echo Welcome all you guys!!
































::No.15
::==================================================
::set local_repository="D:\60.workspace\13.stLabs\02.Batch ::file Script\06.ForLoop"
::set remote_storage=/data/local/tmp
::for /F "skip=1" %%i in ('adb devices') do (
::   for %%j in (%local_repository%\*.txt) do (
::     call adb -s %%i push "%%j" %remote_storage%
::   )
::)

::No.16
::==================================================
::set local_repository="D:\60.workspace\13.stLabs\02.Batch file Script\06.ForLoop"
::set remote_storage=/data/local/tmp
::
::for /F "skip=1" %%i in ('adb devices') do (
::    call :push_files_to_my_device %%i
::    )
::)
::@echo Am I return?
::goto :eof
::
:::push_files_to_my_device
::    @echo Running Function ...
::    for %%i in (%local_repository%\*.txt) do (
::       call adb -s %1 push "%%i" %remote_storage%
::    )
::exit /b


::No.17
::======================================================
::start cmd.exe /V:ON /s /c "for /L %%i in (1, 1, 10000) DO ::@echo %%i  & echo !time!"
::
::cls
::for /L %%i in (1, 1, 100) DO @echo Main_Session~%%i 
::echo %time%