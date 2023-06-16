DECLARE FUNCTION OctalToDec (octal$)
DECLARE FUNCTION OctalToBin (octal$)

Cls
Input "Enter an octal number: "; octal$
dec = OctalToDec(octal$)
Print "Octal to decimal: "; dec
bin = OctalToBin(dec)
Print "Decimal to binary: "; bin
End

Function OctalToDec (octal$)
    L = Len(octal$)
    p = 0
    For i = L To 1 Step -1
        a = Val(Mid$(octal$, i, 1))
        b = b + a * 8 ^ p
        p = p + 1
    Next i
    OctalToDec = b
End Function
Function OctalToBin (dec)
    While dec > 0
        d = dec Mod 2
        e$ = Str$(d)
        binaryNum$ = e$ + binaryNum$
        dec = dec \ 2
    Wend
    OctalToBin = Val(binaryNum$)
End Function