include 'emu8086.inc'
.stack 100h
.model small

.code
    main proc
        print 'Enter first number: '
        mov ah, 01h  ; Get first number input
        int 21h
        sub al, 48   ; Convert ASCII to number
        mov bl, al   ; Store first number
        
        print 'Enter second number: '
        mov ah, 01h  ; Get second number input
        int 21h
        sub al, 48   ; Convert ASCII to number
        
        add bl, al   ; Add the two numbers
        
        mov ax, 0    ; Clear AX before division
        mov al, bl   ; Move sum to AL
        mov bl, 2    ; Divide by 2
        div bl       ; AL now contains the average
        
        add al, 48   ; Convert to ASCII
        mov dl, al   ; Prepare for output
        mov ah, 02h  ; Output average
        int 21h
        
        mov ah, 4Ch  ; Exit program
        int 21h
    
    main endp

end main