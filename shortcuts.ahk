#q::
  Run, explorer.exe C:\Users\tgrehawi
  Return

#w::
  Run, chrome.exe
  Return

#+w::
  Run, chrome.exe --incognito
  Return

#e::
  IfWinExist, Wavebox
    WinActivate
  else
    Run, C:\Users\tgrehawi\AppData\Local\wavebox\Wavebox.exe
  Return

#a::
  Run, %LOCALAPPDATA%\wsltty\bin\mintty.exe --wsl -o Locale=C -o Charset=UTF-8 /bin/wslbridge -C~ -t /bin/bash
  Return

#z::
  Run, %LOCALAPPDATA%\wsltty\bin\mintty.exe --wsl -o Locale=C -o Charset=UTF-8 /bin/wslbridge -C~ -t /usr/bin/ssh zeus
  Return


#s::
  Run, snippingtool.exe
  WinWait, Snipping Tool,, 3
  if ErrorLevel
    TrayTip, AHK, Snipping Tool timed out!
  else
    Send !n
  Return

#+s::
  Send, {PrintScreen}
  TrayTip, , Screenshot taken!
  Return