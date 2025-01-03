mov ecx, array_size ; Load the size of the array into ecx
mov eax, esi ; Copy esi to eax for comparison
cmp eax, ecx ; compare the index in eax with the array size in ecx
jge overflow_handler ; Jump to overflow handler if index is out of bounds
mov eax, [ebx+esi*4+0x10] ; Access memory only if index is valid

; ... rest of the code ...

overflow_handler:
; Handle the overflow error appropriately (e.g., return an error code, exit the program)
mov eax, -1 ; Return error code
ret