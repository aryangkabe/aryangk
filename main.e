index       0
one         1
zero        0

main_start:
    cp      index       zero
loop:
    cpfa    rot13_char  input_array index
    be      end         rot13_char  zero

    call    rot13_start rot13_ra

    cpta    output_array index rot13_char

    add     index       index       one
    be      loop        zero        zero

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
