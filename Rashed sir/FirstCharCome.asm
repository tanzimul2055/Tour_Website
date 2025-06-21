include 'emu8086.inc'
.stack 100h
.model small

.code
    main proc
        print 'Enter first character: '
        
        mov ah, 01h  ; Get character input
        int 21h
        mov bl, al   ; Store first character
        
        print 'Enter second character: '
        
        mov ah, 01h  ; Get another character input
        int 21h
        
        cmp bl, al   ; Compare ASCII values
        jbe display_first  ; If BL <= AL, display BL
        
        mov dl, al  ; Otherwise, display AL
        jmp display
        
    display_first:
        mov dl, bl  ; Display BL
    
    display:
        mov ah, 02h  ; Output character
        int 21h
        
        mov ah, 4Ch  ; Exit program
        int 21h
    
    main endp

end main