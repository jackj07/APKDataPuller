if [ -z "$1" ]
then
        echo "usage: devicedatapuller <app.package>"
	echo "Requirements: adb and connected rooted Android device"
        exit
fi

adb shell su -c cp -r /data/data/$1 /storage/emulated/0/
adb pull /sdcard/$1
