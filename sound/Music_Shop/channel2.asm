music_shop_Channel2:
    VolumeEnvelope  0
    Rest
    .db 12
Music_shop_2_Start:

    Branch Music_shop_2_Branch0
    Rest
    .db $06
    A3
    .db $03
    Rest
    .db $06
    Loop    0, 3, Music_shop_2_Start

    E3
    .db $0C
    C3
    .db $06
    F3
    .db $0C
    C3
    .db $06
    E3
    .db $0C

    Jump Music_shop_2_Start

    Music_shop_2_Branch0:
    A3
    .db $03
    Rest
    A3
    Rest
    .db $09
    ADSREnvelope $FF,4,3,1,$30
    AdjustVolume          8
    A6
    .db $03
    AdjustVolume          -2
    A6
    AdjustVolume          -2
    A6
    AdjustVolume          -2
    A6
    AdjustVolume          -2
    A3
    ADSREnvelope $60,4,3,1,$20
    Return