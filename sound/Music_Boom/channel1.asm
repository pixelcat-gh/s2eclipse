music_boom_Channel1:
    VolumeEnvelope  0

Music_boom_1_Start:  
    ADSREnvelope 06,00,0,0,6
    PitchBend $10, $03, $F4, $50
    nD3
    .db $60
    PitchBend $10, $01, $02, $02
    ADSREnvelope $FF,02,2,1,$30

    Music_boom_1_MainLoop:
    Branch Music_boom_1_Branch0
    nBb6
    .db $0C
    nA6
    .db $06
    nG6
    nRst
    nF6
    .db $0c
    nRst
    .db $06
    Branch Music_boom_1_Branch0

    Music_boom_1_Loop1:
    Branch Music_boom_1_Branch0_0
    AdjustVolume    2
    Loop 1, 2, Music_boom_1_Loop1
    AdjustVolume    -4

    nC5
    .db $06
    nEb5
    .db $0C
    nF5
    .db $12
    nRst
    .db $0B
    nCs5
    .db $01

    nC5
    .db $06
    nEb5
    .db $0C
    nF5
    .db $12
    nRst
    .db $0B
    nCs5
    .db $01

    nC5
    .db $06
    nEb5
    .db $0B
    nG5
    .db $01
    nAb5
    .db $0C
    nG5
    nF5
    nEb5
    .db $0B

    nCs5
    .db $01
    nC5
    .db $12
    nRst
    .db $06
    nAb4
    .db $03
    nRst
    nAb4
    .db $06
    nRst
    .db $06
    nF4
    .db $06
    nC5
    nRst
    nBb4
    .db $42

    nRst
    .db $60     ; !

    nC5
    .db $06
    nEb5
    .db $0C
    nF5
    .db $12
    nRst
    .db $0B
    nCs5
    .db $01

    nC5
    .db $06
    nEb5
    .db $0C
    nF5
    .db $12
    nRst
    .db $0B
    nCs5
    .db $01

    nC5
    .db $06
    nEb5
    .db $0B
    nG5
    .db $01
    nAb5
    .db $0C
    nBb5
    nC6
    .db $0B
    nA5
    .db $01
    nAb5
    .db $0C
    nF5
    .db $12
    nRst
    .db $06
    nEb5
    .db $03
    nRst
    .db $03
    nEb5
    .db $06
    nRst
    nC5
    nEb5
    nRst
    nF5
    .db $42
    nRst
    .db $18
    nBb5
    .db $06
    nBb5
    nRst
    nBb5
    nRst
    nC6
    nRst
    nBb5
    nRst
    .db $18

    nC5         ; Sonic Boooooom
    .db $06
    nEb5
    .db $0C
    nF5
    .db $4E

    nAb5
    .db $06
    nAb5
    .db $06
    nRst
    .db $06
    nG5
    .db $30
    nF5
    .db $1E

    nC5         ; Sonic Boooooom
    .db $06
    nEb5
    .db $0C
    nF5
    .db $4E

    nAb5
    .db $06
    nAb5
    .db $06
    nRst
    .db $06
    nG5
    .db $30
    nF5
    .db $1E

    nRst
    .db $18
    Jump Music_boom_1_MainLoop  ; Main Loop End



    Music_boom_1_Branch0:       ; Part of beginning
    Branch Music_boom_1_Branch0_1
    nC6
    .db $06
    nC6
    nRst
    nEb6
    nRst
    nC6
    nEb6
    nRst
    Branch Music_boom_1_Branch0_1
    Return

    Music_boom_1_Branch0_0:     ; The SMS stereotypical effect
    nF6
    .db $06
    nEb6
    .db $02
    nC6
    nA5 
    .db $01
    nF5
    Return

    Music_boom_1_Branch0_1:     ; Loop for the SMS stereotypical effect
    Branch Music_boom_1_Branch0_0
    AdjustVolume    2
    Loop 1, 4, Music_boom_1_Branch0_1
    AdjustVolume    -8
    Return