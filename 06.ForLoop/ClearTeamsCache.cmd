:: https://docs.microsoft.com/en-us/microsoftteams/troubleshoot/teams-administration/clear-teams-cache
:: Clear the Teams client cache
:: You won't lose any user data by clearing the cache.
:: Terminate Teams Process
:: %appdata%\Microsoft\Teams
:: Delete all files and folders in the %appdata%\Microsoft\Teams directory.
:: Restart Teams

@echo off
set CachePath=%appdata%\Microsoft\Teams
echo %CachePath%
set LIST=blob_storage Cache "Code Cache" databases GPUCache IndexedDB "Local Storage"
echo %LIST%
SETLOCAL ENABLEDELAYEDEXPANSION
for %%i in (%LIST%) do (
    set x=%%i
    echo %!x!:~1,4%
)