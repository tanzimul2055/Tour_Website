include 'emu8086.inc'
.stack 100h
.model small

.code
main proc
    ; Ask for dividend
    print 'Enter dividend: '
    mov ah, 01h       ; Input character
    int 21h
    sub al, 48        ; Convert from ASCII to number
    mov bl, al        ; Store dividend in BL
    call new_line

    ; Ask for divisor
    print 'Enter divisor: '
    mov ah, 01h
    int 21h
    sub al, 48        ; Convert from ASCII
    mov cl, al        ; Store divisor in CL
    call new_line

    ; Prepare for division
    mov ah, 0         ; Clear AH for AX
    mov al, bl        ; Load dividend to AL (AX = dividend)
    div cl            ; Divide AX by CL -> Quotient in AL, Remainder in AH

    ; Show result
    print 'Quotient: '
    mov dl, al
    add dl, 48        ; Convert to ASCII
    mov ah, 02h
    int 21h

    print ' Remainder: '
    mov dl, ah
    add dl, 48        ; Convert to ASCII
    mov ah, 02h
    int 21h

    ; Exit
    mov ah, 4Ch
    int 21h

main endp

; Procedure to print a new line
new_line proc
    mov ah, 02h
    mov dl, 13       ; Carriage return
    int 21h
    mov dl, 10       ; Line feed
    int 21h
    ret
new_line endp

end main
