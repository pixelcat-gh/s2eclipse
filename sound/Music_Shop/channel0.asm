music_shop_Channel0:
    VolumeEnvelope  0
    Rest
    .db 12

Music_shop_0_Start:
    PitchBend          $0E, $01, $04, $04
    Branch Music_shop_0_Branch0
    B4
    .db 5
    Gs4
    .db 1
    Loop 0, 2, Music_shop_0_Start
    Branch Music_shop_0_Branch0
    D5
    B4
    .db $12
    Gs4
    C5
    .db 6
    B4
    Jump Music_shop_0_Start
    
    Music_shop_0_Branch0:
    A4
    .db 6
    AdjustVolume  4
    A4
    AdjustVolume  -4
    E4
    AdjustVolume  4
    E4
    AdjustVolume  -4
    A4
    AdjustVolume  4
    A4
    AdjustVolume  -4
    C5
    Return