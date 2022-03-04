.text
.global fill_bitmap

#*****************************************************
# fill_bitmap: 
#  Given a color, will fill the bitmap display with that color.
#-----------------------------------------------------
#   Inputs:
#           a0 = 8 bit color value
#   Outputs:
#           No register outputs
#*****************************************************
fill_bitmap:

    # Your code goes here   
	addi x1, x0, 0
	addi x2, x0, 1024
	lui x6, 1
	addi x6, x6, -1024
	addi x3, x0, 72
my_loop:
	add x5, x0, x3
	sb x5, 0(x6)
	addi x6, x6, 1
	addi x1, x1, 1
	blt x1, x2, my_loop
	jr ra