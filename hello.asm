CHPUT:  equ #00A2     

    db   0FEh              
    dw   START            
    dw   END - 1          
    dw   MAIN                
    org 33280     

START:
 
MAIN:
    ld  hl,msg      
    call PRINT          
    ret                 
     
PRINT:
    ld  a,(hl)          
    and a                
    ret z               ; If a its 0 returns
    call CHPUT          
    inc hl              ; next byte in HL
    jr PRINT            ; loop
 
msg: db "Hello MSX!",0	
END: