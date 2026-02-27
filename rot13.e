// ROT13 function
// Input:  rot13_char contains the character
// Output: rot13_char contains the transformed character

rot13_start:

    // Load the character into
    cpfa   r1 rot13_char r0

    // lowercase a-m (97-109)
    cpdata r2 97
    blt    r1 r2 check_upper
    cpdata r2 109
    bgt    r1 r2 check_lower_n_to_z

    // r1 in [97,109] -> add 13
    cpdata r3 13
    add    r1 r1 r3
    cp     rot13_char r1
    ret

check_lower_n_to_z:
    // lowercase n-z (110-122)
    cpdata r2 110
    blt    r1 r2 check_upper
    cpdata r2 122
    bgt    r1 r2 check_upper

    // r1 in [110,122] -> subtract 13
    cpdata r3 13
    sub    r1 r1 r3
    cp     rot13_char r1
    ret

check_upper:
    // uppercase A-M (65-77)
    cpdata r2 65
    blt    r1 r2 nochange
    cpdata r2 77
    bgt    r1 r2 check_upper_n_to_z

    // r1 in [65,77] -> add 13
    cpdata r3 13
    add    r1 r1 r3
    cp     rot13_char r1
    ret

check_upper_n_to_z:
    // uppercase N-Z (78-90)
    cpdata r2 78
    blt    r1 r2 nochange
    cpdata r2 90
    bgt    r1 r2 nochange

    // r1 in [78,90] -> subtract 13
    cpdata r3 13
    sub    r1 r1 r3
    cp     rot13_char r1
    ret

nochange:
    cp     rot13_char r1
    ret

// Variables
rot13_char: 0
