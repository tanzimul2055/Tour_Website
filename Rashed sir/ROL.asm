include 'emu8086.inc'
.stack 100h
.model small

.code
    main proc
        mov ax, 0   ; Initialize count to 0
        mov cx, 16  ; Number of bits in BX
        mov dx, bx  ; Copy BX to DX (preserve BX)
        
    count_loop:
        rol dx, 1   ; Rotate left
        jnc skip    ; If carry is not set, skip increment
        
        inc ax      ; Increase count
        
    skip:
        loop count_loop  ; Repeat 16 times
        
        mov ah, 4Ch  ; Exit program
        int 21h

    main endp

end main