music_boom:
.dw $8A2F
.db $04        ;num channels
.db $00
.db $01
.db $03

music_boom_Channel0_Header:
.dw music_boom_Channel1
.db $FF        ; pitch adjustment
.db $05        ; volume adjustment

music_boom_Channel1_Header:
.dw music_boom_Channel0
.db $FF        ; pitch adjustment
.db $05        ; volume adjustment

music_boom_Channel2_Header:
.dw music_boom_Channel2
.db $FF        ; pitch adjustment
.db $05        ; volume adjustment

music_boom_Channel3_Header:
.dw music_boom_Channel3
.db $00        ; pitch adjustment
.db $06        ; volume adjustment

.include "sound/Music_Boom/channel0.asm"
.include "sound/Music_Boom/channel1.asm"
.include "sound/Music_Boom/channel2.asm"
.include "sound/Music_Boom/channel3.asm"