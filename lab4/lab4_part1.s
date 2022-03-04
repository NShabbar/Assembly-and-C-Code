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
	addi t1, x0, 0
	addi t2, x0, 1024
	lui t6, 1
	addi t6, t6, -1024
my_loop:
	add t5, x0, a0
	sb t5, 0(t6)
	addi t6, t6, 1
	addi t1, t1, 1
	blt t1, t2, my_loop
	jr ra