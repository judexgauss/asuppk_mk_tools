param ($asuppk_srv_ip);

echo "trying to delete databases: asop, esk, pfr, mkassir";
adb shell "rm /sdcard/MobileBooking/ASOP/*.db";
adb shell "rm /sdcard/MobileBooking/ESK/*.db";
adb shell "rm /sdcard/MobileBooking/PFR/*.db";
adb shell "rm /sdcard/MobileBooking/mkassir.db";
echo "done";

echo "trying to add server-addr.txt"
adb shell "echo '$asuppk_srv_ip' > /sdcard/MobileBooking/server-addr.txt";
echo "done";