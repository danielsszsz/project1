declare function isoctal (o)
declare function oct2dec (o)
declare function dec2hex$ (dec)
declare function dec2bin (d)

Cls
Input "Enter a decimal number: "; d
Input "Enter an octal number: "; o
Print "Binary equivalent: "; dec2bin(d)
If isoctal(o) = 1 Then
    Print "Hexadecimal equivalent: "; dec2hex$(oct2dec(o))
Else
    Print "Invalid input. Enter a valid octal number."
End If
End

Function isoctal (o)
    o$ = Str$(o)
    For i = 1 To Len(o$)
        od = Val(Mid$(o$, i, 1))
        If od < 0 Or od > 7 Then
            isoctal = 0
            Exit Function
        End If
    Next i
    isoctal = 1
End Function

Function oct2dec (o)
    o$ = Str$(o)
    dec = 0
    For i = 1 To Len(o$)
        od = Val(Mid$(o$, i, 1))
        dec = dec * 8 + od
    Next i
    oct2dec = dec
End Function

Function dec2hex$ (dec)
    hexchars$ = "0123456789ABCDEF"
    hexstr$ = ""
    Do
        hexi = dec Mod 16
        hexchar$ = Mid$(hexchars$, hexi + 1, 1)
        hexstr$ = hexchar$ + hexstr$
        dec = dec \ 16
    Loop Until dec = 0
    dec2hex$ = hexstr$
End Function

Function dec2bin (d)
    b$ = ""
    While d <> 0
        r = d Mod 2
        d = d \ 2
        b$ = Str$(r) + b$
    Wend
    dec2bin = Val(b$)
End Function
