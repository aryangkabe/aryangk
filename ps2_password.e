main_start
  cp    index       zero
  cp    match_flag  one

read_loop
  call wait_for_press_start  wait_for_press_ra
  cpfa  expected  password  index
  
  bne  wrong  ps2_char  expected

  add  index  index  one

  blt  read_loop  index  password_len

correct
  cp  0x880000002  green
  halt

wrong
  cp  0x880000002 red
  halt

password
  'w'
  'o'
  'l'
  'v'
  'e'
  'r'
  'i'
  'n'
  'e'
  's'

password_len 10

index  0
expected  0
match  0
green  255
red  131071

zero  0
one  1


wait_for_press_start
press_loop
  call ps2_get_start  ps2_ra
  be press_loop  ps2_pressed  ps2_zerp
  ret wait_for_press

wait_for_press  0

#include ps2.e
