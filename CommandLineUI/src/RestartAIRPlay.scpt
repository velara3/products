# RestartAIRPlay.scpt:73:114: execution error: sudo: no tty present and no askpass 
# program specified (1) 
# do shell script "sudo killall coreaudiod"

# the following does nothing
#do shell script "killall coreaudiod"


(*
tell application "System Events"
    tell process "System Preferences"
        tell first window
            set position to {540, 200}
        end tell
    end tell
end tell
*)

do shell script "sudo killall coreaudiod" with administrator privileges

(*
tell application "System Events"
	tell process "System Preferences"
		click pop up button 1 of window 1
		click menu item 2 of menu 1 of pop up button 1 of window 1
	end tell
end tell

tell application "System Preferences"
	quit
end tell
*)