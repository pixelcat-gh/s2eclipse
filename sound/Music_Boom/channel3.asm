music_boom_Channel3:

    .db $E4
    .db $C
music_boom_3_IntroLoop:
    .db $91         ;long
    .db $02
    .db $91         ;long
    .db $91         ;long
    .db $91         ;long
    .db $E4
    .db -1
    Loop 0, $C, music_boom_3_IntroLoop

Music_boom_3_Start:

    Branch          Music_boom_3_Drum1
    Branch          Music_boom_3_Drum2

    .db $90

    Branch          Music_boom_3_Drum1
    Branch          Music_boom_3_Drum2

    .db $90
    .db $03
    .db $82
    Jump Music_boom_3_Start
    Music_boom_3_Drum1:
    .db $8C         ;long
    .db $06
    .db $81         ;short
    .db $82
    .db $81         ;short
    .db $8C         ;long
    .db $8C         ;long
    .db $82
    .db $81         ;short
    Return
    Music_boom_3_Drum2:
    .db $8C         ;long
    .db $81         ;short
    .db $82
    .db $81         ;short
    .db $8C         ;long
    .db $8C         ;long
    .db $82
    Return