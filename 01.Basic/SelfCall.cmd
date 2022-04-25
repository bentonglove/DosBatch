@echo Off
call :setError
echo %errorlevel%
goto :eof

:setError
Exit /B 4