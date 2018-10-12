for device in $(cat vendor/zero/zero.devices)
do
add_lunch_combo zero_$device-userdebug
done
