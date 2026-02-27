rot13_start:
    cpfa r1 rot13_char r0

    cpdata r2 97
    blt r1 r2 nochange
    cpdata r2 109
    bgt r1 r2 check_lower
    cpdata r3 13
    add r1 r1 r3
    cp rot13_char r1
    ret
check_lower:
    cpdata r2 110
    blt r1 r2 nochange
    cpdata r2 122
    bgt r1 r2 nochange

    cpdata r3 13
    sub r1 r1 r3
    cp rot13_char r1
    ret
nochange: 
    cp rot13_char r1
    ret

rot13_char: 0

