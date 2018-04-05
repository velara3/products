#!/usr/bin/osascript

on run argv

	set setUserScript to "git config --global user.name '" & first item of argv & "'"
	set setEmailScript to "git config --global user.email '" & second item of argv & "'"
	
	do shell script setUserScript
	do shell script setEmailScript
	
	set user to do shell script "git config --global user.name"
	set email to do shell script "git config --global user.email"
	
	set output3 to "{\"user\":\"" & user & "\",\"email\":\"" & email & "\"}"
	return output3
	
end run
(*
        repeat with the_tab in tab_list
            set the_url to the URL of the_tab
            set urlString to urlString & the_url & return
        end repeat
        *)