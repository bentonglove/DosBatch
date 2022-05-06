:: https://docs.microsoft.com/en-us/microsoftteams/troubleshoot/teams-administration/clear-teams-cache
:: Clear the Teams client cache
:: You won't lose any user data by clearing the cache.
:: Terminate Teams Process
:: %appdata%\Microsoft\Teams
:: Delete all files and folders in the %appdata%\Microsoft\Teams directory.
:: Restart Teams
:: 循環處理字串

@echo off
set CachePath=%appdata%\Microsoft\Teams
echo %CachePath%
set LIST=blob_storage Cache "Code Cache" databases GPUCache IndexedDB "Local Storage"

:IterateList
for %%a IN (%LIST%) DO (
    call :Make_Full_Path %%a
)
GOTO :eof

:Make_Full_Path
set To_Be_Clear="%CachePath%\%~1"
if EXIST %To_Be_Clear% (
    Call del /Q /S %To_Be_Clear%
    Call rd /Q /S %To_Be_Clear%
)

