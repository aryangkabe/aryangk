rot13_start:
        // Save return address
        cp      rot13_ra r7

        // Load the character
        cp      r1 rot13_char

        be      r1 zero end

        // Check if r1 >= 97
        cpdata  r2 97
        blt     r1 r2 check_upper

        // Check if r1 <= 109
        cpdata  r2 109
        blt     r2 r1 check_upper

        // r1 in [97..109] → add 13
        cpdata  r2 13
        add     r1 r1 r2
        cp      rot13_char r1
        ret

check_upper:
        // Check if r1 >= 110
        cpdata  r2 110
        blt     r1 r2 nochange

        // Check if r1 <= 122
        cpdata  r2 122
        blt     r2 r1 nochange

        // r1 in [110..122] → subtract 13
        cpdata  r2 13
        sub     r1 r1 r2
        cp      rot13_char r1
        ret

nochange:
        cp      rot13_char r1
        ret

end:
        ret

// Variables
rot13_char   0
rot13_ra     0
zero         0
