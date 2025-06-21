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
        
        cmp bl, al   ; Compare numbers
        jge display_first  ; If BL >= AL, display BL
        
        mov dl, al  ; Otherwise, display AL
        jmp display
        
    display_first:
        mov dl, bl  ; Display BL
    
    display:
        add dl, 48  ; Convert to ASCII
        mov ah, 02h  ; Output number
        int 21h
        
        mov ah, 4Ch  ; Exit program
        int 21h
    
    main endp

end main