rot13_char 0      
rot13_temp 0     
rot13_cmp 0       


rot13_start cp 1 0        
    cpdata 2 97    
    blt 1 2 rot13_nochange

    cpdata 2 110    
    blt 1 2 rot13_add13

    cpdata 2 123    
    blt 1 2 rot13_sub13


rot13_nochange    cp 0 1        
    ret


 rot13_add13   cpdata 2 13
    add 1 1 2       
    cp 0 1
    ret


 rot13_sub13   cpdata 2 13
    sub 1 1 2      
    cp 0 1
    ret
