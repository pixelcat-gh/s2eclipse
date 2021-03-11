music_gameover_bin:
.dw $8A2F
.db $04        ;num channels
.db $00
.db $02
.db $05

music_gameover_bin_Channel0_Header:
.dw music_gameover_bin_Channel0
.db $FF        ; pitch adjustment
.db $03        ; volume adjustment

music_gameover_bin_Channel1_Header:
.dw music_gameover_bin_Channel0
.db $FF        ; pitch adjustment
.db $03        ; volume adjustment

music_gameover_bin_Channel2_Header:
.dw music_gameover_bin_Channel2
.db $FF        ; pitch adjustment
.db $09        ; volume adjustment

music_gameover_bin_Channel3_Header:
.dw music_gameover_bin_Channel3
.db $00        ; pitch adjustment
.db $00        ; volume adjustment
music_gameover_bin_Channel1:
    nRst
    .db $01
    PitchAdjust     -12

music_gameover_bin_Channel0:
    VolumeEnvelope  4

    nD4
    .db $02
    nRst
    nD4
    .db $01
    nRst

    Branch  music_sans

    nC4
    .db $02
    nRst
    nC4
    .db $01
    nRst

    Branch music_sans

    nB3
    .db $02
    nRst
    nB3
    .db $01
    nRst

    Branch music_sans


    nBb3
    .db $02
    nRst
    nBb3
    .db $01
    nRst
    Branch music_sans

    Jump  music_gameover_bin_Channel0
    music_sans:
    nD5
    .db $02
    nRst
    .db $04 
    nA4, 
    .db $03, 
    nRst, 
    .db $06, 
    nAb4, 
    .db $03, 
    nRst
    nG4
    nRst  
    nF4, 
    .db $06
    nD4, 
    .db $01
    nRst
    nF4 
    .db $02
    nRst
    nG4
    .db $01
    nRst
    Return
    music_gameover_bin_Channel3:
    .db $90
    .db $02
    Stop
    music_gameover_bin_Channel2:
    nRst
    .db $08
    Jump  music_gameover_bin_Channel0   
