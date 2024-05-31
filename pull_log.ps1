create_env;

adb pull /sdcard/MobileBooking/log/MKLog.$(Get-Date -Format 'yyyy-MM-dd').001.log $Env:LOGPATH;