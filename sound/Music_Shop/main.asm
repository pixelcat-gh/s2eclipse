music_shop:
.dw $8A2F
.db $04        ;num channels
.db $00
.db $02
.db $09

music_shop_Channel0_Header:
.dw music_shop_Channel0
.db $FF        ; pitch adjustment
.db $03        ; volume adjustment

music_shop_Channel1_Header:
.dw music_shop_Channel1
.db $FF        ; pitch adjustment
.db $05        ; volume adjustment

music_shop_Channel2_Header:
.dw music_shop_Channel2
.db $FF        ; pitch adjustment
.db $03        ; volume adjustment

music_shop_Channel3_Header:
.dw music_shop_Channel3
.db $00        ; pitch adjustment
.db $00        ; volume adjustment

.include "sound/Music_shop/channel0.asm"
.include "sound/Music_shop/channel1.asm"
.include "sound/Music_shop/channel2.asm"
.include "sound/Music_shop/channel3.asm"