# Segmentation Fault in Assembly due to Invalid Memory Access

This repository demonstrates a common assembly language error that leads to a segmentation fault. The error is caused by an attempt to access memory at an invalid address using the `mov` instruction.  This example showcases how to identify and fix this type of error.

## Bug Description

The `bug.asm` file contains assembly code that attempts to access memory using the `mov eax, [ebx+ecx*4]` instruction. This instruction is susceptible to causing a segmentation fault if the calculated address falls outside the process's allocated memory space.  The potential causes include incorrect register values or an invalid base address.

## Solution

The `bugSolution.asm` file provides a corrected version of the code.  The solution involves adding boundary checks to ensure that the calculated address is valid before attempting memory access.