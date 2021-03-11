music_boom_Channel0:
    VolumeEnvelope  1

Music_boom_0_Start:
    AdjustVolume    $8
    Music_boom_0_Intro_Loop:
    nC7
    .db 1
    nB6
    nC7
    nB6
    Loop 0, $3, Music_boom_0_Intro_Loop
    AdjustVolume -1
    Loop 1, $8, Music_boom_0_Intro_Loop
    PitchBend $10, $01, $FE, $03

    Music_boom_0_MainLoop:
    nEb5 
    .db 3
    AdjustVolume    3
    nEb5
    AdjustVolume    -3
    nC5
    AdjustVolume    3
    nC5
    AdjustVolume    -3
    nC5
    AdjustVolume    3
    nC5
    AdjustVolume    -3
    nEb5
    AdjustVolume    3
    nEb5
    AdjustVolume    -3
    nC5
    AdjustVolume    3
    nC5
    AdjustVolume    -3
    nC5
    AdjustVolume    3
    nC5
    AdjustVolume    -3
    nF5
    AdjustVolume    3
    nF5
    AdjustVolume    -3
    nC5
    AdjustVolume    3
    nC5
    AdjustVolume    -3
    Loop 0, $8, Music_boom_0_MainLoop
    Music_boom_0_Loop1:
    nF6
    .db $06
    nC6
    Loop 0, $7, Music_boom_0_Loop1
    nF6
    VolumeEnvelope  6
    nAb5, 
    .db $0C
    nG5
    nF5
    nEb5
    nC5
    .db $12
    Rest
    .db $06
    nC5
    .db $03
    Rest
    .db $03
    nC5
    .db $06
    Rest
    nEb5
    nBb4
    Rest
    nBb4
    .db $42
    Rest
    .db $18
    AdjustVolume    -3
    nAb5
    .db $1E
    nG5
    .db $06
    nF5
    .db $03
    Rest
    nF5
    .db $0C
    Branch Music_boom_0_Branch1
    AdjustVolume    3
    Branch Music_boom_0_Branch1
    AdjustVolume    3
    Branch Music_boom_0_Branch1
    AdjustVolume    -6
    nC5
    .db $06
    nEb5
    .db $0C
    nF5
    .db $12
    Rest
    .db $0C
    nC5
    .db $06
    nAb5
    .db $0C
    nF5
    .db $12
    Branch Music_boom_0_Branch1
    AdjustVolume    3
    Branch Music_boom_0_Branch1
    nF5
    .db $06
    nAb5
    .db $0C
    nC6
    nCs6
    nEb6
    nC6
    nAb5
    .db $12
    Rest
    .db $06
    nG5
    .db $03
    Rest
    nG5
    .db $06
    Rest
    nG5
    nG5
    Rest
    nAb5
    .db $42
    AdjustVolume    -3
    Branch Music_boom_0_Branch1
    AdjustVolume    3
    Branch Music_boom_0_Branch1
    AdjustVolume    3
    Branch Music_boom_0_Branch1
    Rest
    .db $06
    AdjustVolume    -6
    nG5
    .db $03
    Rest
    nG5
    Rest
    .db $09
    nG5
    .db $03
    Rest
    .db $09
    nAb5
    .db $03
    Rest
    .db $09
    nG5
    .db $03
    Rest
    nEb6
    Rest
    nEb6
    Rest
    .db $09
    nEb6
    .db $0C
    nD6
    .db $06
    nC6
    nBb5
    Rest
    .db $18
    nF5
    .db $06
    nG5
    .db $0C
    nAb5
    .db $1E
    AdjustVolume    3
    nF5
    .db $03
    Rest
    nF5
    Rest
    .db $09
    nEb5
    .db $30
    nC5
    .db $1E
    nC5
    .db $03
    Rest
    nEb5
    .db $06
    Rest
    nF5
    .db $1B
    Rest
    .db $03
    AdjustVolume    -3
    nF5
    .db $06
    nG5
    .db $0C
    nAb5
    .db $1E
    AdjustVolume    3
    nC6
    .db $03
    Rest
    nC6
    .db $06
    Rest
    nBb5
    .db $1E
    nBb5
    .db $06
    nC6
    nBb5
    nAb5
    .db $12
    Music_boom_0_Loop2:
    nAb5
    .db $02
    nG5
    nFs5
    .db $01
    nF5
    Loop 0, $4, Music_boom_0_Loop2

    Rest
    .db $C

    VolumeEnvelope  1
    Jump Music_boom_0_MainLoop

    Music_boom_0_Branch1:
    nE5
    .db $02
    nEb5
    nD5
    .db $01
    nCs5
    Return