; 
;  ユーザ・オプション・バイト (0x000C0〜0x000C2)の設定
;  オンチップ・デバッグ・オプション・バイト (0x000C3)の設定
;　
;  リンク・オプション(デバイス)のユーザオプションバイトの設定がされている場合、
;  リンク時の設定データが優先される。 
;
;　セレクタブルパワーオンリセット(SPOR)検出電圧は、電源=5[V]用
;  電源電圧=3.3[V]とした場合、リセットが解除されない。
;

.SECTION .option_byte, OPT_BYTE

				;000C0H 
	.DB	0xEA		; ウオッチドックタイマ カウント停止
				; HALT/STOPモード時、カウント停止

				;000C1H
        .DB	0xF3		;セレクタブルパワーオンリセット(SPOR)検出電圧
                                ;  立ち上がり(リセット解除)電圧 = 4.28[V]
				;  立下り(リセット発生)電圧     = 4.20[V]
				; P125 = RESET端子として使用

				;000C2H
	.DB	0xF9		; 高速オンチップオシレータ動作周波数 = 16[MHz]	

				;000C3H
        .DB     0x85		; オンチップデバックの動作許可
	
	