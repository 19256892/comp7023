; Define maximum lengths as constants
MAX_NAME_LENGTH equ 64

; Data segment for variables
data segment

; Define sett locations as strings
Settfield db 'Settfield', 0
Badgerton db 'Badgerton', 0
Stripeville db 'Stripeville', 0

; Define departments as strings
ParkKeeper db 'Park Keeper', 0
GiftShop db 'Gift Shop', 0
Cafe db 'Cafe', 0

; Define the Badger record as consecutive data
BadgerRecord db 'b000001', 0               ; Badger ID, null-terminated string
                db 'BadgerName', 0          ; Badger Name, null-terminated string
                dw Settfield                ; Pointer to Home Sett, 16-bit address
                db 100                      ; Mass in kg
                db 10                       ; Number of stripes
                db 'M', 0                   ; Sex, null-terminated string
                db 1                        ; Month of birth
                dw 2017                     ; Year of birth
                db 'p0000001', 0            ; Staff ID, null-terminated string

; Define the Staff record as consecutive data
StaffRecord db 'Doe', 0                     ; Surname, null-terminated string
               db 'John', 0                 ; First Name, null-terminated string
               db 'p0000001', 0             ; Staff ID, null-terminated string
               dw ParkKeeper                ; Pointer to Department, 16-bit address
               dw 25000                     ; Starting annual salary
               dw 2021                      ; Year of joining
               db 'johndoe@jnz.co.uk', 0    ; Email address, null-terminated string

data ends

; Code segment for the instructions
code segment

start:

; The actual program logic goes here

; To exit the program in EMU8086, we'll just enter an infinite loop
; because EMU8086 does not support the 'exit' system call
hang:
    jmp hang

code ends

end start ; End of the program and set 'start' as the entry point
