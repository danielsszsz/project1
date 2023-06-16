Cls
Input "Enter a hexadecimal number: ", hexNum$
decNum = HexToDec(hexNum$)
octNum$ = DecToOct$(decNum)

Print "The Octal representation of " + hexNum$ + " is " + octNum$

Function HexToDec (hexa$)
    dec = 0
    hexa$ = UCase$(hexa$)
    For i = 1 To Len(hexa$)
        digit$ = Mid$(hexa$, i, 1)
        Select Case digit$
            Case "0" To "9":
                dec = dec * 16 + Val(digit$)
            Case "A" To "F":
                dec = dec * 16 + (Asc(digit$) - Asc("A") + 10)
        End Select
    Next i
    HexToDec = dec
End Function

Function DecToOct$ (deci)
    octNum$ = ""
    decNum = deci
    While (decNum > 0)
        remainder = decNum Mod 8
        decNum = Int(decNum / 😎
        octNum$ = LTrim$(Str$(remainder)) + octNum$
    Wend
    DecToOct$ = octNum$
End Function
