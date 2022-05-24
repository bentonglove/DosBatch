adb shell mkdir /sdcard/ITS
adb shell mkdir /sdcard/ITS/camera=0_cenes=0
adb shell mkdir /sdcard/ITS/camera=0_cenes=1
adb shell mkdir /sdcard/ITS/camera=0_cenes=2
adb shell mkdir /sdcard/ITS/camera=0_cenes=3
adb shell mkdir /sdcard/ITS/camera=0_cenes=4
adb shell mkdir /sdcard/ITS/camera=0_cenes=5
adb shell mkdir /sdcard/ITS/camera=0_cenes=scenes=sensor_fusion
adb shell mkdir /sdcard/ITS/camera=1_cenes=0
adb shell mkdir /sdcard/ITS/camera=1_cenes=1
adb shell mkdir /sdcard/ITS/camera=1_cenes=2
adb shell mkdir /sdcard/ITS/camera=1_cenes=3
adb shell mkdir /sdcard/ITS/camera=1_cenes=4
adb shell mkdir /sdcard/ITS/camera=1_cenes=5
adb shell mkdir /sdcard/ITS/camera=1_cenes=scenes=sensor_fusion
adb shell settings put global hidden_api_policy 1
adb push D:\Admin\Desktop\Tools\apk\CTS-V\A11\android-cts-verifier-A11_R7\A11_R7_CTS-V_apk. /sdcard/A11_R7_CTS-V_apk
adb install -r -g D:\Admin\Desktop\Tools\apk\CTS-V\A11\android-cts-verifier-A11_R7\CtsVerifier.apk
adb shell appops set com.android.cts.verifier MANAGE_EXTERNAL_STORAGE 0
adb push D:\Admin\Desktop\Tools\apk\CTS-V\A11\android-cts-verifier-A11_R7\NotificationBot.apk /data/local/tmp
adb push D:\Admin\Desktop\Tools\apk\CTS-V\A11\android-cts-verifier-A11_R7\NotificationBot.apk /sdcard
adb shell appops set com.android.cts.verifier android:read_device_identifiers allow
pause