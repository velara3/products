#!/usr/bin/osascript

on run argv
	#set argv to {"email@test.com", "testfile", "phrase"}
	set email to first item of argv
	set filename to second item of argv
	set phrase to third item of argv
	
	set scriptOutput to "ssh-keygen -t rsa -C '" & email & "'" & " -N '" & phrase & "'"
	
	if ((filename as string) is not equal to "") then  
		set scriptOutput to scriptOutput & " -f '" & filename & "'"
	else 
		set scriptOutput to scriptOutput & " -f 'home/.ssh/id_rsa'"
	end if
	
	return scriptOutput
	set result to do shell script scriptOutput
	return result
	
	return result
	set output to "{\"key\":\"" & result & "\"}"
	return output
	
end run

(*
on run argv

	set email to first item of argv
	#set result to do shell script "ssh-keygen -t rsa -C \"" & email & "\""
	set result to do shell script "ssh-keygen -t rsa -C \"" & email & "\" < GenerateSSH_responses.txt"
	
	return result
	set output to "{\"key\":\"" & result & "\"}"
	return output
	
end run
*)