rem @echo off

REM Clean up any device list left over from a prior run

del /Q /F devices.txt
del /Q /F temp.txt

REM get a list of all of the attached Android devices
adb devices > temp.txt
timeout 5
find "device" temp.txt > devices.txt

REM upgrade os to all attached devices
for /F "skip=3 tokens=1" %%i in (.\devices.txt) DO (
	adb -s %%i root
	
	adb -s %%i wait-for-device

	adb -s %%i push qcom_downdload_Q.ini /mnt/vendor/persist/qcom_download.ini

	adb -s %%i push usb_automation-enable_Q.ini /mnt/vendor/persist/usb_automation-enable_Q.ini

	adb -s %%i shell chmod 644 /mnt/vendor/persist/usb_automation-enable_Q.ini 

	adb -s %%i shell chmod 644 /mnt/vendor/persist/qcom_download.ini
	echo "automation value"
	adb -s %%i shell getprop ro.vendor.symbol.qcom.download

)

REM Clean up
timeout 5
del /Q /F devices.txt
del /Q /F temp.txt
@echo on
pause