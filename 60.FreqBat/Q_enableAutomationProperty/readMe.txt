Procedure:
1. Flash userdebug build and push the above attached .ini files to /mnt/vendor/persist path using below commands.

	run : adb root 

then run below commands to enable download mode and automation

	adb push qcom_download.ini /mnt/vendor/persist/

	adb push usb_automation-enable_Q.ini /mnt/vendor/persist/

	adb shell chmod 644 /mnt/vendor/persist/usb_automation-enable_Q.ini 

	adb shell chmod 644 /mnt/vendor/persist/qcom_download.ini

2. Now Flash the user build and can able to see the below properties.
	adb shell getprop ro.symbol.test.automation= 1
	adb shell getprop ro.vendor.symbol.qcom.download=1


