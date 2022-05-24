@echo off
path=%path%;c:\androidtools\platform-tools;C:\androidtools;C:\ETGA_BACKUP\ADB\platform-tools

echo Create PrinterFilesFolder
set f=/sdcard/PrinterFiles
adb -s %1 shell mkdir %f%
	
echo ***************************************
echo      	Install apk
echo ***************************************
adb -s %1 install -t "\\10.0.4.230\files\Dummy_image\Test\print apk\Print Station_v1.5.4936 (2f9d324b452af7ff0446e6813b85224bbe080b1b)_apkpure.com.apk"
adb -s %1 install -t "\\10.0.4.230\files\Dummy_image\Test\print apk\Tapping Auto Clicker_v1.3.4.3_apkpure.com.apk"
adb -s %1 install -t "\\10.0.4.230\files\Dummy_image\Test\print apk\Zebra Printer Setup.apk"
adb -s %1 install -t "\\10.0.4.230\files\Dummy_image\Test\print apk\Zebra Utilities_v2.0.5152_apkpure.com.apk"
adb -s %1 install -t "\\10.0.4.230\files\Dummy_image\Test\print apk\ZebraTapAndPair-v2_0_0_0.apk"
	
echo .
echo ***************************************
echo      	Push Files
echo ***************************************
adb -s %1 push "\\10.0.4.230\files\Dummy_image\Test\print apk\." %f%
	

echo .
echo ***************************************
echo      Files push completed
echo ***************************************
PING localhost -n 5 >nul 2>&1


:EXIT_ALL
REM @echo on
pause