# Try 2 times to start the screen saver
# If the user moves his mouse then the screen saver doesn't start - Mac OS X Yosemite 10.10.1

# TODO: Check if app is running - http://www.macosxautomation.com/applescript/features/appobject.html

set screenSaverActive to -1

if appIsRunning("ScreenSaverEngine") then
	set screenSaverActive to 0
	return screenSaverActive
else 
	set screenSaverActive to 1
 	startScreenSaver()
end if

delay 2

if appIsRunning("ScreenSaverEngine") then
	return screenSaverActive
else 
	set screenSaverActive to 2
 	startScreenSaver()
end if

delay 3

if appIsRunning("ScreenSaverEngine") is false then
	set screenSaverActive to -1
end if

return screenSaverActive

-- Helper
on appIsRunning(appName)
        tell application "System Events" to (name of processes) contains appName
end appIsRunning

-- start screen saver
on startScreenSaver()
	tell application "System Events" to start current screen saver
end startScreenSaver

(*
tell application "System Events"
 tell security preferences
 get properties
 --> returns: {require password to wake:false, class:security preferences object, secure virtual memory:false, require password to unlock:false, automatic login:false, log out when inactive:false, log out when inactive interval:60}
 set properties to {require password to wake:false, secure virtual memory:false, require password to unlock:false, automatic login:false, log out when inactive:false, log out when inactive interval:60}
 end tell
end tell
*)