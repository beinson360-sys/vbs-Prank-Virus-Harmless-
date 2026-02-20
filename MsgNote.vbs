' simple.vbs
Option Explicit

Dim fso, shell, tempPath, filename, file

Set fso = CreateObject("Scripting.FileSystemObject")
Set shell = CreateObject("WScript.Shell")

tempPath = shell.ExpandEnvironmentStrings("%TEMP%")
filename = tempPath & "\notepad_text.txt"

Set file = fso.CreateTextFile(filename, True)
file.WriteLine "I SEE YOU!!!"
file.Close

shell.Run "notepad.exe """ & filename & """", 1, False

MsgBox "I SEE YOU!!!", vbInformation, "Hinweis"
