include 'emu8086.inc'
.stack 100h
.model small

.code
    
    main proc
    
    print 'Enter The first number : '
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
    
    
    print 'Enter The Second number : '
    mov ah,01h                      
    int 21h
    sub al,48
    
    mul bl
   
    mov bl,al  
    add bl,48
    
    mov dl,10
    mov ah,02h
    int 21h
    
    mov dl,13
    mov ah,02h
    int 21h
    
    mov dl,bl
    
    print 'your multiplication result is: '
    
    mov ah,02h
    int 21h
             
        
        
    main endp

end main
