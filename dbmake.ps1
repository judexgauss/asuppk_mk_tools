param ($asuppk_srv_ip);

echo "trying to delete databases: asop, esk, pfr, mkassir";
adb shell "rm /sdcard/MobileBooking/ASOP/*.db";
adb shell "rm /sdcard/MobileBooking/ESK/*.db";
adb shell "rm /sdcard/MobileBooking/PFR/*.db";
adb shell "rm /sdcard/MobileBooking/mkassir.db";
echo "done";

if ([string]::IsNullOrWhitespace($asuppk_srv_ip)) {
	echo "Didn't get any ip from you. Looking for IPv4 Address"
	$asuppk_srv_ip = (
    Get-NetIPConfiguration |
    Where-Object {
        $_.IPv4DefaultGateway -ne $null -and
        $_.NetAdapter.Status -ne "Disconnected"
    }
).IPv4Address.IPAddress
	$asuppk_srv_ip += ";"
	echo "Found your IPv4 Address: '$asuppk_srv_ip'"
}



echo "trying to add '$asuppk_srv_ip' to server-addr.txt"
adb shell "echo '$asuppk_srv_ip' > /sdcard/MobileBooking/server-addr.txt";
echo "done";