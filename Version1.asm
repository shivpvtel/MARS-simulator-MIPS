# Version 1, do nothing, then exit
# switch to the text segment
.text
.globl main
main: 
# the rest of the main program will go here
# end of the program, no explicit return status
li $v0, 10
syscall
# switch to the data segment
.data
#global data will be defined here
