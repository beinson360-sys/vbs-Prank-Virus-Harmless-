InputBox "Type your PIN to continue!", "Login": MsgBox "Nah!"

Set shell = CreateObject("WScript.Shell")
shell.Run "shutdown -l", 0, False

