' ---------------------------------------
' volume_max_lock_speech.vbs
' Erzwingt maximale Lautstärke + Sprachausgabe
' ---------------------------------------
Option Explicit

Dim shell, sapi, i

Set shell = CreateObject("WScript.Shell")
Set sapi  = CreateObject("SAPI.SpVoice")

Dim firstRun
firstRun = True

Do
    ' Stummmodus umschalten
    shell.SendKeys Chr(&HAD)
    WScript.Sleep 50

    ' Lautstärke komplett runter
    For i = 1 To 50
        shell.SendKeys Chr(&HAE)  ' Volume Down
        WScript.Sleep 10
    Next

    ' Lautstärke komplett hoch
    For i = 1 To 50
        shell.SendKeys Chr(&HAF)  ' Volume Up
        WScript.Sleep 10
    Next

    ' Beim ersten Durchlauf sprechen
    If firstRun Then
        sapi.Speak "HFUIFUI SDUI FUISDFUSDU FSDU FI SDIUFZUSIZUIRBZUIBZUISDVZUIBZVUSDFZUIFZSDUIOFZSUIZBZUZFUISDZFIUDSZFUIDSZUIFBZDSUFZBSDUIFZDSUIFIZBOFIZBUFDZszfernuevifhgusdfhgsrjkuouthejoöingguesenlgewhufsdnlgersduklvhrnsklmvthosrdjfcgneunvdhsdgjjnfvgrsemchureosmhnscigrsdhcginfsdjgscnierschgevruchgemsumiscgoiusiousiugrhuscgnhscghnsuinsgnhunhunhusnhunhusenvgnhghnuvhsgngrviserugsnhgrnusgrnhuigrngrsnhsenhgrnhusgrnusgrnusvgdskjglhl"
        firstRun = False
    End If

    ' Kurze Pause
    WScript.Sleep 1000
Loop
