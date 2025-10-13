' lockscreen.vbs
Set shell = CreateObject("WScript.Shell")
shell.Run "rundll32.exe user32.dll,LockWorkStation", 0, False
