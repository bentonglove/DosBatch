adb root
adb shell rm mnt/vendor/persist/russia.ini
adb shell rm mnt/vendor/persist/turkish.ini
adb shell exit
REM remove rpevious ini_files

adb push D:\1_Image\turkish.ini mnt/vendor/persist
adb shell chmod 644 mnt/vendor/persist/turkish.ini
adb shell sync
adb shell exit
adb reboot fastboot


pause