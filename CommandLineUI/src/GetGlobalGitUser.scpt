#!/usr/bin/osascript

on run argv

	set user to do shell script "git config --global user.name"
	set email to do shell script "git config --global user.email"
	
	set output to "{\"user\":\"" & user & "\",\"email\":\"" & email & "\"}"
	return output
	
	set output to user & "|" & email
	
end run
(*
        repeat with the_tab in tab_list
            set the_url to the URL of the_tab
            set urlString to urlString & the_url & return
        end repeat
        *)