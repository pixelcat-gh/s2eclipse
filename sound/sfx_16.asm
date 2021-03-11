sfx_16_bin:     ; $BD8D
.dw $8A2F
.db $01        ; num channels
.db $01        ; actual number of channels
.db $80
.db $A0

sfx_16_bin_Channel0_Header:     ; $BD93
.dw sfx_16_bin_Channel0
.db $00        ; pitch adjustment
.db $00        ; volume adjustment
sfx_16_bin_Channel0:
    VolumeEnvelope $03
    .db $94    ; G4
    .db $04
    .db $80
    .db $01
    PitchBend $01 $01 $F4 $01
    VolumeEnvelope $08
sfx_16_bin_LABEL_BDB4:
    .db $9D    ; E5
    .db $04
    AdjustVolume  4
    Rest
    .db $04
    Loop $00 $03 sfx_16_bin_LABEL_BDB4
    Stop

