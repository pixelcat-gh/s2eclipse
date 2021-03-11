music_shop_Channel1:
    VolumeEnvelope  0
Music_shop_1_Start:
    Rest 
    .db 12
Music_shop_1_Loop1:
    A7
    .db 1
    A6
    AdjustVolume 2
    Loop 0, 6, Music_shop_1_Loop1
    AdjustVolume -14
Music_shop_1_MainLoop:
    NoteStop 3
    Branch Music_shop_1_branch0
    Loop    0, 6, Music_shop_1_MainLoop
    E3
    .db 18
    .db 6
    NoteStop 0
    VolumeEnvelope  6
    E5
    .db 6
    F5
    E5
    .db 18
    B4
    .db 12
    E4
    .db 6
    E5
    D5
    Rest 
    .db 12
    VolumeEnvelope  0
    Jump Music_shop_1_MainLoop

    Music_shop_1_branch0:
    E3
    .db 18

    .db 12

    .db 18
    Return