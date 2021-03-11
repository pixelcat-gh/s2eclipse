.macro Sound_IsChannelActive
	bit  Sound_ChannelActiveBit, (ix + Sound_ChnlControl)
.endm


.macro Rest
    .db $80
.endm

.macro nRst
    .db $80
.endm

.macro ADSREnvelope
    .db $E0, \1, \2, \3, \4, \5
.endm

.macro Detune
    .db $E1, \1
.endm


.macro AdjustVolume
    .db $E6, \1
.endm


.macro RepeatLast
    .db $E7, \1
.endm

.macro NoteStop
    .db $E8, \1
.endm

.macro SetGlblSpeed
    .db $ED, \1
.endm


.macro PitchBend
    .db $F0, \1, \2, \3, \4 ; wait, speed, cps, count
.endm

.macro Stop
    .db $F2
.endm

.macro PitchEnvelope       ;VolumeEffect
    .db $F4, \1
.endm

.macro VolumeEnvelope       ;VolumeEffect
    .db $F5, \1
.endm


.macro Jump
    .db $F6
    .dw \1
.endm


.macro Loop
    .db $F7
    .db \1      ; slot
    .db \2      ; loop count
    .dw \3      ; location
.endm


.macro Branch
    .db $F8
    .dw \1
.endm


.macro Return
    .db $F9
.endm


.macro SetChnlSpeed
    .db $FA, \1
.endm


.macro PitchAdjust
    .db $FB, \1
.endm


.macro ReadLiteral
    .db $FD, \1
.endm


.macro ReadLiteral_On
    .db $FD, 1
.endm


.macro ReadLiteral_Off
    .db $FD, 0
.endm
