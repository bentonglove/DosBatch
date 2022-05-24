@echo off

set serial=%1
set device_serial=-s %1
set system_image_path=%2


adb %device_serial% reboot bootloader
timeout 10

@echo MSG: flashing %system_image_path% file to %serial%.
fastboot %device_serial% flash system_a %system_image_path%
timeout 1
fastboot %device_serial% flash system_b %system_image_path%
timeout 1
@echo MSG: Erase userdata.
fastboot %device_serial% erase userdata
timeout 1
@echo MSG: Reboot device.
fastboot %device_serial% reboot

