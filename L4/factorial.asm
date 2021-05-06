# $a0 = array base address
# $a1 = n
# $s0 = n!

Main:
	addi $a0, $0, 0x100     			# array base address = 0x100
	addi $a1, $0, 0         			# i = 0
	addi $t0, $0, 3
	addi $t1, $0, 50        			# $t1 = 50

CreateArray_Loop:
	slt $t2, $a1, $t1       			# i < 50?
	beq $t2, $0, Exit_Loop  			# if not then exit loop
	sll $t2, $a1, 2         			# $t2 = i * 4 (byte offset)
	add $t2, $t2, $a0       			# address of array[i]
	mult $a1, $t0
	mflo $t3                			# $t3 = i * 3
	sw $t3, 0($t2)          			# save array[i]
	addi $a1, $a1, 1        			# i = i + 1
	j CreateArray_Loop

Exit_Loop:
    # your code goes in here...
    # arithmetic calculation
    	lw $t4, 100($a0)
    	lw $t5, 120($a0)
	add $a1, $t4, $t5			# $a1 = my_array[25] + my_array[30]
	addi $t6, $0, 30			# $t4 = 30
	div $a1, $t6	
	mflo $a1				# $a1 = $a1 / $t4
    # ...

    # factorial computation
	jal factorial          			# call procedure
	add $s0, $v0, $0       			# return value
	sw $s0, 0x10($0)			# store factorial into memory
	j exit					# jump to end to exit

factorial:
	addi $sp, $sp, -8     			# make room on the stack
	sw $a1, 4($sp)         			# store $a1
	sw $ra, 0($sp)         			# store $ra
	

    # your code goes in here
	slti $a2, $a1, 2			# check if call recursive
	beq $a2, $0, else			# branch to else
	addi $v0, $s0, 1			# return 1 if base case
	addi $sp, $sp, 8			# add 8 to stack
	jr $ra					# returns
			
else:	subi $a1, $a1, 1			# decrement n
	jal factorial				# call self
	lw $a1, 4($sp)				# moves functions value of n to $a1
	lw $ra, 0($sp)				# moves fuctions ra from stack to $ra
	addi $sp, $sp, 8			# add 8 to stack
	mult $a1, $v0				# factorial multiplication
	mflo $v0				# moves result into $v0
	jr $ra					# returns

exit:
