index: 0
one:   1
zero:  0

main_start:
    cpdata index 0

loop:
    ; load input_array[index] into rot13_char
    cpfa rot13_char input_array index

    ; if rot13_char == 0 → end
    be end rot13_char zero

    ; call ROT13
    call rot13_start

    ; store result into output_array[index]
    cpta output_array index rot13_char

    ; index = index + 1
    add index index one

    ; repeat
    be loop zero zero

end:
    halt


input_array:
    'y'
    'a'
    'n'
    'z'
    0

output_array:
    0
    0
    0
    0
    0

#include rot13.e
