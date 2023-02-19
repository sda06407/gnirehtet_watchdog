adb kill-server
adb devices
adb forward tcp:5555 tcp:5555 # up to you, It isn't necessary.
echo disconnected > mypipe
