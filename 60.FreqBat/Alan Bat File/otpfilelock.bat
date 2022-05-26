fastboot getvar msmserialno
fastboot oem device-info
fastboot oem allow_unlock
ECHO "otp_file"
SET/p "sid=[Tap Enter...]:"
fastboot flash otp %sid%
fastboot oem unlock_all
PAUSE