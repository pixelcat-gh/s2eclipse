music_shop_Channel3:
    .db $E4     ; start volume for noise
    .db $6
Music_shop_3_Start:
    .db $81
    .db $1
    .db $81
    .db $E4
    .db -1
    Loop 0, 6, Music_shop_3_Start
    Music_shop_3_MainLoop:
    Rest
    .db $0C
    .db $8C
    .db $06
    .db $81
    .db $0C
    .db $8C
    .db $06
    .db $81
    .db $8C
    .db $03
    .db $81
    Jump Music_shop_3_MainLoop


