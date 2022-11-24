
.section .init0 // Places code at the top of programme memory

.include "include/individual.S" // Include individualised programme code 

entry:
    
    // Ex E2.1
    // 
    // The code included above pushes a number of unsigned 8-bit integers
    // onto the stack. Write assembly code to add the 8 values on top of the
    // stack together, and store the result in register pair r31:r30.
    //
    // NOTE: r8-r12 are reserved for use later in this programme; do not
    // use these registers in this exercise.


    // Write your code for Ex E2.1 above this line.
    push r30
    push r31



    // Ex E2.2
    // 
    // Write assembly code to add the following two unsigned 64-bit integers, 
    // and store the result in r7:r6:r5:r4:r3:r2:r1:r0 (lowest byte in r0):
    // 0x7A20A2E59F046361
    // 0x3D4E53627AE8F9CF
    //
    // NOTE: r8-r12 are reserved for use later in this programme; do not
    // use these registers in this exercise.
    

    // Write your code for Ex E2.2 above this line.
    push r0
    push r1
    push r2
    push r3
    push r4
    push r5
    push r6
    push r7



    // Ex E2.3
    // 
    // Registers r11:r10:r9:r8 currently hold a 32-bit signed integer in
    // two's complement format (lowest byte in r8). Write assembly code to 
    // perform an arithmetic right shift by 6 positions on this integer. 
    // The result should be stored in the same four registers.
    //
    // NOTE: r12 is reserved for use later in this programme; do not
    // use this register in this exercise.


    // Write your code for Ex E2.3 above this line.
    push r8
    push r9
    push r10
    push r11



    // Ex E2.4
    // 
    // Register r12 currently holds an 8-bit unsigned integer. Write assembly
    // code to divide the value currently in r12 by 3.2 and store
    // the result in r13.


    // Write your code for Ex E2.4 above this line.
    push r13


// END OF EXTENSION02 EXERCISES //
// DO NOT EDIT BELOW THIS LINE //

    break   // Terminate here for autograder

    // Restore r1 before we call and C functions
    ldi r16, 0
    mov r1, r16

    // Lets set the display into a known state so we can easily
    // confirm that our programme successfully gets to this point
    call display_raw_init
    ldi r24, 0x77
    call display_raw

loop:
