r0  0
r1  1
r2 2
r3 3
rot13_start
    cpfa r1 rot13_char r0

    cpdata r2 97
    blt nochange r1 r2
    cpdata r2 109
    blt check_lower r2 r1 
    cpdata r3 13
    add r1 r1 r3
    cp rot13_char r1
    halt
check_lower
    cpdata r2 110
    blt nochange r1 r2
    cpdata r2 122
    blt nochange r2 r1

    cpdata r3 13
    sub r1 r1 r3
    cp rot13_char r1
    halt
nochange
    cp rot13_char r1
    halt

rot13_char 0

