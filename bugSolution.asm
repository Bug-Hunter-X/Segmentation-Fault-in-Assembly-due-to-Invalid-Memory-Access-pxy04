section .data
    myArray dd 10, 20, 30, 40 ; Example array
    arraySize equ ($ - myArray) / 4 ; Calculate the size of the array

section .bss
    result resd 1

section .text
    global _start

_start:
    mov ecx, 0 ; Initialize index

loopStart:
    cmp ecx, arraySize ; Check if the index is within bounds
    jge loopEnd ; If index is out of bounds, jump to loopEnd

    mov ebx, myArray ; Load the base address of the array
    mov eax, [ebx + ecx * 4] ; Access the array element safely

    ; Process the array element (example)
    add eax, 10
    mov [result], eax

    inc ecx ; Increment index
    jmp loopStart ; Continue to the next element

loopEnd:
    ; Exit the program
    mov eax, 1
    xor ebx, ebx
    int 0x80