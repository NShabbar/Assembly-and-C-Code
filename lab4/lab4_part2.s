	.text
.global draw_pixel

#*****************************************************
# draw_pixel:
#  Given a coordinates y (row) in a1, and x (col) in
#  a2 sets corresponding value in memory to the color 
#  given by a0	
#-----------------------------------------------------
#   Inputs:
#           a0 = 8 bit color value
#           a1 = y coordinate of pixel in format
#           a2 = x coordinate of pixel in format
#   Outputs:
#           No register outputs
#*****************************************************
draw_pixel:

    # Your code goes here
	lui t5, 1
	addi t5, t5, -1024
	add t1, a1, x0
	add t2, a2, x0
	add t3, x0, x0
	add t6, x0, x0
my_loop_loop:
	addi t6, t6, 32
	addi t3, t3, 1
	blt t3, t1, my_loop_loop
	add t6, t6, t5
	add t6, t6, t2
	sb a0, 0(t6)
	jr ra
    