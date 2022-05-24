@echo off
path=%path%;c:\androidtools\platform-tools;C:\androidtools;C:\ETGA_BACKUP\ADB\platform-tools

echo Create WlanFilesFolder
set f=/sdcard/WlanFiles
adb -s %1 shell mkdir %f%
	
echo ***************************************
echo      	Install apk
echo ***************************************
adb -s %1 install -t "\\10.0.4.230\files\Dummy_image\TestCase - Requirement Files\WLAN\STTL-111169\PingTools_2.71_Free_271.apk"
adb -s %1 install -t "\\10.0.4.230\files\Dummy_image\TestCase - Requirement Files\WLAN\STTL-160658\AnyConnect_v4.7.03061_(STTL-160658).apk"
adb -s %1 install -t "\\10.0.4.230\files\Dummy_image\TestCase - Requirement Files\WLAN\STTL-177005 & STTL-177021\skype-8-56-0-100.apk"
adb -s %1 install -t "\\10.0.4.230\files\Dummy_image\TestCase - Requirement Files\WLAN\STTL-177379\NFC TagInfo by NXP_v4.24.5_apkpure.com.apk"
	
echo .
echo ***************************************
echo      	Push Files
echo ***************************************
adb -s %1 push "\\10.0.4.230\files\Dummy_image\TestCase - Requirement Files\WLAN\STTL-66700 & STTL-66701\." %f%
adb -s %1 push "\\10.0.4.230\files\Dummy_image\TestCase - Requirement Files\WLAN\STTL-143799 & STTL-152906\." %f%
	

echo .
echo ***************************************
echo      Files push completed
echo ***************************************
PING localhost -n 5 >nul 2>&1


:EXIT_ALL
REM @echo on
pause