rem this is a remark and does nothing
:: thsi is also the remark

@echo off 
:: disable the display in console

echo.
echo force display this message


echo.
echo Today is %date% %time%

set /P myname="Please input your name: "
echo.
echo Hello~ %myname%

echo.
echo This program is going to running on the background

timeout 6
