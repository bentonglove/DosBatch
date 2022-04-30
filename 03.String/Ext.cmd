:: 可進行擴充的，有兩個條件：
:: 1、該字符串代表一個文件路徑；
:: 2、變量要用%x來表示，x可取a-z A-Z 0-9共62個字符中的任意一個。

@echo off
echo Extend the Info of Current Running Batch File:
echo Full name: %0
echo Trime Quoate :%~0
echo Disk Drive: %~d0
echo File Path: %~p0
echo File Name: %~n0
echo Ext Name: %~x0
echo Attribute: %~a0
echo Last Modified: %~t0
echo Size: %~z0
pause