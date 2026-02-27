cpdata  r2 0          // r2 = index = 0

loop:
    cpfa   r1 input_array r2   // r1 = input_array[r2]
    be     r1 zero end         // if r1 == 0, stop

    cp     rot13_char r1       // pass char to function
    call   rot13_start         // call ROT13

    cp     r1 rot13_char       // get result back
    cpta   output_array r2 r1  // store into output_array[r2]

    cpdata r3 1                // r3 = 1
    add    r2 r2 r3            // r2 = r2 + 1

    ba     loop                // repeat

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
