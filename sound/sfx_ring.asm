sfx_ring_bin:
.dw $8A2F
.db $01        ;num channels
.db $01
.db $80
.db $A0

sfx_ring_bin_Channel0_Header:
.dw sfx_ring_bin_Channel0
.db $FF       ; pitch adjustment
.db $00        ; volume adjustment

sfx_ring_bin_Channel0:
.db $F5         ; set volume envelope
    .db $08
;.db $F0         ; pitch bend
 ;   .db $01         ; on first tick
 ;   .db $01         ; with each tick
 ;   .db $FF         ; step -1
 ;   .db $04         ; 4 steps deep
sfx_ring_bin_LABEL_BAFB:
.db $A9    
    .db $03
.db $AC    
.db $b1    
    .db $10
;.db $E6         ; adjust volume attenuation
;    .db $02
;.db $F7         ; loop 7 times
 ;   .db $00
 ;   .db $02
  ;  .dw sfx_ring_bin_LABEL_BAFB
.db $F2

