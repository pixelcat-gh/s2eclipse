.db Object_Monitor
    .dw $00FA       ; xpos
    .dw $00FA       ; ypos
    .db $00         ; flags
    .db $07         ; params
    .db $00, $00    ; char codes
.db $37
    .dw $04EA       ; xpos
    .dw $0095       ; ypos
    .db $00         ; flags
    .db $00         ; params
    .db $92, $8A    ; char codes
.db Object_Monitor
    .dw $058D       ; xpos
    .dw $018E       ; ypos
    .db $00         ; flags
    .db $02         ; params
    .db $00, $00    ; char codes
.db Object_Motobug
    .dw $0614       ; xpos
    .dw $0074       ; ypos
    .db $00         ; flags
    .db $00         ; params
    .db $6A, $7A    ; char codes
.db Object_Crab
    .dw $076F
    .dw $00B4
    .db $00
    .db $00
    .db $A6, $00
.db Object_Monitor
    .dw $0870       ; xpos
    .dw $0050       ; ypos
    .db $00         ; flags
    .db $05         ; params
    .db $00, $00    ; char codes
.db $20
    .dw $07F0
    .dw $01A0
    .db $00
    .db $00
    .db $62, $62
.db Object_Signpost
    .dw $1F80
    .dw $016E
    .db $00
    .db $00
    .db $62, $62
.db $FF     ; end of object layout
