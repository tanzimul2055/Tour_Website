include 'emu8086.inc'
.stack 100h
.model small

.data
    

.code
    
    main proc
    
    print 'enter first number'
    
    mov ah,01h
    int 21h
             
    sub al,48         
    mov bl,al
    
    mov dl,10
    mov ah,02h
    int 21h
    
    mov dl,13
    mov ah,02h
    int 21h  
    
    print 'enter Second number'
    
    mov ah,01h
    int 21h
    sub al,48
    add bl,al
    
    mov dl,10
    mov ah,02h
    int 21h
    
    mov dl,13
    mov ah,02h
    int 21h  
    
    mov dl,bl
    add dl,48
    print 'the sum is '
    mov ah,02h
    int 21h  
    
        
        
        
        
    main endp
    
end main