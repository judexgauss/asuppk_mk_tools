create_env;

echo $null >> $Env:LOGPATH\MKLog.$(Get-Date -Format 'yyyy-MM-dd').001.log;

& "$Env:ROOT_MK_TOOLS\klogg\klogg_portable.exe" -f $Env:LOGPATH\MKLog.$(Get-Date -Format 'yyyy-MM-dd').001.log;

while($true){
adb pull /sdcard/MobileBooking/log/MKLog.$(Get-Date -Format 'yyyy-MM-dd').001.log $Env:LOGPATH;
Start-Sleep 1;
cls;
}