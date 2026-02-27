rot13_start:
    cp rot13_temp rot13_char

    cpdata rot13_cmp 97
    blt rot13_temp rot13_cmp rot13_nochange

    cpdata rot13_cmp 110
    blt rot13_temp rot13_cmp rot13_add13

    cpdata rot13_cmp 123
    blt rot13_temp rot13_cmp rot13_sub13

rot13_nochange:
    cp rot13_char rot13_temp
    ret

rot13_add13:
    cpdata rot13_cmp 13
    add rot13_temp rot13_temp rot13_cmp
    cp rot13_char rot13_temp
    ret

rot13_sub13:
    cpdata rot13_cmp 13
    sub rot13_temp rot13_temp rot13_cmp
    cp rot13_char rot13_temp
    ret

rot13_char: 0
rot13_temp: 0
rot13_cmp: 0
