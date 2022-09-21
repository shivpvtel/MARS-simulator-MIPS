#version 2, do nothing, then xit
# switch to the Textsegment 
.text
.globl main
main:
	#the rest of the main porgram will go here
	#call function Exit0
	jal Exit0 #end the program, defualt return status

#--------------------------------------------------------

#switch to the data segment
.data
#global data will be defined here

#--------------------------------------------------------

#Wrapper functions around some of the system call
#switch to text segments
.text
	.globl Print_integer
Print_integer: #print the integers in register $a0
	li $v0,1
	syscall
	jr $ra
	.globl Print_string
	
Print_string: #rpint the string whoese starting address is in register $a0
	li $v0, 4
	syscall
	jr $ra

	.globl Exit
Exit: #end the program. no explicit return status
	li $v0, 10
	syscall
	jr $ra #this is never executed

	.globl Exit0
Exit0:	#ends the progem, defualte return status 
	li $a0, 0 #return status 0
	li $v0, 17 
	syscall
	jr $ra	#instruction is never executed

	.globl Exit2
Exit2: #end the program, with return status from register $a0
	li $v0, 17
	syscall
	jr $ra	#this instruction is never executed

#--------------------------------------------------------




















# Version 1, do nothing, then exit
# switch to the text segment
#.text
#.globl main
#main: 
# the rest of the main program will go here
# end of the program, no explicit return status
#li $v0, 10
#syscall
# switch to the data segment
#.data
#global data will be defined here
