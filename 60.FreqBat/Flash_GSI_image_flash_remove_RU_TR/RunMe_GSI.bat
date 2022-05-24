@echo off

set system_image_path="D:\xTS_Data\GSI image\11\r5\P\system.img"

REM get a list of all of the attached Android devices
adb devices > nul
adb devices > temp.txt
find "device" temp.txt > devices.txt

REM Command each connected device to run Install script by adb command
for /F "skip=3 tokens=1" %%i in (.\devices.txt) DO (
	Echo Starting USI_Install_GSI_Windows on device with ID %%i by adb command
	echo "updating" > update_%%i.txt
	start cmd /V:ON /C "USI_Install_GSI_Windows.bat %%i %system_image_path%" 
	ping localhost -n 6 > nul
)

REM =======================================================================================
fastboot devices > temp.txt
find "fastboot" temp.txt > devices.txt

REM Command each connected device to run Install script by fastboot command
for /F "skip=2 tokens=1" %%i in (.\devices.txt) DO (
	Echo Starting USI_Install_GSI_Windows on device with ID %%i by fastboot command
	start cmd /V:ON /C "USI_Install_GSI_Windows.bat %%i %system_image_path%"
	ping localhost -n 6 > nul
)
