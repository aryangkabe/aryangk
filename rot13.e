rot13_start
	blt	rot13_add13	rot13_char	rot13_110
	sub	rot13_char	rot13_char	rot13_num13
	be	halt		0		0

rot13_add13	add	rot13_char	rot13_char	rot13_num13	

rot13_end
	ret rot13_ra


rot13_char    0            
rot13_num110  110   
rot13_num13   13
rot13_ra 0

