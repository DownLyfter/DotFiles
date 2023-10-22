upower -i /org/freedesktop/UPower/devices/battery_BAT0 | grep percentage | cut -b 25-30 | sed 's/%//' | sed 's/\ //'
