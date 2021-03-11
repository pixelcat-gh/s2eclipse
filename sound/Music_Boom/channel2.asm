music_boom_Channel2:
    VolumeEnvelope  0

Music_boom_2_Start:
    AdjustVolume    7
    Music_boom_2_Intro_Loop:
    nD4
    .db 1
    nD3
    nD4
    nD3
    Loop 0, $3, Music_boom_2_Intro_Loop
    AdjustVolume -1
    Loop 1, $7, Music_boom_2_Intro_Loop

    PitchBend $02, $01, $06, $FF
    nD4
    .db 12
    Music_boom_2_MainLoop:
    PitchBend $04, $01, $02, $02
    nF3
    .db $0C

    nF4
    .db $02
    nF3
    nF4
    nF3
    .db $01
    nF4
    nF3

    nRst
    .db $03

    nF3
    nRst
    nF3
    .db $06
    nF4
    .db $02
    nF3
    nF4
    nF3
    .db $01
    nF4
    nF3

    nRst
    .db $03
    nF3
    .db $0C

    nF4
    .db $02
    nF3
    nF4
    nF3
    .db $01
    nF4
    nF3

    nRst
    .db $03
    nF3
    nRst
    nF3
    nRst
    nG3
    nRst
    nF3
    nRst
    nAb3
    .db $0C

    nAb4
    .db $02
    nAb3
    nAb4
    nAb3
    .db $01
    nAb4
    nAb3

    nRst
    .db $03
    nAb3
    nRst
    nAb3
    .db $06

    nAb4
    .db $02
    nAb3
    nAb4
    nAb3
    .db $01
    nAb4
    nAb3

    nRst
    .db $03
    nAb3
    .db $0C

    nAb4
    .db $02
    nAb3
    nAb4
    nAb3
    .db $01
    nAb4
    nAb3
    nRst
    .db $03
    nAb3
    nRst
    nAb3
    nRst
    nBb3
    nRst
    nAb3
    nRst

    nBb3
    .db $0C
    nBb4
    .db $02
    nBb3
    nBb4
    nBb3
    .db $01
    nBb4
    nBb3

    nRst
    .db $03
    nBb3
    nRst
    nBb3
    nRst

    nBb4
    .db $02
    nBb3
    nBb4
    nBb3
    .db $01
    nBb4
    nBb3

    nRst
    .db $03
    nBb3
    .db $0C

    nBb4
    .db $02
    nBb3
    nBb4
    nBb3
    .db $01
    nBb4
    nBb3

    nRst
    .db $03
    nBb3
    nRst
    nBb3
    nRst

    nBb4
    .db $02
    nBb3
    nBb4
    nBb3
    .db $01
    nBb4
    nBb3

    nRst
    .db $03

    nBb4
    .db $02
    nBb3
    nBb4
    nBb3
    .db $01
    nBb4
    nBb3

    nRst
    .db $03

    nBb4
    .db $02
    nBb3
    nBb4
    nBb3
    .db $01
    nBb4
    nBb3

    nRst
    .db $03

    nBb4
    .db $02
    nBb3
    nBb4
    nBb3
    .db $01
    nBb4
    nBb3

    nRst
    .db $03

    nBb4
    .db $02
    nBb3
    nBb4
    nBb3
    .db $01
    nBb4
    nBb3

    nRst
    .db $03
    PitchBend $01, $01, $0A, $FF
    nBb6
    .db $30
    PitchBend $20, $01, $02, $02

    Branch Music_boom_2_Branch2

    nBb3 
    .db $12
    nF4
    nBb4
    .db $3C

    Branch Music_boom_2_Branch2


    nBb3 
    .db $12
    nF4
    nBb4 
    .db $24
    nA4 
    .db $02
    nAb4 
    nG4 
    nFs4 
    nF4 
    .db $01
    nE4 
    nEb4 
    nD4 
    nCs4 
    .db $02
    nC4 
    nB3 
    nBb3
    nA3 
    .db $01
    nAb3
    nG3 
    nRst

    Music_boom_2_Loop1:
    nF3 
    .db $0C

    Branch  Music_boom_2_Branch0

    nF3 
    .db $03
    nRst
    nF3 
    .db $06

    Branch  Music_boom_2_Branch1

    nAb3 
    .db $0C

    Branch  Music_boom_2_Branch0

    nAb3 
    .db $03
    nRst
    nAb3 
    .db $06

    Branch  Music_boom_2_Branch1

    nBb3 
    .db $0C

    Branch  Music_boom_2_Branch0

    nBb3 
    .db $03
    nRst
    nBb3 
    nRst 
    nC4 
    nRst 
    nBb3 
    nRst 

    nF3
    .db $0C

    Branch  Music_boom_2_Branch0
    
    nC3
    .db $03
    nRst
    nC3
    nRst
    nD3
    nRst
    nC3
    nRst

    Loop 0, 2, Music_boom_2_Loop1

    Jump Music_boom_2_MainLoop

    Music_boom_2_Branch2:
    nF3 
    .db $12
    nC4 
    nF4 
    .db $30

    PitchBend $01, $01, $06, $FF
    nE4 
    .db 12
    PitchBend $20, $01, $02, $02

    nAb3 
    .db $12
    nC4
    nAb4 
    .db $30

    PitchBend $01, $01, $06, $FF
    nG4 
    .db 12
    PitchBend $20, $01, $02, $02

    nBb3 
    .db $12
    nF4
    nBb4 
    .db $3C
    Return


    Music_boom_2_Branch0:
    nF6 
    .db $02
    nE6
    nD6 
    .db $01
    nC6
    AdjustVolume    3
    nF6 
    .db $02
    nE6 
    nD6 
    .db $01
    nC6
    AdjustVolume    -3
    Return

    Music_boom_2_Branch1:
    AdjustVolume    3
    nF6 
    .db $06
    nC6
    AdjustVolume    -3
    Return