;**********************************
;*	Variables
;**********************************
.def	CursorPos	$D2C2
.def	HoldTime	$D46A	;keep a track of how long up/down buttons are held

LevelSelectMenu:
LABEL_A2C:
	di
	call LevelSelect_LoadFont
    call Engine_ClearLevelAttributes
    call Engine_ClearWorkingVRAM
    call VDP_ClearScreen
    ld   a, $01					;tile attributes
    ld   ($D2C7), a
    ld   hl, $3848				;VRAM destination
    ld   de, LevelSelect_Title	;source data
    ld   bc, LevelSelect_DrawEntry1 - LevelSelect_Title	;char count
    call VDP_DrawText
	jr   LevelSelect_DrawEntry1

LevelSelect_Title:
.db "                        "

LevelSelect_DrawEntry1:
	ld   a, $01
	ld   ($D2C7), a
	ld   hl, $3888
	ld   de, LevelSelect_Entry1
	ld   bc, LevelSelect_DrawEntry2 - LevelSelect_Entry1
	call VDP_DrawText
	jr   LevelSelect_DrawEntry2

LevelSelect_Entry1:
.db "WELCOME TO              "

LevelSelect_DrawEntry2:
	ld   a, $01
	ld   ($D2C7), a
	ld   hl, $38C8
	ld   de, LevelSelect_Entry2
	ld   bc, LevelSelect_DrawEntry3 - LevelSelect_Entry2
	call VDP_DrawText
	jr   LevelSelect_DrawEntry3
	
LevelSelect_Entry2:
.db "                        "

LevelSelect_DrawEntry3:
	ld   a, $01
	ld   ($D2C7), a
	ld   hl, $3908
	ld   de, LevelSelect_Entry3
	ld   bc, LevelSelect_DrawEntry4 - LevelSelect_Entry3
	call VDP_DrawText
	jr   LevelSelect_DrawEntry4
	
LevelSelect_Entry3:
.db "**SONIC ECLIPSE**       "

LevelSelect_DrawEntry4:
	ld   a, $01
	ld   ($D2C7), a
	ld   hl, $3948
	ld   de, LevelSelect_Entry4
	ld   bc, LevelSelect_DrawEntry5 - LevelSelect_Entry4
	call VDP_DrawText
	jr   LevelSelect_DrawEntry5
	
LevelSelect_Entry4:
.db "                        "

LevelSelect_DrawEntry5:
	ld   a, $01
	ld   ($D2C7), a
	ld   hl, $3988
	ld   de, LevelSelect_Entry5
	ld   bc, LevelSelect_DrawEntry6 - LevelSelect_Entry5
	call VDP_DrawText
	jr   LevelSelect_DrawEntry6
	
LevelSelect_Entry5:
.db "SHC 2018 DEMO           "

LevelSelect_DrawEntry6:
	ld   a, $01
	ld   ($D2C7), a
	ld   hl, $39C8
	ld   de, LevelSelect_Entry6
	ld   bc, LevelSelect_DrawEntry7 - LevelSelect_Entry6
	call VDP_DrawText
	jr   LevelSelect_DrawEntry7

LevelSelect_Entry6:
.db "                        "

LevelSelect_DrawEntry7
	ld   a, $01
	ld   ($D2C7), a
	ld   hl, $3A08
	ld   de, LevelSelect_Entry7
	ld   bc, LevelSelect_DrawEntry8 - LevelSelect_Entry7
	call VDP_DrawText
	jr   LevelSelect_DrawEntry8

LevelSelect_Entry7:
.db "--------------          "

LevelSelect_DrawEntry8:
	ld   a, $01
	ld   ($D2C7), a
	ld   hl, $3A48
	ld   de, LevelSelect_Entry8
	ld   bc, LevelSelect_DrawEntry9 - LevelSelect_Entry8
	call VDP_DrawText
	jr   LevelSelect_DrawEntry9

LevelSelect_Entry8:
.db "                        "

LevelSelect_DrawEntry9:
	ld   a, $01
	ld   ($D2C7), a
	ld   hl, $3A88
	ld   de, LevelSelect_Entry9
	ld   bc, LevelSelect_DrawEntry10 - LevelSelect_Entry9
	call VDP_DrawText
	jr   LevelSelect_DrawEntry10

LevelSelect_Entry9:
.db "BY MR.CAT, YOSHISTER AND"

LevelSelect_DrawEntry10:
	ld   a, $01
	ld   ($D2C7), a
	ld   hl, $3AC8
	ld   de, LevelSelect_Entry10
	ld   bc, LevelSelect_DrawEntry11 - LevelSelect_Entry10
	call VDP_DrawText
	jr   LevelSelect_DrawEntry11
	
LevelSelect_Entry10:
.db "                        "

LevelSelect_DrawEntry11:
	ld   a, $01
	ld   ($D2C7), a
	ld   hl, $3B08
	ld   de, LevelSelect_Entry11
	ld   bc, LevelSelect_DrawEntry12 - LevelSelect_Entry11
	call VDP_DrawText
	jr   LevelSelect_DrawEntry12
	
LevelSelect_Entry11:
.db "VADAPEGA                "

LevelSelect_DrawEntry12:
	ld   a, $01
	ld   ($D2C7), a
	ld   hl, $3B48
	ld   de, LevelSelect_Entry12
	ld   bc, LevelSelect_DrawEntry13 - LevelSelect_Entry12
	call VDP_DrawText
	jr   LevelSelect_DrawEntry13

LevelSelect_Entry12:
.db "                        "

LevelSelect_DrawEntry13:
	ld   a, $01
	ld   ($D2C7), a
	ld   hl, $3B88
	ld   de, LevelSelect_Entry13
	ld   bc, LevelSelect_DrawEntry14 - LevelSelect_Entry13
	call VDP_DrawText
	jr   LevelSelect_DrawEntry14
	
LevelSelect_Entry13;
.db "WE HOPE YOU ENJOY IT    "

LevelSelect_DrawEntry14:
	ld   a, $01
	ld   ($D2C7), a
	ld   hl, $3BC8
	ld   de, LevelSelect_Entry14
	ld   bc, LevelSelect_DrawEntry15 - LevelSelect_Entry14
	call VDP_DrawText
	jr   LevelSelect_DrawEntry15
	
LevelSelect_Entry14:
.db "                        "

LevelSelect_DrawEntry15:
	ld   a, $01
	ld   ($D2C7), a
	ld   hl, $3C08
	ld   de, LevelSelect_Entry15
	ld   bc, LevelSelect_DrawEntry16 - LevelSelect_Entry15
	call VDP_DrawText
	jr   LevelSelect_DrawEntry16
	
LevelSelect_Entry15:
.db "--------------          "

LevelSelect_DrawEntry16:
	ld   a, $01
	ld   ($D2C7), a
	ld   hl, $3C48
	ld   de, LevelSelect_Entry16
	ld   bc, LevelSelect_DrawEntry17 - LevelSelect_Entry16
	call VDP_DrawText
	jr   LevelSelect_DrawEntry17
	
LevelSelect_Entry16:
.db "                        "

LevelSelect_DrawEntry17:
	ld   a, $01
	ld   ($D2C7), a
	ld   hl, $3C88
	ld   de, LevelSelect_Entry17
	ld   bc, LevelSelect_DrawEntry18 - LevelSelect_Entry17
	call VDP_DrawText
	jr   LevelSelect_DrawEntry18
	
LevelSelect_Entry17:
.db "PRESS 1 OR 2 TO START   "

LevelSelect_DrawEntry18:
	ld   a, $01
	ld   ($D2C7), a
	ld   hl, $3CC8
	ld   de, LevelSelect_Entry18
	ld   bc, LevelSelect_DrawEntry19 - LevelSelect_Entry18
	call VDP_DrawText
	jr   LevelSelect_DrawEntry19
	
LevelSelect_Entry18:
.db "                        "

LevelSelect_DrawEntry19:
	ld   a, $01
	ld   ($D2C7), a
	ld   hl, $3D08
	ld   de, LevelSelect_Entry19
	ld   bc, LevelSelect_DrawEntry20 - LevelSelect_Entry19
	call VDP_DrawText
	jr   LevelSelect_DrawEntry20

LevelSelect_Entry19:
.db "WHICHEVER ONE SUITS YOU "

LevelSelect_DrawEntry20:
	ld   a, $01
	ld   ($D2C7), a
	ld   hl, $3D48
	ld   de, LevelSelect_Entry20
	ld   bc, LevelSelect_DrawEntry21 - LevelSelect_Entry20
	call VDP_DrawText
	jr   LevelSelect_DrawEntry21

LevelSelect_Entry20:
.db "BEST                    "

LevelSelect_DrawEntry21:
	ld   a, $01
	ld   ($D2C7), a
	ld   hl, $3D88
	ld   de, LevelSelect_Entry21
	ld   bc, LevelSelect_DrawEntry22 - LevelSelect_Entry21
	call VDP_DrawText
	jr   LevelSelect_DrawEntry22
	
LevelSelect_Entry21:
.db "                        "

LevelSelect_DrawEntry22:
	ld   hl, $D4E6
	ld   (hl), $00
	set  7, (hl)
	inc  hl
	ld   (hl), $02
	ld   hl, $D4E8
	ld   (hl), $00
	set  7, (hl)
	inc  hl
	ld   (hl), $02
	ei
	ld   a, $04  ;DEFAULT POSITION
	ld   (CursorPos), a
	call LevelSelect_MainLoop
	ld   a, (CursorPos)
	add  a, a
	ld   e, a
	ld   d, $00
	ld   hl, LevelSelect_Values
	add  hl, de
	ld   a, (hl)
	ld   (CurrentLevel), a
	inc  hl
	ld   a, (hl)
	ld   (CurrentAct), a
	ret

LevelSelect_Values:
.db $00, $00	; 
.db $00, $00	; 
.db $00, $00	; 
.db $00, $00	; 
.db $00, $00	;c. coast
.db $00, $00	;
.db $00, $00	;
.db $00, $00	;n. streak
.db $00, $00	;
.db $00, $00	;
.db $00, $00	;d. gate
.db $00, $00	;
.db $00, $00	;
.db $00, $00	;d. stadium
.db $00, $00	;
.db $00, $00	;
.db $00, $00	;le finale
.db $00, $00	; 
.db $00, $00	; 
.db $00, $00	; 
.db $00, $00	; 

LevelSelect_MainLoop:	;0E46
	call Engine_WaitForInterrupt
	call _CheckInput
	call _DrawCursor
	ld   a, ($D147)
	bit  5, a		;defaults to only allow button 2 on the menu
	and	 $30	;PATCH: enable both button 1 and 2 on the menu
	jr   z, LevelSelect_MainLoop
	ld   a, $FF
	ld   ($D294), a
	ret

_CheckInput:	;$0E5C
	ld   a, ($D147)
	bit  0, a
	jr   nz, _MoveCursorUp
	bit  1, a
	jr   nz, _MoveCursorDown
	ld   a, ($D137)
	and  $03						;check to see if up/down buttons are held
	jr   z, _ResetCursorVelocity	;nothing held - reset cursor velocity
	ld   a, (HoldTime)
	inc  a
	ld   (HoldTime), a
	cp   $28
	ret  c							;cap cursor velocity at $27
	ld   a, $26
	ld   (HoldTime), a
	ld   a, ($D137)
	bit  0, a
	jr   nz, _MoveCursorUp
	bit  1, a
	jr   nz, _MoveCursorDown
	ret

_ResetCursorVelocity:	;$0E89
	xor  a
	ld   (HoldTime), a
	ret

_MoveCursorUp:
	ld   a, (CursorPos)
	cp   $05 ;MRCAT -- the top boundary for the cursor
	ret  c
	dec  a
	ld   (CursorPos), a
	ret

_MoveCursorDown:
	ld   a, (CursorPos)
	cp   $11 ;MRCAT -- the bottom boundary for the cursor
	ret  nc
	inc  a
	ld   (CursorPos), a
	ret

_DrawCursor:
	ld   a, (CursorPos)
	ld   l, a				;calculate VRAM address
	ld   h, $00
	add  hl, hl
	add  hl, hl
	add  hl, hl
	add  hl, hl
	add  hl, hl
	add  hl, hl
	ld   de, $3878
	add  hl, de
	ld   de, _TileMappings	;source
	ld   bc, $0301			;rows/cols
	call Engine_LoadCardMappings	;copy to VRAM
	ret

_TileMappings:
;.db $00, $01, $3C, $01, $00, $01
.dw $0100	;tile used above the cursor
.dw $0100	;tile used for the cursor
.dw $0100	;tile used below the cursor
