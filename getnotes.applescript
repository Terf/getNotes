#!/usr/bin/osascript

tell application "Notes"
  set folderName to "Notes"
  do shell script "mkdir " & folderName
	set myFolder to first folder whose name = folderName
	-- get body of every note of myFolder
	set myNotes to notes of myFolder
  repeat with theNote in myNotes
    set content to body of theNote
    set title to name of theNote
    set cmd to "echo '" & content & "' >> './" & folderName & "/" & title & ".html'\n"
    -- log cmd
    do shell script cmd
  end repeat
end tell

