	' TMSColor 2.2.1 Mar/29/2024
	' Command: C:\Users\Andrea\Documents\Retrocomputer\Colecovision\CVBasic\tmscolor.exe -b -p1 -z cv_logo.bmp cv_logo.bas 
	' Created: Thu May 16 16:18:57 2024

	MODE 1
	SCREEN DISABLE
	DEFINE VRAM PLETTER $0000,$1800,image_bitmap
	DEFINE VRAM PLETTER $2000,$1800,image_color
	SCREEN ENABLE
	WHILE 1: WEND

image_bitmap:
	DATA BYTE $7e,$00,$ea,$bc,$00,$0f,$34,$1f
	DATA BYTE $3f,$07,$1a,$fc,$fe,$fc,$0d,$07
	DATA BYTE $f1,$f3,$f7,$06,$07,$20,$ff,$ff
	DATA BYTE $8f,$07,$1c,$06,$07,$8f,$cf,$ef
	DATA BYTE $8b,$07,$c0,$00,$45,$07,$1f,$00
	DATA BYTE $a3,$07,$ff,$c1,$1f,$fc,$fc,$fd
	DATA BYTE $a1,$07,$7f,$7f,$b0,$17,$07,$0f
	DATA BYTE $0f,$d8,$37,$9f,$bf,$f4,$27,$1a
	DATA BYTE $f8,$fe,$fe,$af,$c0,$fa,$3f,$f0
	DATA BYTE $00,$fe,$80,$68,$80,$0f,$f7,$34
	DATA BYTE $f7,$07,$00,$0e,$ff,$e0,$f0,$e0
	DATA BYTE $00,$36,$ff,$07,$00,$1a,$ef,$ef
	DATA BYTE $e7,$3c,$00,$c0,$00,$78,$1f,$00
	DATA BYTE $ff,$d8,$00,$80,$fd,$38,$fb,$fb
	DATA BYTE $07,$03,$1f,$34,$1d,$f8,$00,$b6
	DATA BYTE $31,$5f,$1a,$bf,$c0,$7f,$5b,$00
	DATA BYTE $1a,$0d,$0f,$01,$81,$7f,$35,$6f
	DATA BYTE $77,$02,$ff,$c4,$04,$0f,$96,$02
	DATA BYTE $80,$c0,$fe,$fd,$24,$c0,$c1,$48
	DATA BYTE $07,$80,$44,$f3,$f3,$f0,$17,$f0
	DATA BYTE $38,$f0,$ff,$ad,$a6,$1a,$0f,$86
	DATA BYTE $07,$02,$e7,$09,$80,$c3,$81,$18
	DATA BYTE $0f,$e0,$3f,$cc,$10,$bd,$45,$e0
	DATA BYTE $04,$f2,$11,$e3,$85,$ae,$c0,$d0
	DATA BYTE $1e,$1f,$f1,$03,$ff,$22,$fd,$fd
	DATA BYTE $fe,$89,$e1,$f8,$83,$93,$1c,$22
	DATA BYTE $00,$1e,$fb,$54,$00,$d9,$64,$7f
	DATA BYTE $bf,$00,$9f,$16,$8f,$00,$e0,$31
	DATA BYTE $81,$27,$fe,$7f,$81,$fe,$35,$68
	DATA BYTE $f8,$d5,$94,$82,$fe,$7e,$6c,$7f
	DATA BYTE $89,$38,$00,$81,$01,$c1,$c3,$e7
	DATA BYTE $3f,$7e,$7e,$fc,$04,$a7,$85,$2f
	DATA BYTE $7f,$30,$00,$f6,$0e,$78,$f8,$06
	DATA BYTE $8c,$01,$5f,$00,$0c,$60,$f7,$00
	DATA BYTE $07,$c7,$e7,$86,$ac,$06,$7d,$ff
	DATA BYTE $00,$c7,$af,$81,$fd,$06,$f6,$18
	DATA BYTE $af,$df,$cf,$17,$d3,$00,$0d,$c6
	DATA BYTE $ff,$c6,$af,$01,$ae,$1e,$1b,$af
	DATA BYTE $58,$e7,$f4,$bf,$3d,$5f,$e0,$ff
	DATA BYTE $80,$b1,$03,$03,$64,$01,$07,$e1
	DATA BYTE $98,$c8,$08,$fe,$fc,$20,$c9,$68
	DATA BYTE $c0,$91,$bf,$06,$ff,$0f,$99,$8e
	DATA BYTE $08,$01,$05,$31,$f0,$f7,$f3,$20
	DATA BYTE $fa,$38,$e7,$c7,$f7,$30,$b2,$dc
	DATA BYTE $f1,$aa,$bd,$00,$38,$47,$0f,$e6
	DATA BYTE $1c,$01,$fb,$01,$37,$cf,$9f,$0f
	DATA BYTE $fc,$af,$bf,$37,$0f,$00,$77,$fc
	DATA BYTE $00,$78,$03,$00,$fe,$a8,$92,$81
	DATA BYTE $80,$c5,$00,$01,$d4,$99,$a2,$45
	DATA BYTE $e1,$e1,$03,$d2,$fa,$c1,$16,$c1
	DATA BYTE $0f,$3f,$cf,$31,$f0,$0c,$f0,$63
	DATA BYTE $e5,$0c,$4a,$2f,$b7,$81,$1e,$3c
	DATA BYTE $38,$78,$70,$3a,$2f,$40,$87,$ec
	DATA BYTE $00,$a6,$c8,$1e,$f0,$70,$fa,$00
	DATA BYTE $a1,$fd,$bc,$00,$e6,$ca,$19,$3c
	DATA BYTE $c9,$24,$0f,$0f,$67,$ef,$57,$47
	DATA BYTE $0f,$bd,$9d,$0e,$00,$11,$b2,$47
	DATA BYTE $78,$47,$7d,$df,$47,$a7,$46,$b0
	DATA BYTE $9d,$5b,$34,$1a,$07,$c0,$e1,$2d
	DATA BYTE $06,$08,$54,$a0,$0f,$a5,$d0,$06
	DATA BYTE $02,$cf,$4c,$df,$04,$0e,$00,$36
	DATA BYTE $c0,$bf,$17,$bd,$6d,$f8,$ff,$04
	DATA BYTE $80,$81,$83,$5c,$f8,$82,$ff,$f9
	DATA BYTE $08,$f3,$38,$bf,$22,$05,$c3,$c3
	DATA BYTE $03,$bc,$00,$86,$c7,$e0,$de,$2f
	DATA BYTE $03,$e6,$78,$f3,$0f,$50,$80,$5e
	DATA BYTE $01,$3c,$00,$e0,$80,$1b,$48,$6d
	DATA BYTE $4f,$d9,$47,$78,$b8,$47,$78,$d3
	DATA BYTE $47,$60,$de,$87,$91,$87,$ac,$8d
	DATA BYTE $00,$71,$20,$0a,$10,$03,$c3,$43
	DATA BYTE $04,$38,$7f,$ff,$92,$1c,$e1,$00
	DATA BYTE $f9,$ce,$1f,$50,$79,$0e,$00,$fe
	DATA BYTE $c5,$ff,$83,$fe,$a7,$00,$76,$7a
	DATA BYTE $00,$17,$f9,$9b,$fd,$10,$93,$f8
	DATA BYTE $7f,$3f,$70,$0f,$29,$0c,$7c,$fc
	DATA BYTE $c0,$9d,$17,$78,$3c,$3e,$e2,$5c
	DATA BYTE $2f,$92,$0b,$cf,$ff,$ae,$1f,$85
	DATA BYTE $06,$80,$c1,$cf,$9d,$ee,$a1,$3f
	DATA BYTE $f1,$f1,$98,$27,$ba,$0e,$1f,$ad
	DATA BYTE $2c,$4a,$c3,$83,$e7,$04,$78,$87
	DATA BYTE $47,$0e,$7e,$0f,$47,$38,$3c,$1e
	DATA BYTE $47,$47,$f0,$9f,$47,$51,$00,$3e
	DATA BYTE $30,$3f,$1f,$c0,$9f,$33,$30,$f3
	DATA BYTE $e1,$87,$15,$81,$00,$c3,$e9,$fc
	DATA BYTE $07,$e1,$a5,$00,$07,$f7,$9d,$e0
	DATA BYTE $fa,$17,$0f,$07,$47,$c5,$fd,$ee
	DATA BYTE $aa,$cc,$00,$06,$00,$1c,$07,$07
	DATA BYTE $06,$0a,$f7,$1c,$f7,$3b,$3b,$07
	DATA BYTE $18,$0a,$38,$30,$b0,$00,$af,$a1
	DATA BYTE $00,$1d,$19,$19,$73,$0e,$aa,$e2
	DATA BYTE $f9,$cd,$b7,$98,$25,$f7,$f5,$d0
	DATA BYTE $2e,$9c,$18,$ff,$72,$61,$e3,$ef
	DATA BYTE $63,$e3,$e3,$83,$1e,$ef,$ef,$80
	DATA BYTE $8f,$82,$37,$9c,$dc,$cc,$ce,$b6
	DATA BYTE $7a,$b6,$c3,$ec,$ec,$cc,$cc,$95
	DATA BYTE $0f,$f8,$c2,$b8,$fc,$07,$dc,$fe
	DATA BYTE $06,$ee,$c6,$00,$60,$60,$5c,$02
	DATA BYTE $04,$5c,$30,$14,$71,$61,$63,$77
	DATA BYTE $e9,$c3,$f9,$f9,$c9,$ab,$d7,$68
	DATA BYTE $89,$02,$78,$fc,$8e,$0e,$0c,$1c
	DATA BYTE $9f,$90,$3c,$7e,$77,$67,$a0,$56
	DATA BYTE $57,$1e,$3f,$23,$03,$98,$72,$1e
	DATA BYTE $90,$e0,$87,$87,$0d,$1d,$39,$da
	DATA BYTE $25,$27,$dd,$50,$fe,$17,$07,$00
	DATA BYTE $0a,$07,$39,$39,$f0,$bb,$b1,$0a
	DATA BYTE $f0,$e4,$e0,$1b,$3f,$3f,$65,$9b
	DATA BYTE $c1,$47,$e6,$66,$5b,$07,$1a,$60
	DATA BYTE $b6,$0e,$1c,$f8,$d1,$f5,$e0,$a1
	DATA BYTE $38,$79,$79,$07,$8f,$9c,$38,$ff
	DATA BYTE $ee,$07,$cf,$c7,$b8,$00,$07,$cc
	DATA BYTE $8d,$38,$8d,$8c,$07,$fc,$cc,$39
	DATA BYTE $fc,$ec,$07,$c6,$9d,$00,$07,$c1
	DATA BYTE $fb,$c0,$07,$63,$61,$71,$30,$38
	DATA BYTE $64,$18,$df,$03,$c9,$f9,$f3,$03
	DATA BYTE $06,$40,$fc,$d3,$db,$23,$77,$fe
	DATA BYTE $fe,$83,$07,$67,$77,$7e,$3c,$ad
	DATA BYTE $07,$ab,$bb,$88,$a0,$07,$87,$69
	DATA BYTE $81,$1f,$05,$94,$28,$eb,$bb,$d1
	DATA BYTE $d6,$ff,$ff,$ff,$ff,$80

image_color:
	DATA BYTE $3e,$f1,$ea,$bc,$00,$61,$34,$91
	DATA BYTE $91,$07,$5b,$98,$00,$1a,$0f,$81
	DATA BYTE $81,$3f,$07,$86,$16,$07,$61,$00
	DATA BYTE $8f,$07,$b1,$16,$2f,$a1,$00,$e8
	DATA BYTE $07,$b1,$34,$ba,$ba,$07,$5a,$eb
	DATA BYTE $00,$2d,$07,$e1,$00,$17,$07,$71
	DATA BYTE $00,$a6,$07,$aa,$e3,$00,$91,$c3
	DATA BYTE $00,$98,$96,$61,$da,$81,$1b,$fb
	DATA BYTE $1a,$00,$86,$61,$4d,$00,$07,$81
	DATA BYTE $ad,$07,$08,$3e,$00,$2f,$6f,$a1
	DATA BYTE $91,$00,$f9,$b7,$07,$84,$f9,$fa
	DATA BYTE $1a,$d7,$e1,$1b,$00,$71,$e1,$18
	DATA BYTE $0f,$e7,$e7,$fc,$6a,$ff,$0c,$ff
	DATA BYTE $61,$d9,$99,$96,$fc,$2d,$96,$0e
	DATA BYTE $0a,$ff,$0f,$10,$75,$86,$07,$17
	DATA BYTE $e3,$07,$86,$67,$86,$08,$0f,$a9
	DATA BYTE $b9,$00,$a6,$f1,$61,$b8,$e9,$d7
	DATA BYTE $ed,$1e,$f5,$cc,$07,$ba,$00,$9d
	DATA BYTE $07,$ba,$fb,$59,$00,$f9,$38,$ed
	DATA BYTE $fd,$87,$f6,$f1,$14,$f7,$07,$03
	DATA BYTE $e7,$76,$75,$07,$ba,$a6,$00,$d4
	DATA BYTE $d5,$ea,$75,$0b,$ed,$71,$ec,$b6
	DATA BYTE $89,$61,$f3,$00,$be,$91,$04,$d0
	DATA BYTE $fd,$1e,$a6,$b9,$b8,$b5,$ff,$30
	DATA BYTE $00,$b1,$00,$e1,$b1,$68,$eb,$00
	DATA BYTE $e7,$b4,$00,$ff,$b0,$fe,$ba,$02
	DATA BYTE $f7,$be,$89,$0f,$d7,$54,$81,$5c
	DATA BYTE $81,$f3,$77,$07,$55,$ef,$ed,$ce
	DATA BYTE $0d,$81,$0f,$d4,$ff,$2d,$0c,$38
	DATA BYTE $99,$fd,$31,$a1,$a8,$83,$71,$ba
	DATA BYTE $ea,$6a,$0a,$d8,$00,$fa,$72,$82
	DATA BYTE $ca,$d0,$fc,$9d,$85,$46,$00,$71
	DATA BYTE $da,$00,$8d,$0f,$f1,$dd,$ff,$1e
	DATA BYTE $00,$a1,$b6,$00,$a9,$1d,$ec,$2f
	DATA BYTE $ca,$d9,$10,$c1,$f9,$23,$ea,$93
	DATA BYTE $47,$00,$c1,$73,$10,$f8,$9d,$f4
	DATA BYTE $07,$7c,$c1,$0f,$c1,$dc,$0f,$d8
	DATA BYTE $8b,$fb,$2f,$5d,$c3,$ff,$d3,$00
	DATA BYTE $fb,$2f,$fe,$3f,$f7,$ed,$47,$89
	DATA BYTE $d7,$91,$d5,$9b,$ad,$14,$fe,$57
	DATA BYTE $fd,$6b,$ff,$55,$af,$07,$09,$cd
	DATA BYTE $0f,$ed,$1f,$db,$47,$4d,$a0,$c1
	DATA BYTE $9f,$02,$a3,$47,$c1,$db,$47,$7f
	DATA BYTE $8f,$97,$be,$57,$fd,$bd,$d5,$51
	DATA BYTE $00,$a1,$b7,$00,$df,$0a,$6e,$07
	DATA BYTE $3e,$17,$a1,$0f,$f6,$17,$fe,$07
	DATA BYTE $fa,$37,$22,$df,$3d,$4f,$bf,$57
	DATA BYTE $ed,$5f,$fb,$07,$5f,$cf,$00,$bd
	DATA BYTE $53,$be,$66,$17,$dd,$db,$07,$bd
	DATA BYTE $5f,$fb,$67,$d7,$5f,$bf,$00,$ff
	DATA BYTE $ff,$ff,$f0
