; Yatzy/Yahtzee clone for the Commodore 64
; Copyright 2017-2018 Risto Tiainen (rjtiainen@hotmail.com)
; Licensed under the Gnu General Public License Version 3 (GPLv3)

	processor 6502

; -----------------------------------------------------------------------------
; Addresses
; -----------------------------------------------------------------------------

; TODO: These are copypaste from an earlier project, add and modify as required. 
; Could be worthwile to move them to separate header files

; VIC-II
VIC_BASE        equ $D000   ; VIC-II base address
VIC_OS_X0       equ 0       ; Offset to X coordinate of sprite 0
VIC_OS_Y0       equ 1       ; Offset to Y coordinate of sprite 0
VIC_OS_X1       equ 2       ; Offset to X coordinate of sprite 1
VIC_OS_Y1       equ 3       ; Offset to Y coordinate of sprite 1
VIC_OS_EXTX     equ $1D     ; Horizontal expand register
VIC_OS_EXTY     equ $17     ; Same thing, for the other direction
VIC_OS_POS_MSB  equ 16      ; MSBit register for X coordinates
VIC_OS_ENA      equ 21      ; Sprite enable
VIC_OS_CLR0     equ 39      ; Color of sprite 0
VIC_OS_CLR1     equ 40      ; Color of sprite 1

SPRITE_DATA     equ $0340   ; Start of sprite data

; -----------------------------------------------------------------------------
; Variables
; -----------------------------------------------------------------------------

; TODO Placeholder data from an earlier project

posx0       equ 300
posy0       equ 100
posx1       equ 300
posy1       equ 130

color		equ $FF		

; -----------------------------------------------------------------------------
; BASIC loader
; SYS + start address
; -----------------------------------------------------------------------------
	org $0801
	word 0$	                    ; Link to the next line
	word 2018                   ; Line number
	byte $9E                    ; SYS token
	.if (main) / 10000
	byte $30 + (main) / 10000
	.endif
	.if (main) / 1000
	byte $30 + (main) % 10000 / 1000
	.endif
	.if (main) / 100
	byte $30 + (main) % 1000 / 100
	.endif
	.if (main) / 10
	byte $30 + (main) % 100 / 10
	.endif
	byte $30 + (main) % 10
0$:
	byte 0,0,0 	

; -----------------------------------------------------------------------------
; Program entry point
; -----------------------------------------------------------------------------

main:
; TODO Main SW loop 
	rts

; -----------------------------------------------------------------------------
; Arrays
; -----------------------------------------------------------------------------


