REM a menu for conversion of all conversions
CLS
PRINT "Number System Conversion Menu"
PRINT "-------------------------------"
PRINT "1. Decimal to Binary"
PRINT "2. Decimal to Octal"
PRINT "3. Decimal to Hexadecimal"
PRINT "4. Binary to Decimal"
PRINT "5. Binary to Octal"
PRINT "6. Binary to Hexadecimal"
PRINT "7. Octal to Decimal"
PRINT "8. Octal to Binary"
PRINT "9. Octal to Hexadecimal"
PRINT "10. Hexadecimal to Decimal"
PRINT "11. Hexadecimal to Binary"
PRINT "12. Hexadecimal to Octal"
PRINT
INPUT "Enter your choice (1-12): "; choice

SELECT CASE choice
    CASE 1
        PRINT "You selected Decimal to Binary conversion."
        Print "Your number is"; dec2bin()
        
    CASE 2
        PRINT "You selected Decimal to Octal conversion."
        Print "Your number is"; dec2oct()
        
    CASE 3
        PRINT "You selected Decimal to Hexadecimal conversion."
        Print "Your number is"; dec2hex()
        
    CASE 4
        PRINT "You selected Binary to Decimal conversion."
        Print "Your number is"; bin2dec()
        
    CASE 5
        PRINT "You selected Binary to Octal conversion."
        Print "Your number is"; bin2oct()
        
    CASE 6
        PRINT "You selected Binary to Hexadecimal conversion."
        Print "Your number is"; bin2hex()
        
    CASE 7
        PRINT "You selected Octal to Decimal conversion."
        Print "Your number is"; oct2dec()
        
    CASE 8
        PRINT "You selected Octal to Binary conversion."
        Print "Your number is"; oct2bin()
        
    CASE 9
        PRINT "You selected Octal to Hexadecimal conversion."
        Print "Your number is"; oct2hex()
        
    CASE 10
        PRINT "You selected Hexadecimal to Decimal conversion."
        Print "Your number is"; hex2dec()
        
    CASE 11
        PRINT "You selected Hexadecimal to Binary conversion."
        Print "Your number is"; hex2bin()
        
    CASE 12
        PRINT "You selected Hexadecimal to Octal conversion."
        Print "Your number is"; hex2oct()
        
    CASE ELSE
        PRINT "Invalid choice. Please enter a number from 1 to 12."
        GOTO 2
END SELECT
END
