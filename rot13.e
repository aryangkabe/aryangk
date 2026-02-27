rot13_char: 0      ; //address0
rot13_temp: 0      ; //address1
rot13_cmp: 0       ; //address2

rot13_start:
    cp 1 0          ; //rot13_temp = rot13_char

    cpdata 2 97     ; //rot13_cmp97
    blt 1 2 rot13_nochange

    cpdata 2 110    ; //rot13_cmp110
    blt 1 2 rot13_add13

    cpdata 2 123    ; //rot13_cmp123
    blt 1 2 rot13_sub13

rot13_nochange:
    cp 0 1          ; //rot13_charrot13_temp
    ret

rot13_add13:
    cpdata 2 13
    add 1 1 2       ; //rot13_temp13
    cp 0 1
    ret

rot13_sub13:
    cpdata 2 13
    sub 1 1 2       ; //rot13_temp13
    cp 0 1
    ret
