include 'emu8086.inc' 
.stack 100h
.model small


.data



.code
    
    main proc
    
    print 'Enter a character '
    
    mov ah,01h
    int 21h
    mov bl,al
    sub bl,32
    
    mov dl,10
    mov ah,02h
    int 21h
    
    mov dl,13
    mov ah,02h
    int 21h
    
    
    mov dl,bl
    print 'the character is '
    mov ah,02h
    int 21h
            
            
    main endp
    

end main