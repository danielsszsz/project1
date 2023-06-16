Declare function hexbi (h$)
Cls
Input "enter  a  hex no."; h$
c# = hexbi(h$)
Print "the bi equivalent is"; c#

Function hexbi (h$)
    dec = 0
    n = Len(h$) - 1
    For i = 1 To Len(h$)
        ch$ = Mid$(h$, i, 1)
        ch$ = UCase$(ch$)
        Select Case ch$
            Case "0" To "9"
                d = Val(ch$)
            Case "A"
                d = 10
            Case "B"
                d = 11
            Case "C"
                d = 12
            Case "D"
                d = 13
            Case "E"
                d = 14
            Case "F"
                d = 15
            Case Else
                Print "invalid no."
                End
        End Select
        dec = dec + d * (16 ^ n)
        n = n - 1
    Next
    While dec <> 0
        r = dec Mod 2
        b$ = Str$(r) + b$
        dec = dec \ 2
    Wend
    hexbi = Val(b$)
End Function

