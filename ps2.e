ps2_getkey_start

ps2_wait0
  cp  ps2_tmp  0x80000020
  bne  ps2_wait0  ps2_tmp  ps2_zero

  cp 0x80000020  ps2_one

ps2_wait1
  cp ps2_tmp  0x80000020
  be ps2_wait1  ps2_tmp  ps2_one

  cp ps2_pressed 0x80000021
  cp ps2_char 0x80000022

  ret ps2_ra


ps2_tmp  0
ps2_char  0
ps2_pressed  0
ps2_ra  0
ps2_zero  0
ps2_one  1
