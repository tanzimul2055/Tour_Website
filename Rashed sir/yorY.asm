include 'emu8086.inc'
.stack 100h
.model small

.code
    main proc
        print 'Enter a character: '
        
        mov ah, 01h  ; Get character input
        int 21h
        
        cmp al, 'y'  ; Compare with 'y'
        je display_char  ; Jump if equal
        
        cmp al, 'Y'  ; Compare with 'Y'
        je display_char  ; Jump if equal
        
        jmp terminate  ; If neither, terminate
        
    display_char:
        mov dl, al
        mov ah, 02h  ; Output character
        int 21h
        
    terminate:
        mov ah, 4Ch  ; Exit program
        int 21h
    
    main endp

end main