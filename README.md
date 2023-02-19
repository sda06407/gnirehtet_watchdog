# gnirehtet_watchdog
Auto restart [gnirehtet](https://github.com/Genymobile/gnirehtet) when it disconnect

![demo](https://user-images.githubusercontent.com/10058256/219971234-79e5af01-e10a-44f6-a5ef-bd5252d40813.gif)

To use this script, you have to do some prepare.

1. use `mkfifo mypipe` to create pipe file
2. set command or pipe file to absolute path if need.
3. enjoy

When you adb connect the same phone from multi devices, and gnirehtet dissconnect at that time. <br />
You will get the error like `more than one device and emulator`.<br />
In the case I write a reset script to kill adb server.<br />
After ran the script it will become normal.
