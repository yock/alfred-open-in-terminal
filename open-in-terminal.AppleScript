on alfred_script(q)
  tell application "Finder"
    try
      set _dir to POSIX path of ((folder of (front window)) as alias)
    on error
      set _dir to POSIX path of (path to home folder as alias)
    end try
  end tell


  tell application "iTerm 2"
    activate
    tell current terminal
      tell current session
        write text "cd \"" & _dir & "\""
      end tell
    end tell
  end tell
end alfred_script
