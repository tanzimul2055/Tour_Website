include 'emu8086.inc'
.stack 100h
.model small

.code
    main proc
        mov ax, 0   ; Initialize sum to 0
        mov cx, 1   ; Start of series (first term)
        
    loop_start:
        add ax, cx  ; Add current term to sum
        add cx, 3   ; Increment term by 3 (common difference)
        cmp cx, 148 ; Check if we reached the last term
        jbe loop_start  ; Repeat loop if CX <= 148
        
        mov ah, 4Ch  ; Exit program
        int 21h

    main endp

end main