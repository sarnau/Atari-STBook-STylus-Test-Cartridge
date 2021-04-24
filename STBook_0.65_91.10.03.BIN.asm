; ---------------------------------------------------------------------------

CHECK_REGISTERSET_8BIT struc ; (sizeof=0x6)
                                        ; XREF: check_register_set_8bit+1A/r
                                        ; check_register_set_8bit_slow_unused+1A/r
addr:           dc.l ?                  ; address of the register to be tested
bitmask:        dc.b ?                  ; XREF: check_register_set_8bit+2/r
                                        ; check_register_set_8bit_slow_unused+2/r ; test bitmask
value_offset:   dc.b ?                  ; XREF: check_register_set_8bit+6/r
                                        ; check_register_set_8bit_slow_unused+6/r ; offset added to the value
CHECK_REGISTERSET_8BIT ends

; ---------------------------------------------------------------------------

CHECK_REGISTERSET_16BIT struc ; (sizeof=0x8)
                                        ; XREF: check_register_set_16bit+1A/r
addr:           dc.l ?                  ; address of the register to be tested
bitmask:        dc.w ?                  ; XREF: check_register_set_16bit+2/r
                                        ; check_register_set_16bit+6/r ; test bitmask
value_offset:   dc.w ?                  ; offset added to the value
CHECK_REGISTERSET_16BIT ends

; ---------------------------------------------------------------------------

; enum LED
LED_8_DOT_8_DOT: set 0                  ; XREF: EXCEPTION_VECTORS+430/s ; LED '8.8.'
LED_8_DOT_6_DOT: set 2                  ; XREF: EXCEPTION_VECTORS+420/s ; LED '8.6.'
LED_8_DOT_b_DOT: set 3                  ; XREF: EXCEPTION_VECTORS+448/s ; LED '8.b.'
LED_8_DOT_E_DOT: set 6                  ; XREF: EXCEPTION_VECTORS+460/s ; LED '8.E.'
LED_8_DOT_A_DOT: set 8                  ; XREF: EXCEPTION_VECTORS+440/s ; LED '8.A.'
LED_8_DOT_F_DOT: set $E                 ; XREF: EXCEPTION_VECTORS+468/s ; LED '8.F.'
LED_8_DOT_9_DOT: set $10                ; XREF: EXCEPTION_VECTORS+438/s ; LED '8.9.'
LED_8_DOT_5_DOT: set $12                ; XREF: EXCEPTION_VECTORS+418/s ; LED '8.5.'
LED_8_DOT_4_DOT: set $19                ; XREF: EXCEPTION_VECTORS+410/s ; LED '8.4.'
LED_8_DOT_D_DOT: set $21                ; XREF: EXCEPTION_VECTORS+458/s ; LED '8.D.'
LED_8_DOT_2_DOT: set $24                ; XREF: EXCEPTION_VECTORS+400/s ; LED '8.2.'
LED_8_DOT_C_DOT: set $27                ; XREF: EXCEPTION_VECTORS+450/s ; LED '8.C.'
LED_8_DOT_3_DOT: set $30                ; XREF: EXCEPTION_VECTORS+408/s ; LED '8.3.'
LED_8_DOT_eq_DOT: set $37               ; LED '8.=.'
LED_8_DOT_neg_DOT: set $3F              ; LED '8.-.'
LED_8_DOT_0_DOT: set $40                ; XREF: EXCEPTION_VECTORS+3F0/s ; LED '8.0.'
LED_8_DOT_U_DOT: set $41                ; LED '8.U.'
LED_8_DOT_vlines_DOT: set $6B           ; LED '8.‖.'
LED_8_DOT_7_DOT: set $78                ; XREF: EXCEPTION_VECTORS+428/s ; LED '8.7.'
LED_8_DOT_1_DOT: set $79                ; XREF: EXCEPTION_VECTORS+3F8/s ; LED '8.1.'
LED_8_DOT_uline_DOT: set $7E            ; LED '8.⎺.'
LED_8_DOT___DOT: set $7F                ; LED '8. .'
LED_8_DOT_8:     set $80                ; LED '8.8'
LED_8_DOT_6:     set $82                ; LED '8.6'
LED_8_DOT_b:     set $83                ; LED '8.b'
LED_8_DOT_E:     set $86                ; LED '8.E'
LED_8_DOT_A:     set $88                ; LED '8.A'
LED_8_DOT_F:     set $8E                ; LED '8.F'
LED_8_DOT_9:     set $90                ; LED '8.9'
LED_8_DOT_5:     set $92                ; LED '8.5'
LED_8_DOT_4:     set $99                ; LED '8.4'
LED_8_DOT_D:     set $A1                ; LED '8.D'
LED_8_DOT_2:     set $A4                ; LED '8.2'
LED_8_DOT_C:     set $A7                ; LED '8.C'
LED_8_DOT_3:     set $B0                ; LED '8.3'
LED_8_DOT_eq:    set $B7                ; LED '8.='
LED_8_DOT_neg:   set $BF                ; LED '8.-'
LED_8_DOT_0:     set $C0                ; LED '8.0'
LED_8_DOT_U:     set $C1                ; XREF: START:LED_display_version_number/s ; LED '8.U'
LED_8_DOT_vlines: set $EB               ; LED '8.‖'
LED_8_DOT_7:     set $F8                ; LED '8.7'
LED_8_DOT_1:     set $F9                ; LED '8.1'
LED_8_DOT_uline: set $FE                ; LED '8.⎺'
LED_8_DOT__:     set $FF                ; LED '8. '
LED_6_DOT_8_DOT: set $200               ; XREF: EXCEPTION_VECTORS+330/s ; LED '6.8.'
LED_6_DOT_6_DOT: set $202               ; XREF: EXCEPTION_VECTORS+320/s ; LED '6.6.'
LED_6_DOT_b_DOT: set $203               ; XREF: EXCEPTION_VECTORS+348/s ; LED '6.b.'
LED_6_DOT_E_DOT: set $206               ; XREF: EXCEPTION_VECTORS+360/s ; LED '6.E.'
LED_6_DOT_A_DOT: set $208               ; XREF: EXCEPTION_VECTORS+340/s ; LED '6.A.'
LED_6_DOT_F_DOT: set $20E               ; XREF: EXCEPTION_VECTORS+368/s ; LED '6.F.'
LED_6_DOT_9_DOT: set $210               ; XREF: EXCEPTION_VECTORS+338/s ; LED '6.9.'
LED_6_DOT_5_DOT: set $212               ; XREF: EXCEPTION_VECTORS+318/s ; LED '6.5.'
LED_6_DOT_4_DOT: set $219               ; XREF: EXCEPTION_VECTORS+310/s ; LED '6.4.'
LED_6_DOT_D_DOT: set $221               ; XREF: EXCEPTION_VECTORS+358/s ; LED '6.D.'
LED_6_DOT_2_DOT: set $224               ; XREF: EXCEPTION_VECTORS+300/s ; LED '6.2.'
LED_6_DOT_C_DOT: set $227               ; XREF: EXCEPTION_VECTORS+350/s ; LED '6.C.'
LED_6_DOT_3_DOT: set $230               ; XREF: EXCEPTION_VECTORS+308/s ; LED '6.3.'
LED_6_DOT_eq_DOT: set $237              ; LED '6.=.'
LED_6_DOT_neg_DOT: set $23F             ; LED '6.-.'
LED_6_DOT_0_DOT: set $240               ; XREF: EXCEPTION_VECTORS+2F0/s ; LED '6.0.'
LED_6_DOT_U_DOT: set $241               ; LED '6.U.'
LED_6_DOT_vlines_DOT: set $26B          ; LED '6.‖.'
LED_6_DOT_7_DOT: set $278               ; XREF: EXCEPTION_VECTORS+328/s ; LED '6.7.'
LED_6_DOT_1_DOT: set $279               ; XREF: EXCEPTION_VECTORS+2F8/s ; LED '6.1.'
LED_6_DOT_uline_DOT: set $27E           ; LED '6.⎺.'
LED_6_DOT___DOT: set $27F               ; LED '6. .'
LED_6_DOT_8:     set $280               ; XREF: START:loc_FA1F98/s ; LED '6.8'
LED_6_DOT_6:     set $282               ; LED '6.6'
LED_6_DOT_b:     set $283               ; XREF: START:loc_FA2092/s
                                        ; START:loc_FA2176/s ; LED '6.b'
LED_6_DOT_E:     set $286               ; LED '6.E'
LED_6_DOT_A:     set $288               ; LED '6.A'
LED_6_DOT_F:     set $28E               ; LED '6.F'
LED_6_DOT_9:     set $290               ; LED '6.9'
LED_6_DOT_5:     set $292               ; LED '6.5'
LED_6_DOT_4:     set $299               ; LED '6.4'
LED_6_DOT_D:     set $2A1               ; LED '6.D'
LED_6_DOT_2:     set $2A4               ; XREF: START:loc_FA1D8A/s ; LED '6.2'
LED_6_DOT_C:     set $2A7               ; LED '6.C'
LED_6_DOT_3:     set $2B0               ; LED '6.3'
LED_6_DOT_eq:    set $2B7               ; LED '6.='
LED_6_DOT_neg:   set $2BF               ; LED '6.-'
LED_6_DOT_0:     set $2C0               ; XREF: START:loc_FA1C20/s ; LED '6.0'
LED_6_DOT_U:     set $2C1               ; LED '6.U'
LED_6_DOT_vlines: set $2EB              ; LED '6.‖'
LED_6_DOT_7:     set $2F8               ; LED '6.7'
LED_6_DOT_1:     set $2F9               ; XREF: START:loc_FA1CC8/s ; LED '6.1'
LED_6_DOT_uline: set $2FE               ; LED '6.⎺'
LED_6_DOT__:     set $2FF               ; LED '6. '
LED_b_DOT_8_DOT: set $300               ; XREF: EXCEPTION_VECTORS+5B0/s ; LED 'b.8.'
LED_b_DOT_6_DOT: set $302               ; XREF: EXCEPTION_VECTORS+5A0/s ; LED 'b.6.'
LED_b_DOT_b_DOT: set $303               ; XREF: EXCEPTION_VECTORS+5C8/s ; LED 'b.b.'
LED_b_DOT_E_DOT: set $306               ; XREF: EXCEPTION_VECTORS+5E0/s
                                        ; EXCEPTION_VECTORS:BUSERROR_EXCEPTION/s ; LED 'b.E.'
LED_b_DOT_A_DOT: set $308               ; XREF: EXCEPTION_VECTORS+5C0/s ; LED 'b.A.'
LED_b_DOT_F_DOT: set $30E               ; XREF: EXCEPTION_VECTORS+5E8/s ; LED 'b.F.'
LED_b_DOT_9_DOT: set $310               ; XREF: EXCEPTION_VECTORS+5B8/s ; LED 'b.9.'
LED_b_DOT_5_DOT: set $312               ; XREF: EXCEPTION_VECTORS+598/s ; LED 'b.5.'
LED_b_DOT_4_DOT: set $319               ; XREF: EXCEPTION_VECTORS+590/s
                                        ; EXCEPTION_VECTORS:NMI_EXCEPTION/s ; LED 'b.4.'
LED_b_DOT_D_DOT: set $321               ; XREF: EXCEPTION_VECTORS+5D8/s ; LED 'b.D.'
LED_b_DOT_2_DOT: set $324               ; XREF: EXCEPTION_VECTORS+580/s ; LED 'b.2.'
LED_b_DOT_C_DOT: set $327               ; XREF: EXCEPTION_VECTORS+5D0/s ; LED 'b.C.'
LED_b_DOT_3_DOT: set $330               ; XREF: EXCEPTION_VECTORS+588/s ; LED 'b.3.'
LED_b_DOT_eq_DOT: set $337              ; LED 'b.=.'
LED_b_DOT_neg_DOT: set $33F             ; LED 'b.-.'
LED_b_DOT_0_DOT: set $340               ; XREF: EXCEPTION_VECTORS+570/s ; LED 'b.0.'
LED_b_DOT_U_DOT: set $341               ; LED 'b.U.'
LED_b_DOT_vlines_DOT: set $36B          ; LED 'b.‖.'
LED_b_DOT_7_DOT: set $378               ; XREF: EXCEPTION_VECTORS+5A8/s ; LED 'b.7.'
LED_b_DOT_1_DOT: set $379               ; XREF: EXCEPTION_VECTORS+578/s ; LED 'b.1.'
LED_b_DOT_uline_DOT: set $37E           ; LED 'b.⎺.'
LED_b_DOT___DOT: set $37F               ; LED 'b. .'
LED_b_DOT_8:     set $380               ; LED 'b.8'
LED_b_DOT_6:     set $382               ; LED 'b.6'
LED_b_DOT_b:     set $383               ; LED 'b.b'
LED_b_DOT_E:     set $386               ; LED 'b.E'
LED_b_DOT_A:     set $388               ; LED 'b.A'
LED_b_DOT_F:     set $38E               ; LED 'b.F'
LED_b_DOT_9:     set $390               ; LED 'b.9'
LED_b_DOT_5:     set $392               ; LED 'b.5'
LED_b_DOT_4:     set $399               ; LED 'b.4'
LED_b_DOT_D:     set $3A1               ; LED 'b.D'
LED_b_DOT_2:     set $3A4               ; LED 'b.2'
LED_b_DOT_C:     set $3A7               ; LED 'b.C'
LED_b_DOT_3:     set $3B0               ; XREF: START:TEST_03_SOURCE_DEAD/s
                                        ; START:loc_FA27A0/s ; LED 'b.3'
LED_b_DOT_eq:    set $3B7               ; LED 'b.='
LED_b_DOT_neg:   set $3BF               ; LED 'b.-'
LED_b_DOT_0:     set $3C0               ; LED 'b.0'
LED_b_DOT_U:     set $3C1               ; LED 'b.U'
LED_b_DOT_vlines: set $3EB              ; LED 'b.‖'
LED_b_DOT_7:     set $3F8               ; LED 'b.7'
LED_b_DOT_1:     set $3F9               ; XREF: START:TEST_03_SOURCE_LOW/s
                                        ; START:loc_FA2730/s ; LED 'b.1'
LED_b_DOT_uline: set $3FE               ; LED 'b.⎺'
LED_b_DOT__:     set $3FF               ; LED 'b. '
LED_E_DOT_8_DOT: set $600               ; XREF: EXCEPTION_VECTORS+730/s ; LED 'E.8.'
LED_E_DOT_6_DOT: set $602               ; XREF: EXCEPTION_VECTORS+720/s ; LED 'E.6.'
LED_E_DOT_b_DOT: set $603               ; XREF: EXCEPTION_VECTORS+748/s ; LED 'E.b.'
LED_E_DOT_E_DOT: set $606               ; XREF: EXCEPTION_VECTORS+760/s ; LED 'E.E.'
LED_E_DOT_A_DOT: set $608               ; XREF: EXCEPTION_VECTORS+740/s ; LED 'E.A.'
LED_E_DOT_F_DOT: set $60E               ; XREF: EXCEPTION_VECTORS+768/s ; LED 'E.F.'
LED_E_DOT_9_DOT: set $610               ; XREF: EXCEPTION_VECTORS+738/s ; LED 'E.9.'
LED_E_DOT_5_DOT: set $612               ; XREF: EXCEPTION_VECTORS+718/s ; LED 'E.5.'
LED_E_DOT_4_DOT: set $619               ; XREF: EXCEPTION_VECTORS+710/s ; LED 'E.4.'
LED_E_DOT_D_DOT: set $621               ; XREF: EXCEPTION_VECTORS+758/s ; LED 'E.D.'
LED_E_DOT_2_DOT: set $624               ; XREF: EXCEPTION_VECTORS+700/s ; LED 'E.2.'
LED_E_DOT_C_DOT: set $627               ; XREF: EXCEPTION_VECTORS+750/s ; LED 'E.C.'
LED_E_DOT_3_DOT: set $630               ; XREF: EXCEPTION_VECTORS+708/s ; LED 'E.3.'
LED_E_DOT_eq_DOT: set $637              ; LED 'E.=.'
LED_E_DOT_neg_DOT: set $63F             ; LED 'E.-.'
LED_E_DOT_0_DOT: set $640               ; XREF: EXCEPTION_VECTORS+6F0/s ; LED 'E.0.'
LED_E_DOT_U_DOT: set $641               ; LED 'E.U.'
LED_E_DOT_vlines_DOT: set $66B          ; LED 'E.‖.'
LED_E_DOT_7_DOT: set $678               ; XREF: EXCEPTION_VECTORS+728/s ; LED 'E.7.'
LED_E_DOT_1_DOT: set $679               ; XREF: EXCEPTION_VECTORS+6F8/s ; LED 'E.1.'
LED_E_DOT_uline_DOT: set $67E           ; LED 'E.⎺.'
LED_E_DOT___DOT: set $67F               ; LED 'E. .'
LED_E_DOT_8:     set $680               ; LED 'E.8'
LED_E_DOT_6:     set $682               ; LED 'E.6'
LED_E_DOT_b:     set $683               ; LED 'E.b'
LED_E_DOT_E:     set $686               ; LED 'E.E'
LED_E_DOT_A:     set $688               ; LED 'E.A'
LED_E_DOT_F:     set $68E               ; LED 'E.F'
LED_E_DOT_9:     set $690               ; LED 'E.9'
LED_E_DOT_5:     set $692               ; LED 'E.5'
LED_E_DOT_4:     set $699               ; LED 'E.4'
LED_E_DOT_D:     set $6A1               ; LED 'E.D'
LED_E_DOT_2:     set $6A4               ; LED 'E.2'
LED_E_DOT_C:     set $6A7               ; LED 'E.C'
LED_E_DOT_3:     set $6B0               ; LED 'E.3'
LED_E_DOT_eq:    set $6B7               ; LED 'E.='
LED_E_DOT_neg:   set $6BF               ; LED 'E.-'
LED_E_DOT_0:     set $6C0               ; LED 'E.0'
LED_E_DOT_U:     set $6C1               ; LED 'E.U'
LED_E_DOT_vlines: set $6EB              ; LED 'E.‖'
LED_E_DOT_7:     set $6F8               ; LED 'E.7'
LED_E_DOT_1:     set $6F9               ; LED 'E.1'
LED_E_DOT_uline: set $6FE               ; LED 'E.⎺'
LED_E_DOT__:     set $6FF               ; LED 'E. '
LED_A_DOT_8_DOT: set $800               ; XREF: EXCEPTION_VECTORS+530/s ; LED 'A.8.'
LED_A_DOT_6_DOT: set $802               ; XREF: EXCEPTION_VECTORS+520/s ; LED 'A.6.'
LED_A_DOT_b_DOT: set $803               ; XREF: EXCEPTION_VECTORS+548/s ; LED 'A.b.'
LED_A_DOT_E_DOT: set $806               ; XREF: EXCEPTION_VECTORS+560/s
                                        ; EXCEPTION_VECTORS:ADDRESSERROR_EXCEPTION/s ; LED 'A.E.'
LED_A_DOT_A_DOT: set $808               ; XREF: EXCEPTION_VECTORS+540/s ; LED 'A.A.'
LED_A_DOT_F_DOT: set $80E               ; XREF: EXCEPTION_VECTORS+568/s ; LED 'A.F.'
LED_A_DOT_9_DOT: set $810               ; XREF: EXCEPTION_VECTORS+538/s ; LED 'A.9.'
LED_A_DOT_5_DOT: set $812               ; XREF: EXCEPTION_VECTORS+518/s ; LED 'A.5.'
LED_A_DOT_4_DOT: set $819               ; XREF: EXCEPTION_VECTORS+510/s ; LED 'A.4.'
LED_A_DOT_D_DOT: set $821               ; XREF: EXCEPTION_VECTORS+558/s ; LED 'A.D.'
LED_A_DOT_2_DOT: set $824               ; XREF: EXCEPTION_VECTORS+500/s ; LED 'A.2.'
LED_A_DOT_C_DOT: set $827               ; XREF: EXCEPTION_VECTORS+550/s ; LED 'A.C.'
LED_A_DOT_3_DOT: set $830               ; XREF: EXCEPTION_VECTORS+508/s ; LED 'A.3.'
LED_A_DOT_eq_DOT: set $837              ; LED 'A.=.'
LED_A_DOT_neg_DOT: set $83F             ; LED 'A.-.'
LED_A_DOT_0_DOT: set $840               ; XREF: EXCEPTION_VECTORS+4F0/s ; LED 'A.0.'
LED_A_DOT_U_DOT: set $841               ; LED 'A.U.'
LED_A_DOT_vlines_DOT: set $86B          ; LED 'A.‖.'
LED_A_DOT_7_DOT: set $878               ; XREF: EXCEPTION_VECTORS+528/s ; LED 'A.7.'
LED_A_DOT_1_DOT: set $879               ; XREF: EXCEPTION_VECTORS+4F8/s ; LED 'A.1.'
LED_A_DOT_uline_DOT: set $87E           ; LED 'A.⎺.'
LED_A_DOT___DOT: set $87F               ; LED 'A. .'
LED_A_DOT_8:     set $880               ; LED 'A.8'
LED_A_DOT_6:     set $882               ; LED 'A.6'
LED_A_DOT_b:     set $883               ; LED 'A.b'
LED_A_DOT_E:     set $886               ; LED 'A.E'
LED_A_DOT_A:     set $888               ; LED 'A.A'
LED_A_DOT_F:     set $88E               ; LED 'A.F'
LED_A_DOT_9:     set $890               ; LED 'A.9'
LED_A_DOT_5:     set $892               ; LED 'A.5'
LED_A_DOT_4:     set $899               ; LED 'A.4'
LED_A_DOT_D:     set $8A1               ; LED 'A.D'
LED_A_DOT_2:     set $8A4               ; LED 'A.2'
LED_A_DOT_C:     set $8A7               ; LED 'A.C'
LED_A_DOT_3:     set $8B0               ; LED 'A.3'
LED_A_DOT_eq:    set $8B7               ; LED 'A.='
LED_A_DOT_neg:   set $8BF               ; LED 'A.-'
LED_A_DOT_0:     set $8C0               ; LED 'A.0'
LED_A_DOT_U:     set $8C1               ; LED 'A.U'
LED_A_DOT_vlines: set $8EB              ; LED 'A.‖'
LED_A_DOT_7:     set $8F8               ; LED 'A.7'
LED_A_DOT_1:     set $8F9               ; LED 'A.1'
LED_A_DOT_uline: set $8FE               ; LED 'A.⎺'
LED_A_DOT__:     set $8FF               ; LED 'A. '
LED_F_DOT_8_DOT: set $E00               ; XREF: EXCEPTION_VECTORS+7B0/s ; LED 'F.8.'
LED_F_DOT_6_DOT: set $E02               ; XREF: EXCEPTION_VECTORS+7A0/s ; LED 'F.6.'
LED_F_DOT_b_DOT: set $E03               ; XREF: EXCEPTION_VECTORS+7C8/s ; LED 'F.b.'
LED_F_DOT_E_DOT: set $E06               ; XREF: EXCEPTION_VECTORS+7E0/s ; LED 'F.E.'
LED_F_DOT_A_DOT: set $E08               ; XREF: EXCEPTION_VECTORS+7C0/s ; LED 'F.A.'
LED_F_DOT_F_DOT: set $E0E               ; XREF: EXCEPTION_VECTORS+7E8/s ; LED 'F.F.'
LED_F_DOT_9_DOT: set $E10               ; XREF: EXCEPTION_VECTORS+7B8/s ; LED 'F.9.'
LED_F_DOT_5_DOT: set $E12               ; XREF: EXCEPTION_VECTORS+798/s ; LED 'F.5.'
LED_F_DOT_4_DOT: set $E19               ; XREF: EXCEPTION_VECTORS+790/s ; LED 'F.4.'
LED_F_DOT_D_DOT: set $E21               ; XREF: EXCEPTION_VECTORS+7D8/s ; LED 'F.D.'
LED_F_DOT_2_DOT: set $E24               ; XREF: EXCEPTION_VECTORS+780/s ; LED 'F.2.'
LED_F_DOT_C_DOT: set $E27               ; XREF: EXCEPTION_VECTORS+7D0/s ; LED 'F.C.'
LED_F_DOT_3_DOT: set $E30               ; XREF: EXCEPTION_VECTORS+788/s ; LED 'F.3.'
LED_F_DOT_eq_DOT: set $E37              ; LED 'F.=.'
LED_F_DOT_neg_DOT: set $E3F             ; LED 'F.-.'
LED_F_DOT_0_DOT: set $E40               ; XREF: EXCEPTION_VECTORS+770/s ; LED 'F.0.'
LED_F_DOT_U_DOT: set $E41               ; LED 'F.U.'
LED_F_DOT_vlines_DOT: set $E6B          ; LED 'F.‖.'
LED_F_DOT_7_DOT: set $E78               ; XREF: EXCEPTION_VECTORS+7A8/s ; LED 'F.7.'
LED_F_DOT_1_DOT: set $E79               ; XREF: EXCEPTION_VECTORS+778/s ; LED 'F.1.'
LED_F_DOT_uline_DOT: set $E7E           ; LED 'F.⎺.'
LED_F_DOT___DOT: set $E7F               ; LED 'F. .'
LED_F_DOT_8:     set $E80               ; LED 'F.8'
LED_F_DOT_6:     set $E82               ; LED 'F.6'
LED_F_DOT_b:     set $E83               ; LED 'F.b'
LED_F_DOT_E:     set $E86               ; LED 'F.E'
LED_F_DOT_A:     set $E88               ; LED 'F.A'
LED_F_DOT_F:     set $E8E               ; LED 'F.F'
LED_F_DOT_9:     set $E90               ; LED 'F.9'
LED_F_DOT_5:     set $E92               ; LED 'F.5'
LED_F_DOT_4:     set $E99               ; LED 'F.4'
LED_F_DOT_D:     set $EA1               ; LED 'F.D'
LED_F_DOT_2:     set $EA4               ; LED 'F.2'
LED_F_DOT_C:     set $EA7               ; LED 'F.C'
LED_F_DOT_3:     set $EB0               ; LED 'F.3'
LED_F_DOT_eq:    set $EB7               ; LED 'F.='
LED_F_DOT_neg:   set $EBF               ; LED 'F.-'
LED_F_DOT_0:     set $EC0               ; LED 'F.0'
LED_F_DOT_U:     set $EC1               ; LED 'F.U'
LED_F_DOT_vlines: set $EEB              ; LED 'F.‖'
LED_F_DOT_7:     set $EF8               ; LED 'F.7'
LED_F_DOT_1:     set $EF9               ; LED 'F.1'
LED_F_DOT_uline: set $EFE               ; LED 'F.⎺'
LED_F_DOT__:     set $EFF               ; LED 'F. '
LED_9_DOT_8_DOT: set $1000              ; XREF: EXCEPTION_VECTORS+4B0/s ; LED '9.8.'
LED_9_DOT_6_DOT: set $1002              ; XREF: EXCEPTION_VECTORS+4A0/s ; LED '9.6.'
LED_9_DOT_b_DOT: set $1003              ; XREF: EXCEPTION_VECTORS+4C8/s ; LED '9.b.'
LED_9_DOT_E_DOT: set $1006              ; XREF: EXCEPTION_VECTORS+4E0/s ; LED '9.E.'
LED_9_DOT_A_DOT: set $1008              ; XREF: EXCEPTION_VECTORS+4C0/s ; LED '9.A.'
LED_9_DOT_F_DOT: set $100E              ; XREF: EXCEPTION_VECTORS+4E8/s ; LED '9.F.'
LED_9_DOT_9_DOT: set $1010              ; XREF: EXCEPTION_VECTORS+4B8/s ; LED '9.9.'
LED_9_DOT_5_DOT: set $1012              ; XREF: EXCEPTION_VECTORS+498/s ; LED '9.5.'
LED_9_DOT_4_DOT: set $1019              ; XREF: EXCEPTION_VECTORS+490/s ; LED '9.4.'
LED_9_DOT_D_DOT: set $1021              ; XREF: EXCEPTION_VECTORS+4D8/s ; LED '9.D.'
LED_9_DOT_2_DOT: set $1024              ; XREF: EXCEPTION_VECTORS+480/s ; LED '9.2.'
LED_9_DOT_C_DOT: set $1027              ; XREF: EXCEPTION_VECTORS+4D0/s ; LED '9.C.'
LED_9_DOT_3_DOT: set $1030              ; XREF: EXCEPTION_VECTORS+488/s ; LED '9.3.'
LED_9_DOT_eq_DOT: set $1037             ; LED '9.=.'
LED_9_DOT_neg_DOT: set $103F            ; LED '9.-.'
LED_9_DOT_0_DOT: set $1040              ; XREF: EXCEPTION_VECTORS+470/s ; LED '9.0.'
LED_9_DOT_U_DOT: set $1041              ; LED '9.U.'
LED_9_DOT_vlines_DOT: set $106B         ; LED '9.‖.'
LED_9_DOT_7_DOT: set $1078              ; XREF: EXCEPTION_VECTORS+4A8/s ; LED '9.7.'
LED_9_DOT_1_DOT: set $1079              ; XREF: EXCEPTION_VECTORS+478/s ; LED '9.1.'
LED_9_DOT_uline_DOT: set $107E          ; LED '9.⎺.'
LED_9_DOT___DOT: set $107F              ; LED '9. .'
LED_9_DOT_8:     set $1080              ; LED '9.8'
LED_9_DOT_6:     set $1082              ; LED '9.6'
LED_9_DOT_b:     set $1083              ; LED '9.b'
LED_9_DOT_E:     set $1086              ; LED '9.E'
LED_9_DOT_A:     set $1088              ; LED '9.A'
LED_9_DOT_F:     set $108E              ; LED '9.F'
LED_9_DOT_9:     set $1090              ; LED '9.9'
LED_9_DOT_5:     set $1092              ; LED '9.5'
LED_9_DOT_4:     set $1099              ; LED '9.4'
LED_9_DOT_D:     set $10A1              ; LED '9.D'
LED_9_DOT_2:     set $10A4              ; LED '9.2'
LED_9_DOT_C:     set $10A7              ; LED '9.C'
LED_9_DOT_3:     set $10B0              ; LED '9.3'
LED_9_DOT_eq:    set $10B7              ; LED '9.='
LED_9_DOT_neg:   set $10BF              ; LED '9.-'
LED_9_DOT_0:     set $10C0              ; LED '9.0'
LED_9_DOT_U:     set $10C1              ; LED '9.U'
LED_9_DOT_vlines: set $10EB             ; LED '9.‖'
LED_9_DOT_7:     set $10F8              ; LED '9.7'
LED_9_DOT_1:     set $10F9              ; LED '9.1'
LED_9_DOT_uline: set $10FE              ; LED '9.⎺'
LED_9_DOT__:     set $10FF              ; LED '9. '
LED_5_DOT_8_DOT: set $1200              ; XREF: EXCEPTION_VECTORS+2B0/s ; LED '5.8.'
LED_5_DOT_6_DOT: set $1202              ; XREF: EXCEPTION_VECTORS+2A0/s ; LED '5.6.'
LED_5_DOT_b_DOT: set $1203              ; XREF: EXCEPTION_VECTORS+2C8/s ; LED '5.b.'
LED_5_DOT_E_DOT: set $1206              ; XREF: EXCEPTION_VECTORS+2E0/s ; LED '5.E.'
LED_5_DOT_A_DOT: set $1208              ; XREF: EXCEPTION_VECTORS+2C0/s ; LED '5.A.'
LED_5_DOT_F_DOT: set $120E              ; XREF: EXCEPTION_VECTORS+2E8/s ; LED '5.F.'
LED_5_DOT_9_DOT: set $1210              ; XREF: EXCEPTION_VECTORS+2B8/s ; LED '5.9.'
LED_5_DOT_5_DOT: set $1212              ; XREF: EXCEPTION_VECTORS+298/s ; LED '5.5.'
LED_5_DOT_4_DOT: set $1219              ; XREF: EXCEPTION_VECTORS+290/s ; LED '5.4.'
LED_5_DOT_D_DOT: set $1221              ; XREF: EXCEPTION_VECTORS+2D8/s ; LED '5.D.'
LED_5_DOT_2_DOT: set $1224              ; XREF: EXCEPTION_VECTORS+280/s ; LED '5.2.'
LED_5_DOT_C_DOT: set $1227              ; XREF: EXCEPTION_VECTORS+2D0/s ; LED '5.C.'
LED_5_DOT_3_DOT: set $1230              ; XREF: EXCEPTION_VECTORS+288/s ; LED '5.3.'
LED_5_DOT_eq_DOT: set $1237             ; LED '5.=.'
LED_5_DOT_neg_DOT: set $123F            ; LED '5.-.'
LED_5_DOT_0_DOT: set $1240              ; XREF: EXCEPTION_VECTORS+270/s ; LED '5.0.'
LED_5_DOT_U_DOT: set $1241              ; LED '5.U.'
LED_5_DOT_vlines_DOT: set $126B         ; LED '5.‖.'
LED_5_DOT_7_DOT: set $1278              ; XREF: EXCEPTION_VECTORS+2A8/s ; LED '5.7.'
LED_5_DOT_1_DOT: set $1279              ; XREF: EXCEPTION_VECTORS+278/s ; LED '5.1.'
LED_5_DOT_uline_DOT: set $127E          ; LED '5.⎺.'
LED_5_DOT___DOT: set $127F              ; LED '5. .'
LED_5_DOT_8:     set $1280              ; LED '5.8'
LED_5_DOT_6:     set $1282              ; LED '5.6'
LED_5_DOT_b:     set $1283              ; LED '5.b'
LED_5_DOT_E:     set $1286              ; LED '5.E'
LED_5_DOT_A:     set $1288              ; LED '5.A'
LED_5_DOT_F:     set $128E              ; LED '5.F'
LED_5_DOT_9:     set $1290              ; LED '5.9'
LED_5_DOT_5:     set $1292              ; LED '5.5'
LED_5_DOT_4:     set $1299              ; LED '5.4'
LED_5_DOT_D:     set $12A1              ; LED '5.D'
LED_5_DOT_2:     set $12A4              ; LED '5.2'
LED_5_DOT_C:     set $12A7              ; LED '5.C'
LED_5_DOT_3:     set $12B0              ; LED '5.3'
LED_5_DOT_eq:    set $12B7              ; LED '5.='
LED_5_DOT_neg:   set $12BF              ; LED '5.-'
LED_5_DOT_0:     set $12C0              ; LED '5.0'
LED_5_DOT_U:     set $12C1              ; LED '5.U'
LED_5_DOT_vlines: set $12EB             ; LED '5.‖'
LED_5_DOT_7:     set $12F8              ; LED '5.7'
LED_5_DOT_1:     set $12F9              ; LED '5.1'
LED_5_DOT_uline: set $12FE              ; LED '5.⎺'
LED_5_DOT__:     set $12FF              ; LED '5. '
LED_4_DOT_8_DOT: set $1900              ; XREF: EXCEPTION_VECTORS+230/s ; LED '4.8.'
LED_4_DOT_6_DOT: set $1902              ; XREF: EXCEPTION_VECTORS+220/s ; LED '4.6.'
LED_4_DOT_b_DOT: set $1903              ; XREF: EXCEPTION_VECTORS+248/s ; LED '4.b.'
LED_4_DOT_E_DOT: set $1906              ; XREF: EXCEPTION_VECTORS+260/s ; LED '4.E.'
LED_4_DOT_A_DOT: set $1908              ; XREF: EXCEPTION_VECTORS+240/s ; LED '4.A.'
LED_4_DOT_F_DOT: set $190E              ; XREF: EXCEPTION_VECTORS+268/s ; LED '4.F.'
LED_4_DOT_9_DOT: set $1910              ; XREF: EXCEPTION_VECTORS+238/s ; LED '4.9.'
LED_4_DOT_5_DOT: set $1912              ; XREF: EXCEPTION_VECTORS+218/s ; LED '4.5.'
LED_4_DOT_4_DOT: set $1919              ; XREF: EXCEPTION_VECTORS+210/s ; LED '4.4.'
LED_4_DOT_D_DOT: set $1921              ; XREF: EXCEPTION_VECTORS:TIMER_A_EXCEPTION/s ; LED '4.D.'
LED_4_DOT_2_DOT: set $1924              ; XREF: EXCEPTION_VECTORS+200/s ; LED '4.2.'
LED_4_DOT_C_DOT: set $1927              ; XREF: EXCEPTION_VECTORS+250/s ; LED '4.C.'
LED_4_DOT_3_DOT: set $1930              ; XREF: EXCEPTION_VECTORS+208/s ; LED '4.3.'
LED_4_DOT_eq_DOT: set $1937             ; LED '4.=.'
LED_4_DOT_neg_DOT: set $193F            ; LED '4.-.'
LED_4_DOT_0_DOT: set $1940              ; XREF: EXCEPTION_VECTORS+1F0/s ; LED '4.0.'
LED_4_DOT_U_DOT: set $1941              ; LED '4.U.'
LED_4_DOT_vlines_DOT: set $196B         ; LED '4.‖.'
LED_4_DOT_7_DOT: set $1978              ; XREF: EXCEPTION_VECTORS+228/s ; LED '4.7.'
LED_4_DOT_1_DOT: set $1979              ; XREF: EXCEPTION_VECTORS+1F8/s ; LED '4.1.'
LED_4_DOT_uline_DOT: set $197E          ; LED '4.⎺.'
LED_4_DOT___DOT: set $197F              ; LED '4. .'
LED_4_DOT_8:     set $1980              ; XREF: START:loc_FA1A6E/s ; LED '4.8'
LED_4_DOT_6:     set $1982              ; XREF: START:loc_FA19A4/s ; LED '4.6'
LED_4_DOT_b:     set $1983              ; LED '4.b'
LED_4_DOT_E:     set $1986              ; LED '4.E'
LED_4_DOT_A:     set $1988              ; XREF: START:loc_FA1B3C/s ; LED '4.A'
LED_4_DOT_F:     set $198E              ; LED '4.F'
LED_4_DOT_9:     set $1990              ; LED '4.9'
LED_4_DOT_5:     set $1992              ; XREF: START:loc_FA18F0/s ; LED '4.5'
LED_4_DOT_4:     set $1999              ; XREF: START:loc_FA1838/s ; LED '4.4'
LED_4_DOT_D:     set $19A1              ; LED '4.D'
LED_4_DOT_2:     set $19A4              ; XREF: START:loc_FA179E/s ; LED '4.2'
LED_4_DOT_C:     set $19A7              ; LED '4.C'
LED_4_DOT_3:     set $19B0              ; LED '4.3'
LED_4_DOT_eq:    set $19B7              ; LED '4.='
LED_4_DOT_neg:   set $19BF              ; LED '4.-'
LED_4_DOT_0:     set $19C0              ; LED '4.0'
LED_4_DOT_U:     set $19C1              ; LED '4.U'
LED_4_DOT_vlines: set $19EB             ; LED '4.‖'
LED_4_DOT_7:     set $19F8              ; LED '4.7'
LED_4_DOT_1:     set $19F9              ; XREF: START:loc_FA14BC/s ; LED '4.1'
LED_4_DOT_uline: set $19FE              ; LED '4.⎺'
LED_4_DOT__:     set $19FF              ; LED '4. '
LED_D_DOT_8_DOT: set $2100              ; XREF: EXCEPTION_VECTORS+6B0/s ; LED 'D.8.'
LED_D_DOT_6_DOT: set $2102              ; XREF: EXCEPTION_VECTORS+6A0/s ; LED 'D.6.'
LED_D_DOT_b_DOT: set $2103              ; XREF: EXCEPTION_VECTORS+6C8/s ; LED 'D.b.'
LED_D_DOT_E_DOT: set $2106              ; XREF: EXCEPTION_VECTORS+6E0/s ; LED 'D.E.'
LED_D_DOT_A_DOT: set $2108              ; XREF: EXCEPTION_VECTORS+6C0/s ; LED 'D.A.'
LED_D_DOT_F_DOT: set $210E              ; XREF: EXCEPTION_VECTORS+6E8/s ; LED 'D.F.'
LED_D_DOT_9_DOT: set $2110              ; XREF: EXCEPTION_VECTORS+6B8/s ; LED 'D.9.'
LED_D_DOT_5_DOT: set $2112              ; XREF: EXCEPTION_VECTORS+698/s ; LED 'D.5.'
LED_D_DOT_4_DOT: set $2119              ; XREF: EXCEPTION_VECTORS+690/s ; LED 'D.4.'
LED_D_DOT_D_DOT: set $2121              ; XREF: EXCEPTION_VECTORS+6D8/s ; LED 'D.D.'
LED_D_DOT_2_DOT: set $2124              ; XREF: EXCEPTION_VECTORS+680/s ; LED 'D.2.'
LED_D_DOT_C_DOT: set $2127              ; XREF: EXCEPTION_VECTORS+6D0/s ; LED 'D.C.'
LED_D_DOT_3_DOT: set $2130              ; XREF: EXCEPTION_VECTORS+688/s ; LED 'D.3.'
LED_D_DOT_eq_DOT: set $2137             ; LED 'D.=.'
LED_D_DOT_neg_DOT: set $213F            ; LED 'D.-.'
LED_D_DOT_0_DOT: set $2140              ; XREF: EXCEPTION_VECTORS+670/s ; LED 'D.0.'
LED_D_DOT_U_DOT: set $2141              ; LED 'D.U.'
LED_D_DOT_vlines_DOT: set $216B         ; LED 'D.‖.'
LED_D_DOT_7_DOT: set $2178              ; XREF: EXCEPTION_VECTORS+6A8/s ; LED 'D.7.'
LED_D_DOT_1_DOT: set $2179              ; XREF: EXCEPTION_VECTORS+678/s ; LED 'D.1.'
LED_D_DOT_uline_DOT: set $217E          ; LED 'D.⎺.'
LED_D_DOT___DOT: set $217F              ; LED 'D. .'
LED_D_DOT_8:     set $2180              ; LED 'D.8'
LED_D_DOT_6:     set $2182              ; LED 'D.6'
LED_D_DOT_b:     set $2183              ; LED 'D.b'
LED_D_DOT_E:     set $2186              ; LED 'D.E'
LED_D_DOT_A:     set $2188              ; LED 'D.A'
LED_D_DOT_F:     set $218E              ; LED 'D.F'
LED_D_DOT_9:     set $2190              ; LED 'D.9'
LED_D_DOT_5:     set $2192              ; LED 'D.5'
LED_D_DOT_4:     set $2199              ; LED 'D.4'
LED_D_DOT_D:     set $21A1              ; LED 'D.D'
LED_D_DOT_2:     set $21A4              ; LED 'D.2'
LED_D_DOT_C:     set $21A7              ; LED 'D.C'
LED_D_DOT_3:     set $21B0              ; LED 'D.3'
LED_D_DOT_eq:    set $21B7              ; LED 'D.='
LED_D_DOT_neg:   set $21BF              ; LED 'D.-'
LED_D_DOT_0:     set $21C0              ; LED 'D.0'
LED_D_DOT_U:     set $21C1              ; LED 'D.U'
LED_D_DOT_vlines: set $21EB             ; LED 'D.‖'
LED_D_DOT_7:     set $21F8              ; LED 'D.7'
LED_D_DOT_1:     set $21F9              ; LED 'D.1'
LED_D_DOT_uline: set $21FE              ; LED 'D.⎺'
LED_D_DOT__:     set $21FF              ; LED 'D. '
LED_2_DOT_8_DOT: set $2400              ; XREF: EXCEPTION_VECTORS+130/s ; LED '2.8.'
LED_2_DOT_6_DOT: set $2402              ; XREF: EXCEPTION_VECTORS+120/s ; LED '2.6.'
LED_2_DOT_b_DOT: set $2403              ; XREF: EXCEPTION_VECTORS+148/s ; LED '2.b.'
LED_2_DOT_E_DOT: set $2406              ; XREF: EXCEPTION_VECTORS+160/s ; LED '2.E.'
LED_2_DOT_A_DOT: set $2408              ; XREF: EXCEPTION_VECTORS+140/s ; LED '2.A.'
LED_2_DOT_F_DOT: set $240E              ; XREF: EXCEPTION_VECTORS+168/s ; LED '2.F.'
LED_2_DOT_9_DOT: set $2410              ; XREF: EXCEPTION_VECTORS+138/s ; LED '2.9.'
LED_2_DOT_5_DOT: set $2412              ; XREF: EXCEPTION_VECTORS+118/s ; LED '2.5.'
LED_2_DOT_4_DOT: set $2419              ; XREF: EXCEPTION_VECTORS+110/s ; LED '2.4.'
LED_2_DOT_D_DOT: set $2421              ; XREF: EXCEPTION_VECTORS+158/s ; LED '2.D.'
LED_2_DOT_2_DOT: set $2424              ; XREF: EXCEPTION_VECTORS+100/s ; LED '2.2.'
LED_2_DOT_C_DOT: set $2427              ; XREF: EXCEPTION_VECTORS+150/s ; LED '2.C.'
LED_2_DOT_3_DOT: set $2430              ; XREF: EXCEPTION_VECTORS+108/s ; LED '2.3.'
LED_2_DOT_eq_DOT: set $2437             ; LED '2.=.'
LED_2_DOT_neg_DOT: set $243F            ; LED '2.-.'
LED_2_DOT_0_DOT: set $2440              ; XREF: EXCEPTION_VECTORS+F0/s ; LED '2.0.'
LED_2_DOT_U_DOT: set $2441              ; LED '2.U.'
LED_2_DOT_vlines_DOT: set $246B         ; LED '2.‖.'
LED_2_DOT_7_DOT: set $2478              ; XREF: EXCEPTION_VECTORS+128/s ; LED '2.7.'
LED_2_DOT_1_DOT: set $2479              ; XREF: EXCEPTION_VECTORS+F8/s ; LED '2.1.'
LED_2_DOT_uline_DOT: set $247E          ; LED '2.⎺.'
LED_2_DOT___DOT: set $247F              ; LED '2. .'
LED_2_DOT_8:     set $2480              ; XREF: START:loc_FA117E/s ; LED '2.8'
LED_2_DOT_6:     set $2482              ; LED '2.6'
LED_2_DOT_b:     set $2483              ; LED '2.b'
LED_2_DOT_E:     set $2486              ; LED '2.E'
LED_2_DOT_A:     set $2488              ; LED '2.A'
LED_2_DOT_F:     set $248E              ; LED '2.F'
LED_2_DOT_9:     set $2490              ; LED '2.9'
LED_2_DOT_5:     set $2492              ; LED '2.5'
LED_2_DOT_4:     set $2499              ; LED '2.4'
LED_2_DOT_D:     set $24A1              ; LED '2.D'
LED_2_DOT_2:     set $24A4              ; LED '2.2'
LED_2_DOT_C:     set $24A7              ; LED '2.C'
LED_2_DOT_3:     set $24B0              ; LED '2.3'
LED_2_DOT_eq:    set $24B7              ; LED '2.='
LED_2_DOT_neg:   set $24BF              ; LED '2.-'
LED_2_DOT_0:     set $24C0              ; XREF: START:loc_FA10A2/s ; LED '2.0'
LED_2_DOT_U:     set $24C1              ; LED '2.U'
LED_2_DOT_vlines: set $24EB             ; LED '2.‖'
LED_2_DOT_7:     set $24F8              ; LED '2.7'
LED_2_DOT_1:     set $24F9              ; LED '2.1'
LED_2_DOT_uline: set $24FE              ; LED '2.⎺'
LED_2_DOT__:     set $24FF              ; LED '2. '
LED_C_DOT_8_DOT: set $2700              ; XREF: EXCEPTION_VECTORS+630/s ; LED 'C.8.'
LED_C_DOT_6_DOT: set $2702              ; XREF: EXCEPTION_VECTORS+620/s ; LED 'C.6.'
LED_C_DOT_b_DOT: set $2703              ; XREF: EXCEPTION_VECTORS+648/s ; LED 'C.b.'
LED_C_DOT_E_DOT: set $2706              ; XREF: EXCEPTION_VECTORS+660/s ; LED 'C.E.'
LED_C_DOT_A_DOT: set $2708              ; XREF: EXCEPTION_VECTORS+640/s ; LED 'C.A.'
LED_C_DOT_F_DOT: set $270E              ; XREF: EXCEPTION_VECTORS+668/s ; LED 'C.F.'
LED_C_DOT_9_DOT: set $2710              ; XREF: EXCEPTION_VECTORS+638/s ; LED 'C.9.'
LED_C_DOT_5_DOT: set $2712              ; XREF: EXCEPTION_VECTORS+618/s ; LED 'C.5.'
LED_C_DOT_4_DOT: set $2719              ; XREF: EXCEPTION_VECTORS+610/s ; LED 'C.4.'
LED_C_DOT_D_DOT: set $2721              ; XREF: EXCEPTION_VECTORS+658/s ; LED 'C.D.'
LED_C_DOT_2_DOT: set $2724              ; XREF: EXCEPTION_VECTORS+600/s ; LED 'C.2.'
LED_C_DOT_C_DOT: set $2727              ; XREF: EXCEPTION_VECTORS+650/s ; LED 'C.C.'
LED_C_DOT_3_DOT: set $2730              ; XREF: EXCEPTION_VECTORS+608/s ; LED 'C.3.'
LED_C_DOT_eq_DOT: set $2737             ; LED 'C.=.'
LED_C_DOT_neg_DOT: set $273F            ; LED 'C.-.'
LED_C_DOT_0_DOT: set $2740              ; XREF: EXCEPTION_VECTORS+5F0/s ; LED 'C.0.'
LED_C_DOT_U_DOT: set $2741              ; LED 'C.U.'
LED_C_DOT_vlines_DOT: set $276B         ; LED 'C.‖.'
LED_C_DOT_7_DOT: set $2778              ; XREF: EXCEPTION_VECTORS+628/s ; LED 'C.7.'
LED_C_DOT_1_DOT: set $2779              ; XREF: EXCEPTION_VECTORS+5F8/s ; LED 'C.1.'
LED_C_DOT_uline_DOT: set $277E          ; LED 'C.⎺.'
LED_C_DOT___DOT: set $277F              ; LED 'C. .'
LED_C_DOT_8:     set $2780              ; LED 'C.8'
LED_C_DOT_6:     set $2782              ; LED 'C.6'
LED_C_DOT_b:     set $2783              ; LED 'C.b'
LED_C_DOT_E:     set $2786              ; LED 'C.E'
LED_C_DOT_A:     set $2788              ; LED 'C.A'
LED_C_DOT_F:     set $278E              ; LED 'C.F'
LED_C_DOT_9:     set $2790              ; LED 'C.9'
LED_C_DOT_5:     set $2792              ; LED 'C.5'
LED_C_DOT_4:     set $2799              ; LED 'C.4'
LED_C_DOT_D:     set $27A1              ; LED 'C.D'
LED_C_DOT_2:     set $27A4              ; LED 'C.2'
LED_C_DOT_C:     set $27A7              ; LED 'C.C'
LED_C_DOT_3:     set $27B0              ; LED 'C.3'
LED_C_DOT_eq:    set $27B7              ; LED 'C.='
LED_C_DOT_neg:   set $27BF              ; LED 'C.-'
LED_C_DOT_0:     set $27C0              ; LED 'C.0'
LED_C_DOT_U:     set $27C1              ; LED 'C.U'
LED_C_DOT_vlines: set $27EB             ; LED 'C.‖'
LED_C_DOT_7:     set $27F8              ; LED 'C.7'
LED_C_DOT_1:     set $27F9              ; LED 'C.1'
LED_C_DOT_uline: set $27FE              ; LED 'C.⎺'
LED_C_DOT__:     set $27FF              ; LED 'C. '
LED_3_DOT_8_DOT: set $3000              ; XREF: EXCEPTION_VECTORS+1B0/s ; LED '3.8.'
LED_3_DOT_6_DOT: set $3002              ; XREF: EXCEPTION_VECTORS+1A0/s ; LED '3.6.'
LED_3_DOT_b_DOT: set $3003              ; XREF: EXCEPTION_VECTORS+1C8/s ; LED '3.b.'
LED_3_DOT_E_DOT: set $3006              ; XREF: EXCEPTION_VECTORS+1E0/s ; LED '3.E.'
LED_3_DOT_A_DOT: set $3008              ; XREF: EXCEPTION_VECTORS+1C0/s ; LED '3.A.'
LED_3_DOT_F_DOT: set $300E              ; XREF: EXCEPTION_VECTORS+1E8/s ; LED '3.F.'
LED_3_DOT_9_DOT: set $3010              ; XREF: EXCEPTION_VECTORS+1B8/s ; LED '3.9.'
LED_3_DOT_5_DOT: set $3012              ; XREF: EXCEPTION_VECTORS+198/s ; LED '3.5.'
LED_3_DOT_4_DOT: set $3019              ; XREF: EXCEPTION_VECTORS+190/s ; LED '3.4.'
LED_3_DOT_D_DOT: set $3021              ; XREF: EXCEPTION_VECTORS+1D8/s ; LED '3.D.'
LED_3_DOT_2_DOT: set $3024              ; XREF: EXCEPTION_VECTORS+180/s ; LED '3.2.'
LED_3_DOT_C_DOT: set $3027              ; XREF: EXCEPTION_VECTORS+1D0/s ; LED '3.C.'
LED_3_DOT_3_DOT: set $3030              ; XREF: EXCEPTION_VECTORS+188/s ; LED '3.3.'
LED_3_DOT_eq_DOT: set $3037             ; LED '3.=.'
LED_3_DOT_neg_DOT: set $303F            ; LED '3.-.'
LED_3_DOT_0_DOT: set $3040              ; XREF: EXCEPTION_VECTORS+170/s ; LED '3.0.'
LED_3_DOT_U_DOT: set $3041              ; LED '3.U.'
LED_3_DOT_vlines_DOT: set $306B         ; LED '3.‖.'
LED_3_DOT_7_DOT: set $3078              ; XREF: EXCEPTION_VECTORS+1A8/s ; LED '3.7.'
LED_3_DOT_1_DOT: set $3079              ; XREF: EXCEPTION_VECTORS+178/s ; LED '3.1.'
LED_3_DOT_uline_DOT: set $307E          ; LED '3.⎺.'
LED_3_DOT___DOT: set $307F              ; LED '3. .'
LED_3_DOT_8:     set $3080              ; LED '3.8'
LED_3_DOT_6:     set $3082              ; LED '3.6'
LED_3_DOT_b:     set $3083              ; LED '3.b'
LED_3_DOT_E:     set $3086              ; LED '3.E'
LED_3_DOT_A:     set $3088              ; LED '3.A'
LED_3_DOT_F:     set $308E              ; LED '3.F'
LED_3_DOT_9:     set $3090              ; LED '3.9'
LED_3_DOT_5:     set $3092              ; LED '3.5'
LED_3_DOT_4:     set $3099              ; LED '3.4'
LED_3_DOT_D:     set $30A1              ; LED '3.D'
LED_3_DOT_2:     set $30A4              ; LED '3.2'
LED_3_DOT_C:     set $30A7              ; LED '3.C'
LED_3_DOT_3:     set $30B0              ; LED '3.3'
LED_3_DOT_eq:    set $30B7              ; LED '3.='
LED_3_DOT_neg:   set $30BF              ; LED '3.-'
LED_3_DOT_0:     set $30C0              ; XREF: START:loc_FA124E/s
                                        ; START:loc_FA1300/s ; LED '3.0'
LED_3_DOT_U:     set $30C1              ; LED '3.U'
LED_3_DOT_vlines: set $30EB             ; LED '3.‖'
LED_3_DOT_7:     set $30F8              ; LED '3.7'
LED_3_DOT_1:     set $30F9              ; LED '3.1'
LED_3_DOT_uline: set $30FE              ; LED '3.⎺'
LED_3_DOT__:     set $30FF              ; LED '3. '
LED_eq_DOT_8_DOT: set $3700             ; LED '=.8.'
LED_eq_DOT_6_DOT: set $3702             ; LED '=.6.'
LED_eq_DOT_b_DOT: set $3703             ; LED '=.b.'
LED_eq_DOT_E_DOT: set $3706             ; LED '=.E.'
LED_eq_DOT_A_DOT: set $3708             ; LED '=.A.'
LED_eq_DOT_F_DOT: set $370E             ; LED '=.F.'
LED_eq_DOT_9_DOT: set $3710             ; LED '=.9.'
LED_eq_DOT_5_DOT: set $3712             ; LED '=.5.'
LED_eq_DOT_4_DOT: set $3719             ; LED '=.4.'
LED_eq_DOT_D_DOT: set $3721             ; LED '=.D.'
LED_eq_DOT_2_DOT: set $3724             ; LED '=.2.'
LED_eq_DOT_C_DOT: set $3727             ; LED '=.C.'
LED_eq_DOT_3_DOT: set $3730             ; LED '=.3.'
LED_eq_DOT_eq_DOT: set $3737            ; LED '=.=.'
LED_eq_DOT_neg_DOT: set $373F           ; LED '=.-.'
LED_eq_DOT_0_DOT: set $3740             ; LED '=.0.'
LED_eq_DOT_U_DOT: set $3741             ; LED '=.U.'
LED_eq_DOT_vlines_DOT: set $376B        ; LED '=.‖.'
LED_eq_DOT_7_DOT: set $3778             ; LED '=.7.'
LED_eq_DOT_1_DOT: set $3779             ; LED '=.1.'
LED_eq_DOT_uline_DOT: set $377E         ; LED '=.⎺.'
LED_eq_DOT___DOT: set $377F             ; LED '=. .'
LED_eq_DOT_8:    set $3780              ; LED '=.8'
LED_eq_DOT_6:    set $3782              ; LED '=.6'
LED_eq_DOT_b:    set $3783              ; LED '=.b'
LED_eq_DOT_E:    set $3786              ; LED '=.E'
LED_eq_DOT_A:    set $3788              ; LED '=.A'
LED_eq_DOT_F:    set $378E              ; LED '=.F'
LED_eq_DOT_9:    set $3790              ; LED '=.9'
LED_eq_DOT_5:    set $3792              ; LED '=.5'
LED_eq_DOT_4:    set $3799              ; LED '=.4'
LED_eq_DOT_D:    set $37A1              ; LED '=.D'
LED_eq_DOT_2:    set $37A4              ; LED '=.2'
LED_eq_DOT_C:    set $37A7              ; LED '=.C'
LED_eq_DOT_3:    set $37B0              ; LED '=.3'
LED_eq_DOT_eq:   set $37B7              ; LED '=.='
LED_eq_DOT_neg:  set $37BF              ; LED '=.-'
LED_eq_DOT_0:    set $37C0              ; LED '=.0'
LED_eq_DOT_U:    set $37C1              ; LED '=.U'
LED_eq_DOT_vlines: set $37EB            ; LED '=.‖'
LED_eq_DOT_7:    set $37F8              ; LED '=.7'
LED_eq_DOT_1:    set $37F9              ; LED '=.1'
LED_eq_DOT_uline: set $37FE             ; LED '=.⎺'
LED_eq_DOT__:    set $37FF              ; LED '=. '
LED_neg_DOT_8_DOT: set $3F00            ; LED '-.8.'
LED_neg_DOT_6_DOT: set $3F02            ; LED '-.6.'
LED_neg_DOT_b_DOT: set $3F03            ; LED '-.b.'
LED_neg_DOT_E_DOT: set $3F06            ; LED '-.E.'
LED_neg_DOT_A_DOT: set $3F08            ; LED '-.A.'
LED_neg_DOT_F_DOT: set $3F0E            ; LED '-.F.'
LED_neg_DOT_9_DOT: set $3F10            ; LED '-.9.'
LED_neg_DOT_5_DOT: set $3F12            ; LED '-.5.'
LED_neg_DOT_4_DOT: set $3F19            ; LED '-.4.'
LED_neg_DOT_D_DOT: set $3F21            ; LED '-.D.'
LED_neg_DOT_2_DOT: set $3F24            ; LED '-.2.'
LED_neg_DOT_C_DOT: set $3F27            ; LED '-.C.'
LED_neg_DOT_3_DOT: set $3F30            ; LED '-.3.'
LED_neg_DOT_eq_DOT: set $3F37           ; LED '-.=.'
LED_neg_DOT_neg_DOT: set $3F3F          ; LED '-.-.'
LED_neg_DOT_0_DOT: set $3F40            ; LED '-.0.'
LED_neg_DOT_U_DOT: set $3F41            ; LED '-.U.'
LED_neg_DOT_vlines_DOT: set $3F6B       ; LED '-.‖.'
LED_neg_DOT_7_DOT: set $3F78            ; LED '-.7.'
LED_neg_DOT_1_DOT: set $3F79            ; LED '-.1.'
LED_neg_DOT_uline_DOT: set $3F7E        ; LED '-.⎺.'
LED_neg_DOT___DOT: set $3F7F            ; LED '-. .'
LED_neg_DOT_8:   set $3F80              ; LED '-.8'
LED_neg_DOT_6:   set $3F82              ; LED '-.6'
LED_neg_DOT_b:   set $3F83              ; LED '-.b'
LED_neg_DOT_E:   set $3F86              ; LED '-.E'
LED_neg_DOT_A:   set $3F88              ; LED '-.A'
LED_neg_DOT_F:   set $3F8E              ; LED '-.F'
LED_neg_DOT_9:   set $3F90              ; LED '-.9'
LED_neg_DOT_5:   set $3F92              ; LED '-.5'
LED_neg_DOT_4:   set $3F99              ; LED '-.4'
LED_neg_DOT_D:   set $3FA1              ; LED '-.D'
LED_neg_DOT_2:   set $3FA4              ; LED '-.2'
LED_neg_DOT_C:   set $3FA7              ; LED '-.C'
LED_neg_DOT_3:   set $3FB0              ; LED '-.3'
LED_neg_DOT_eq:  set $3FB7              ; LED '-.='
LED_neg_DOT_neg: set $3FBF              ; LED '-.-'
LED_neg_DOT_0:   set $3FC0              ; LED '-.0'
LED_neg_DOT_U:   set $3FC1              ; LED '-.U'
LED_neg_DOT_vlines: set $3FEB           ; LED '-.‖'
LED_neg_DOT_7:   set $3FF8              ; LED '-.7'
LED_neg_DOT_1:   set $3FF9              ; LED '-.1'
LED_neg_DOT_uline: set $3FFE            ; LED '-.⎺'
LED_neg_DOT__:   set $3FFF              ; LED '-. '
LED_0_DOT_8_DOT: set $4000              ; XREF: EXCEPTION_VECTORS+30/s ; LED '0.8.'
LED_0_DOT_6_DOT: set $4002              ; XREF: EXCEPTION_VECTORS+20/s ; LED '0.6.'
LED_0_DOT_b_DOT: set $4003              ; XREF: EXCEPTION_VECTORS+48/s ; LED '0.b.'
LED_0_DOT_E_DOT: set $4006              ; XREF: EXCEPTION_VECTORS+60/s ; LED '0.E.'
LED_0_DOT_A_DOT: set $4008              ; XREF: EXCEPTION_VECTORS+40/s ; LED '0.A.'
LED_0_DOT_F_DOT: set $400E              ; XREF: EXCEPTION_VECTORS+68/s ; LED '0.F.'
LED_0_DOT_9_DOT: set $4010              ; XREF: EXCEPTION_VECTORS+38/s ; LED '0.9.'
LED_0_DOT_5_DOT: set $4012              ; XREF: EXCEPTION_VECTORS+18/s ; LED '0.5.'
LED_0_DOT_4_DOT: set $4019              ; XREF: EXCEPTION_VECTORS+10/s ; LED '0.4.'
LED_0_DOT_D_DOT: set $4021              ; XREF: EXCEPTION_VECTORS+58/s ; LED '0.D.'
LED_0_DOT_2_DOT: set $4024              ; XREF: EXCEPTION_VECTORS/s ; LED '0.2.'
LED_0_DOT_C_DOT: set $4027              ; XREF: EXCEPTION_VECTORS+50/s ; LED '0.C.'
LED_0_DOT_3_DOT: set $4030              ; XREF: EXCEPTION_VECTORS+8/s ; LED '0.3.'
LED_0_DOT_eq_DOT: set $4037             ; LED '0.=.'
LED_0_DOT_neg_DOT: set $403F            ; LED '0.-.'
LED_0_DOT_0_DOT: set $4040              ; LED '0.0.'
LED_0_DOT_U_DOT: set $4041              ; LED '0.U.'
LED_0_DOT_vlines_DOT: set $406B         ; LED '0.‖.'
LED_0_DOT_7_DOT: set $4078              ; XREF: EXCEPTION_VECTORS+28/s ; LED '0.7.'
LED_0_DOT_1_DOT: set $4079              ; LED '0.1.'
LED_0_DOT_uline_DOT: set $407E          ; LED '0.⎺.'
LED_0_DOT___DOT: set $407F              ; LED '0. .'
LED_0_DOT_8:     set $4080              ; XREF: START:loc_FA050E/s ; LED '0.8'
LED_0_DOT_6:     set $4082              ; LED '0.6'
LED_0_DOT_b:     set $4083              ; LED '0.b'
LED_0_DOT_E:     set $4086              ; LED '0.E'
LED_0_DOT_A:     set $4088              ; XREF: START:loc_FA077E/s ; LED '0.A'
LED_0_DOT_F:     set $408E              ; LED '0.F'
LED_0_DOT_9:     set $4090              ; XREF: START:loc_FA0726/s ; LED '0.9'
LED_0_DOT_5:     set $4092              ; LED '0.5'
LED_0_DOT_4:     set $4099              ; LED '0.4'
LED_0_DOT_D:     set $40A1              ; LED '0.D'
LED_0_DOT_2:     set $40A4              ; LED '0.2'
LED_0_DOT_C:     set $40A7              ; LED '0.C'
LED_0_DOT_3:     set $40B0              ; XREF: START:TEST_03_COMMON_VOLTAGE_LOW/s
                                        ; START:TEST_03_REFERENCE_VOLTAGE_LOW/s ; LED '0.3'
LED_0_DOT_eq:    set $40B7              ; LED '0.='
LED_0_DOT_neg:   set $40BF              ; LED '0.-'
LED_0_DOT_0:     set $40C0              ; LED '0.0'
LED_0_DOT_U:     set $40C1              ; LED '0.U'
LED_0_DOT_vlines: set $40EB             ; LED '0.‖'
LED_0_DOT_7:     set $40F8              ; LED '0.7'
LED_0_DOT_1:     set $40F9              ; XREF: START:loc_FA0156/s ; LED '0.1'
LED_0_DOT_uline: set $40FE              ; LED '0.⎺'
LED_0_DOT__:     set $40FF              ; LED '0. '
LED_U_DOT_8_DOT: set $4100              ; LED 'U.8.'
LED_U_DOT_6_DOT: set $4102              ; LED 'U.6.'
LED_U_DOT_b_DOT: set $4103              ; LED 'U.b.'
LED_U_DOT_E_DOT: set $4106              ; XREF: EXCEPTION_VECTORS:VECTOR_ENTRY_UE/s ; LED 'U.E.'
LED_U_DOT_A_DOT: set $4108              ; LED 'U.A.'
LED_U_DOT_F_DOT: set $410E              ; LED 'U.F.'
LED_U_DOT_9_DOT: set $4110              ; LED 'U.9.'
LED_U_DOT_5_DOT: set $4112              ; LED 'U.5.'
LED_U_DOT_4_DOT: set $4119              ; LED 'U.4.'
LED_U_DOT_D_DOT: set $4121              ; LED 'U.D.'
LED_U_DOT_2_DOT: set $4124              ; LED 'U.2.'
LED_U_DOT_C_DOT: set $4127              ; LED 'U.C.'
LED_U_DOT_3_DOT: set $4130              ; LED 'U.3.'
LED_U_DOT_eq_DOT: set $4137             ; LED 'U.=.'
LED_U_DOT_neg_DOT: set $413F            ; LED 'U.-.'
LED_U_DOT_0_DOT: set $4140              ; LED 'U.0.'
LED_U_DOT_U_DOT: set $4141              ; LED 'U.U.'
LED_U_DOT_vlines_DOT: set $416B         ; LED 'U.‖.'
LED_U_DOT_7_DOT: set $4178              ; LED 'U.7.'
LED_U_DOT_1_DOT: set $4179              ; LED 'U.1.'
LED_U_DOT_uline_DOT: set $417E          ; LED 'U.⎺.'
LED_U_DOT___DOT: set $417F              ; LED 'U. .'
LED_U_DOT_8:     set $4180              ; LED 'U.8'
LED_U_DOT_6:     set $4182              ; LED 'U.6'
LED_U_DOT_b:     set $4183              ; LED 'U.b'
LED_U_DOT_E:     set $4186              ; LED 'U.E'
LED_U_DOT_A:     set $4188              ; LED 'U.A'
LED_U_DOT_F:     set $418E              ; LED 'U.F'
LED_U_DOT_9:     set $4190              ; LED 'U.9'
LED_U_DOT_5:     set $4192              ; LED 'U.5'
LED_U_DOT_4:     set $4199              ; LED 'U.4'
LED_U_DOT_D:     set $41A1              ; LED 'U.D'
LED_U_DOT_2:     set $41A4              ; LED 'U.2'
LED_U_DOT_C:     set $41A7              ; LED 'U.C'
LED_U_DOT_3:     set $41B0              ; LED 'U.3'
LED_U_DOT_eq:    set $41B7              ; LED 'U.='
LED_U_DOT_neg:   set $41BF              ; LED 'U.-'
LED_U_DOT_0:     set $41C0              ; LED 'U.0'
LED_U_DOT_U:     set $41C1              ; LED 'U.U'
LED_U_DOT_vlines: set $41EB             ; LED 'U.‖'
LED_U_DOT_7:     set $41F8              ; LED 'U.7'
LED_U_DOT_1:     set $41F9              ; LED 'U.1'
LED_U_DOT_uline: set $41FE              ; LED 'U.⎺'
LED_U_DOT__:     set $41FF              ; LED 'U. '
LED_vlines_DOT_8_DOT: set $6B00         ; LED '‖.8.'
LED_vlines_DOT_6_DOT: set $6B02         ; LED '‖.6.'
LED_vlines_DOT_b_DOT: set $6B03         ; LED '‖.b.'
LED_vlines_DOT_E_DOT: set $6B06         ; LED '‖.E.'
LED_vlines_DOT_A_DOT: set $6B08         ; LED '‖.A.'
LED_vlines_DOT_F_DOT: set $6B0E         ; LED '‖.F.'
LED_vlines_DOT_9_DOT: set $6B10         ; LED '‖.9.'
LED_vlines_DOT_5_DOT: set $6B12         ; LED '‖.5.'
LED_vlines_DOT_4_DOT: set $6B19         ; LED '‖.4.'
LED_vlines_DOT_D_DOT: set $6B21         ; LED '‖.D.'
LED_vlines_DOT_2_DOT: set $6B24         ; LED '‖.2.'
LED_vlines_DOT_C_DOT: set $6B27         ; LED '‖.C.'
LED_vlines_DOT_3_DOT: set $6B30         ; LED '‖.3.'
LED_vlines_DOT_eq_DOT: set $6B37        ; LED '‖.=.'
LED_vlines_DOT_neg_DOT: set $6B3F       ; LED '‖.-.'
LED_vlines_DOT_0_DOT: set $6B40         ; LED '‖.0.'
LED_vlines_DOT_U_DOT: set $6B41         ; LED '‖.U.'
LED_vlines_DOT_vlines_DOT: set $6B6B    ; LED '‖.‖.'
LED_vlines_DOT_7_DOT: set $6B78         ; LED '‖.7.'
LED_vlines_DOT_1_DOT: set $6B79         ; LED '‖.1.'
LED_vlines_DOT_uline_DOT: set $6B7E     ; LED '‖.⎺.'
LED_vlines_DOT___DOT: set $6B7F         ; LED '‖. .'
LED_vlines_DOT_8: set $6B80             ; LED '‖.8'
LED_vlines_DOT_6: set $6B82             ; LED '‖.6'
LED_vlines_DOT_b: set $6B83             ; LED '‖.b'
LED_vlines_DOT_E: set $6B86             ; LED '‖.E'
LED_vlines_DOT_A: set $6B88             ; LED '‖.A'
LED_vlines_DOT_F: set $6B8E             ; LED '‖.F'
LED_vlines_DOT_9: set $6B90             ; LED '‖.9'
LED_vlines_DOT_5: set $6B92             ; LED '‖.5'
LED_vlines_DOT_4: set $6B99             ; LED '‖.4'
LED_vlines_DOT_D: set $6BA1             ; LED '‖.D'
LED_vlines_DOT_2: set $6BA4             ; LED '‖.2'
LED_vlines_DOT_C: set $6BA7             ; LED '‖.C'
LED_vlines_DOT_3: set $6BB0             ; LED '‖.3'
LED_vlines_DOT_eq: set $6BB7            ; LED '‖.='
LED_vlines_DOT_neg: set $6BBF           ; LED '‖.-'
LED_vlines_DOT_0: set $6BC0             ; LED '‖.0'
LED_vlines_DOT_U: set $6BC1             ; LED '‖.U'
LED_vlines_DOT_vlines: set $6BEB        ; LED '‖.‖'
LED_vlines_DOT_7: set $6BF8             ; LED '‖.7'
LED_vlines_DOT_1: set $6BF9             ; LED '‖.1'
LED_vlines_DOT_uline: set $6BFE         ; LED '‖.⎺'
LED_vlines_DOT__: set $6BFF             ; LED '‖. '
LED_7_DOT_8_DOT: set $7800              ; XREF: EXCEPTION_VECTORS+3B0/s ; LED '7.8.'
LED_7_DOT_6_DOT: set $7802              ; XREF: EXCEPTION_VECTORS+3A0/s ; LED '7.6.'
LED_7_DOT_b_DOT: set $7803              ; XREF: EXCEPTION_VECTORS+3C8/s ; LED '7.b.'
LED_7_DOT_E_DOT: set $7806              ; XREF: EXCEPTION_VECTORS+3E0/s ; LED '7.E.'
LED_7_DOT_A_DOT: set $7808              ; XREF: EXCEPTION_VECTORS+3C0/s ; LED '7.A.'
LED_7_DOT_F_DOT: set $780E              ; XREF: EXCEPTION_VECTORS+3E8/s ; LED '7.F.'
LED_7_DOT_9_DOT: set $7810              ; XREF: EXCEPTION_VECTORS+3B8/s ; LED '7.9.'
LED_7_DOT_5_DOT: set $7812              ; XREF: EXCEPTION_VECTORS+398/s ; LED '7.5.'
LED_7_DOT_4_DOT: set $7819              ; XREF: EXCEPTION_VECTORS+390/s ; LED '7.4.'
LED_7_DOT_D_DOT: set $7821              ; XREF: EXCEPTION_VECTORS+3D8/s ; LED '7.D.'
LED_7_DOT_2_DOT: set $7824              ; XREF: EXCEPTION_VECTORS+380/s ; LED '7.2.'
LED_7_DOT_C_DOT: set $7827              ; XREF: EXCEPTION_VECTORS+3D0/s ; LED '7.C.'
LED_7_DOT_3_DOT: set $7830              ; XREF: EXCEPTION_VECTORS+388/s ; LED '7.3.'
LED_7_DOT_eq_DOT: set $7837             ; LED '7.=.'
LED_7_DOT_neg_DOT: set $783F            ; LED '7.-.'
LED_7_DOT_0_DOT: set $7840              ; XREF: EXCEPTION_VECTORS+370/s ; LED '7.0.'
LED_7_DOT_U_DOT: set $7841              ; LED '7.U.'
LED_7_DOT_vlines_DOT: set $786B         ; LED '7.‖.'
LED_7_DOT_7_DOT: set $7878              ; XREF: EXCEPTION_VECTORS+3A8/s ; LED '7.7.'
LED_7_DOT_1_DOT: set $7879              ; XREF: EXCEPTION_VECTORS+378/s ; LED '7.1.'
LED_7_DOT_uline_DOT: set $787E          ; LED '7.⎺.'
LED_7_DOT___DOT: set $787F              ; LED '7. .'
LED_7_DOT_8:     set $7880              ; XREF: START:loc_FA23C4/s ; LED '7.8'
LED_7_DOT_6:     set $7882              ; LED '7.6'
LED_7_DOT_b:     set $7883              ; LED '7.b'
LED_7_DOT_E:     set $7886              ; LED '7.E'
LED_7_DOT_A:     set $7888              ; XREF: START:loc_FA243A/s
                                        ; START:loc_FA24F6/s ... ; LED '7.A'
LED_7_DOT_F:     set $788E              ; LED '7.F'
LED_7_DOT_9:     set $7890              ; LED '7.9'
LED_7_DOT_5:     set $7892              ; LED '7.5'
LED_7_DOT_4:     set $7899              ; LED '7.4'
LED_7_DOT_D:     set $78A1              ; LED '7.D'
LED_7_DOT_2:     set $78A4              ; LED '7.2'
LED_7_DOT_C:     set $78A7              ; LED '7.C'
LED_7_DOT_3:     set $78B0              ; LED '7.3'
LED_7_DOT_eq:    set $78B7              ; LED '7.='
LED_7_DOT_neg:   set $78BF              ; LED '7.-'
LED_7_DOT_0:     set $78C0              ; XREF: START:loc_FA22C4/s ; LED '7.0'
LED_7_DOT_U:     set $78C1              ; LED '7.U'
LED_7_DOT_vlines: set $78EB             ; LED '7.‖'
LED_7_DOT_7:     set $78F8              ; LED '7.7'
LED_7_DOT_1:     set $78F9              ; LED '7.1'
LED_7_DOT_uline: set $78FE              ; LED '7.⎺'
LED_7_DOT__:     set $78FF              ; LED '7. '
LED_1_DOT_8_DOT: set $7900              ; XREF: EXCEPTION_VECTORS+B0/s ; LED '1.8.'
LED_1_DOT_6_DOT: set $7902              ; XREF: EXCEPTION_VECTORS+A0/s ; LED '1.6.'
LED_1_DOT_b_DOT: set $7903              ; XREF: EXCEPTION_VECTORS+C8/s ; LED '1.b.'
LED_1_DOT_E_DOT: set $7906              ; XREF: EXCEPTION_VECTORS+E0/s ; LED '1.E.'
LED_1_DOT_A_DOT: set $7908              ; XREF: EXCEPTION_VECTORS:HBL_EXCEPTION/s ; LED '1.A.'
LED_1_DOT_F_DOT: set $790E              ; XREF: EXCEPTION_VECTORS+E8/s ; LED '1.F.'
LED_1_DOT_9_DOT: set $7910              ; XREF: EXCEPTION_VECTORS+B8/s ; LED '1.9.'
LED_1_DOT_5_DOT: set $7912              ; XREF: EXCEPTION_VECTORS+98/s ; LED '1.5.'
LED_1_DOT_4_DOT: set $7919              ; XREF: EXCEPTION_VECTORS+90/s ; LED '1.4.'
LED_1_DOT_D_DOT: set $7921              ; XREF: EXCEPTION_VECTORS+D8/s ; LED '1.D.'
LED_1_DOT_2_DOT: set $7924              ; XREF: EXCEPTION_VECTORS+80/s ; LED '1.2.'
LED_1_DOT_C_DOT: set $7927              ; XREF: EXCEPTION_VECTORS:VBL_EXCEPTION/s ; LED '1.C.'
LED_1_DOT_3_DOT: set $7930              ; XREF: EXCEPTION_VECTORS+88/s ; LED '1.3.'
LED_1_DOT_eq_DOT: set $7937             ; LED '1.=.'
LED_1_DOT_neg_DOT: set $793F            ; LED '1.-.'
LED_1_DOT_0_DOT: set $7940              ; XREF: EXCEPTION_VECTORS+70/s ; LED '1.0.'
LED_1_DOT_U_DOT: set $7941              ; LED '1.U.'
LED_1_DOT_vlines_DOT: set $796B         ; LED '1.‖.'
LED_1_DOT_7_DOT: set $7978              ; XREF: EXCEPTION_VECTORS+A8/s ; LED '1.7.'
LED_1_DOT_1_DOT: set $7979              ; XREF: EXCEPTION_VECTORS+78/s ; LED '1.1.'
LED_1_DOT_uline_DOT: set $797E          ; LED '1.⎺.'
LED_1_DOT___DOT: set $797F              ; LED '1. .'
LED_1_DOT_8:     set $7980              ; XREF: START:loc_FA0BAA/s ; LED '1.8'
LED_1_DOT_6:     set $7982              ; LED '1.6'
LED_1_DOT_b:     set $7983              ; XREF: START:loc_FA0C6C/s
                                        ; START:loc_FA0CB6/s ; LED '1.b'
LED_1_DOT_E:     set $7986              ; LED '1.E'
LED_1_DOT_A:     set $7988              ; LED '1.A'
LED_1_DOT_F:     set $798E              ; LED '1.F'
LED_1_DOT_9:     set $7990              ; XREF: START:loc_FA0BF6/s ; LED '1.9'
LED_1_DOT_5:     set $7992              ; LED '1.5'
LED_1_DOT_4:     set $7999              ; LED '1.4'
LED_1_DOT_D:     set $79A1              ; XREF: START:loc_FA0D28/s ; LED '1.D'
LED_1_DOT_2:     set $79A4              ; XREF: START:loc_FA0B2E/s ; LED '1.2'
LED_1_DOT_C:     set $79A7              ; LED '1.C'
LED_1_DOT_3:     set $79B0              ; LED '1.3'
LED_1_DOT_eq:    set $79B7              ; LED '1.='
LED_1_DOT_neg:   set $79BF              ; LED '1.-'
LED_1_DOT_0:     set $79C0              ; XREF: START:loc_FA0916/s ; LED '1.0'
LED_1_DOT_U:     set $79C1              ; LED '1.U'
LED_1_DOT_vlines: set $79EB             ; LED '1.‖'
LED_1_DOT_7:     set $79F8              ; LED '1.7'
LED_1_DOT_1:     set $79F9              ; LED '1.1'
LED_1_DOT_uline: set $79FE              ; LED '1.⎺'
LED_1_DOT__:     set $79FF              ; LED '1. '
LED_uline_DOT_8_DOT: set $7E00          ; LED '⎺.8.'
LED_uline_DOT_6_DOT: set $7E02          ; LED '⎺.6.'
LED_uline_DOT_b_DOT: set $7E03          ; LED '⎺.b.'
LED_uline_DOT_E_DOT: set $7E06          ; LED '⎺.E.'
LED_uline_DOT_A_DOT: set $7E08          ; LED '⎺.A.'
LED_uline_DOT_F_DOT: set $7E0E          ; LED '⎺.F.'
LED_uline_DOT_9_DOT: set $7E10          ; LED '⎺.9.'
LED_uline_DOT_5_DOT: set $7E12          ; LED '⎺.5.'
LED_uline_DOT_4_DOT: set $7E19          ; LED '⎺.4.'
LED_uline_DOT_D_DOT: set $7E21          ; LED '⎺.D.'
LED_uline_DOT_2_DOT: set $7E24          ; LED '⎺.2.'
LED_uline_DOT_C_DOT: set $7E27          ; LED '⎺.C.'
LED_uline_DOT_3_DOT: set $7E30          ; LED '⎺.3.'
LED_uline_DOT_eq_DOT: set $7E37         ; LED '⎺.=.'
LED_uline_DOT_neg_DOT: set $7E3F        ; LED '⎺.-.'
LED_uline_DOT_0_DOT: set $7E40          ; LED '⎺.0.'
LED_uline_DOT_U_DOT: set $7E41          ; LED '⎺.U.'
LED_uline_DOT_vlines_DOT: set $7E6B     ; LED '⎺.‖.'
LED_uline_DOT_7_DOT: set $7E78          ; LED '⎺.7.'
LED_uline_DOT_1_DOT: set $7E79          ; LED '⎺.1.'
LED_uline_DOT_uline_DOT: set $7E7E      ; LED '⎺.⎺.'
LED_uline_DOT___DOT: set $7E7F          ; LED '⎺. .'
LED_uline_DOT_8: set $7E80              ; LED '⎺.8'
LED_uline_DOT_6: set $7E82              ; LED '⎺.6'
LED_uline_DOT_b: set $7E83              ; LED '⎺.b'
LED_uline_DOT_E: set $7E86              ; LED '⎺.E'
LED_uline_DOT_A: set $7E88              ; LED '⎺.A'
LED_uline_DOT_F: set $7E8E              ; LED '⎺.F'
LED_uline_DOT_9: set $7E90              ; LED '⎺.9'
LED_uline_DOT_5: set $7E92              ; LED '⎺.5'
LED_uline_DOT_4: set $7E99              ; LED '⎺.4'
LED_uline_DOT_D: set $7EA1              ; LED '⎺.D'
LED_uline_DOT_2: set $7EA4              ; LED '⎺.2'
LED_uline_DOT_C: set $7EA7              ; LED '⎺.C'
LED_uline_DOT_3: set $7EB0              ; LED '⎺.3'
LED_uline_DOT_eq: set $7EB7             ; LED '⎺.='
LED_uline_DOT_neg: set $7EBF            ; LED '⎺.-'
LED_uline_DOT_0: set $7EC0              ; LED '⎺.0'
LED_uline_DOT_U: set $7EC1              ; LED '⎺.U'
LED_uline_DOT_vlines: set $7EEB         ; LED '⎺.‖'
LED_uline_DOT_7: set $7EF8              ; LED '⎺.7'
LED_uline_DOT_1: set $7EF9              ; LED '⎺.1'
LED_uline_DOT_uline: set $7EFE          ; LED '⎺.⎺'
LED_uline_DOT__: set $7EFF              ; LED '⎺. '
LED___DOT_8_DOT: set $7F00              ; LED ' .8.'
LED___DOT_6_DOT: set $7F02              ; LED ' .6.'
LED___DOT_b_DOT: set $7F03              ; LED ' .b.'
LED___DOT_E_DOT: set $7F06              ; LED ' .E.'
LED___DOT_A_DOT: set $7F08              ; LED ' .A.'
LED___DOT_F_DOT: set $7F0E              ; LED ' .F.'
LED___DOT_9_DOT: set $7F10              ; LED ' .9.'
LED___DOT_5_DOT: set $7F12              ; LED ' .5.'
LED___DOT_4_DOT: set $7F19              ; LED ' .4.'
LED___DOT_D_DOT: set $7F21              ; LED ' .D.'
LED___DOT_2_DOT: set $7F24              ; LED ' .2.'
LED___DOT_C_DOT: set $7F27              ; LED ' .C.'
LED___DOT_3_DOT: set $7F30              ; LED ' .3.'
LED___DOT_eq_DOT: set $7F37             ; LED ' .=.'
LED___DOT_neg_DOT: set $7F3F            ; LED ' .-.'
LED___DOT_0_DOT: set $7F40              ; LED ' .0.'
LED___DOT_U_DOT: set $7F41              ; LED ' .U.'
LED___DOT_vlines_DOT: set $7F6B         ; LED ' .‖.'
LED___DOT_7_DOT: set $7F78              ; LED ' .7.'
LED___DOT_1_DOT: set $7F79              ; LED ' .1.'
LED___DOT_uline_DOT: set $7F7E          ; LED ' .⎺.'
LED___DOT___DOT: set $7F7F              ; LED ' . .'
LED___DOT_8:     set $7F80              ; LED ' .8'
LED___DOT_6:     set $7F82              ; LED ' .6'
LED___DOT_b:     set $7F83              ; LED ' .b'
LED___DOT_E:     set $7F86              ; LED ' .E'
LED___DOT_A:     set $7F88              ; LED ' .A'
LED___DOT_F:     set $7F8E              ; LED ' .F'
LED___DOT_9:     set $7F90              ; LED ' .9'
LED___DOT_5:     set $7F92              ; LED ' .5'
LED___DOT_4:     set $7F99              ; LED ' .4'
LED___DOT_D:     set $7FA1              ; LED ' .D'
LED___DOT_2:     set $7FA4              ; LED ' .2'
LED___DOT_C:     set $7FA7              ; LED ' .C'
LED___DOT_3:     set $7FB0              ; LED ' .3'
LED___DOT_eq:    set $7FB7              ; LED ' .='
LED___DOT_neg:   set $7FBF              ; LED ' .-'
LED___DOT_0:     set $7FC0              ; LED ' .0'
LED___DOT_U:     set $7FC1              ; LED ' .U'
LED___DOT_vlines: set $7FEB             ; LED ' .‖'
LED___DOT_7:     set $7FF8              ; LED ' .7'
LED___DOT_1:     set $7FF9              ; LED ' .1'
LED___DOT_uline: set $7FFE              ; LED ' .⎺'
LED___DOT__:     set $7FFF              ; LED ' . '
LED_88_DOT:      set $8000              ; LED '88.'
LED_86_DOT:      set $8002              ; LED '86.'
LED_8b_DOT:      set $8003              ; LED '8b.'
LED_8E_DOT:      set $8006              ; LED '8E.'
LED_8A_DOT:      set $8008              ; LED '8A.'
LED_8F_DOT:      set $800E              ; LED '8F.'
LED_89_DOT:      set $8010              ; LED '89.'
LED_85_DOT:      set $8012              ; LED '85.'
LED_84_DOT:      set $8019              ; LED '84.'
LED_8D_DOT:      set $8021              ; LED '8D.'
LED_82_DOT:      set $8024              ; LED '82.'
LED_8C_DOT:      set $8027              ; LED '8C.'
LED_83_DOT:      set $8030              ; LED '83.'
LED_8_eq_DOT:    set $8037              ; LED '8=.'
LED_8_neg_DOT:   set $803F              ; LED '8-.'
LED_80_DOT:      set $8040              ; LED '80.'
LED_8U_DOT:      set $8041              ; LED '8U.'
LED_8_vlines_DOT: set $806B             ; LED '8‖.'
LED_87_DOT:      set $8078              ; LED '87.'
LED_81_DOT:      set $8079              ; LED '81.'
LED_8_uline_DOT: set $807E              ; LED '8⎺.'
LED_8__DOT:      set $807F              ; LED '8 .'
LED_88:          set $8080              ; LED '88'
LED_86:          set $8082              ; LED '86'
LED_8b:          set $8083              ; LED '8b'
LED_8E:          set $8086              ; LED '8E'
LED_8A:          set $8088              ; LED '8A'
LED_8F:          set $808E              ; LED '8F'
LED_89:          set $8090              ; LED '89'
LED_85:          set $8092              ; LED '85'
LED_84:          set $8099              ; LED '84'
LED_8D:          set $80A1              ; LED '8D'
LED_82:          set $80A4              ; LED '82'
LED_8C:          set $80A7              ; LED '8C'
LED_83:          set $80B0              ; LED '83'
LED_8_eq:        set $80B7              ; LED '8='
LED_8_neg:       set $80BF              ; LED '8-'
LED_80:          set $80C0              ; LED '80'
LED_8U:          set $80C1              ; LED '8U'
LED_8_vlines:    set $80EB              ; LED '8‖'
LED_87:          set $80F8              ; LED '87'
LED_81:          set $80F9              ; LED '81'
LED_8_uline:     set $80FE              ; LED '8⎺'
LED_8_:          set $80FF              ; LED '8 '
LED_68_DOT:      set $8200              ; LED '68.'
LED_66_DOT:      set $8202              ; LED '66.'
LED_6b_DOT:      set $8203              ; LED '6b.'
LED_6E_DOT:      set $8206              ; LED '6E.'
LED_6A_DOT:      set $8208              ; LED '6A.'
LED_6F_DOT:      set $820E              ; LED '6F.'
LED_69_DOT:      set $8210              ; LED '69.'
LED_65_DOT:      set $8212              ; LED '65.'
LED_64_DOT:      set $8219              ; LED '64.'
LED_6D_DOT:      set $8221              ; LED '6D.'
LED_62_DOT:      set $8224              ; LED '62.'
LED_6C_DOT:      set $8227              ; LED '6C.'
LED_63_DOT:      set $8230              ; LED '63.'
LED_6_eq_DOT:    set $8237              ; LED '6=.'
LED_6_neg_DOT:   set $823F              ; LED '6-.'
LED_60_DOT:      set $8240              ; LED '60.'
LED_6U_DOT:      set $8241              ; LED '6U.'
LED_6_vlines_DOT: set $826B             ; LED '6‖.'
LED_67_DOT:      set $8278              ; LED '67.'
LED_61_DOT:      set $8279              ; LED '61.'
LED_6_uline_DOT: set $827E              ; LED '6⎺.'
LED_6__DOT:      set $827F              ; LED '6 .'
LED_68:          set $8280              ; XREF: START:TEST_68_BLITTER_HALFTONE_REGS/s ; LED '68'
LED_66:          set $8282              ; LED '66'
LED_6b:          set $8283              ; XREF: START:TEST_6b_BLITTER_VIDEORAM_CLEARED/s ; LED '6b'
LED_6E:          set $8286              ; LED '6E'
LED_6A:          set $8288              ; XREF: START:TEST_6A_BLITTER_STANDARD_MODE/s ; LED '6A'
LED_6F:          set $828E              ; LED '6F'
LED_69:          set $8290              ; XREF: START:TEST_69_BLITTER_HOG_MODE/s ; LED '69'
LED_65:          set $8292              ; LED '65'
LED_64:          set $8299              ; LED '64'
LED_6D:          set $82A1              ; XREF: START:TEST_6d_LOOP/s ; LED '6D'
LED_62:          set $82A4              ; XREF: START:TEST_62_MFP_TIMER_A/s ; LED '62'
LED_6C:          set $82A7              ; XREF: START:TEST_6c_LOOP/s ; LED '6C'
LED_63:          set $82B0              ; LED '63'
LED_6_eq:        set $82B7              ; LED '6='
LED_6_neg:       set $82BF              ; LED '6-'
LED_60:          set $82C0              ; XREF: START:TEST_60_CHECK_VBL_TRIGGER/s ; LED '60'
LED_6U:          set $82C1              ; LED '6U'
LED_6_vlines:    set $82EB              ; LED '6‖'
LED_67:          set $82F8              ; LED '67'
LED_61:          set $82F9              ; XREF: START:TEST_61_CHECK_HBL_TRIGGER/s ; LED '61'
LED_6_uline:     set $82FE              ; LED '6⎺'
LED_6_:          set $82FF              ; LED '6 '
LED_b8_DOT:      set $8300              ; LED 'b8.'
LED_b6_DOT:      set $8302              ; LED 'b6.'
LED_bb_DOT:      set $8303              ; LED 'bb.'
LED_bE_DOT:      set $8306              ; LED 'bE.'
LED_bA_DOT:      set $8308              ; LED 'bA.'
LED_bF_DOT:      set $830E              ; LED 'bF.'
LED_b9_DOT:      set $8310              ; LED 'b9.'
LED_b5_DOT:      set $8312              ; LED 'b5.'
LED_b4_DOT:      set $8319              ; LED 'b4.'
LED_bD_DOT:      set $8321              ; LED 'bD.'
LED_b2_DOT:      set $8324              ; LED 'b2.'
LED_bC_DOT:      set $8327              ; LED 'bC.'
LED_b3_DOT:      set $8330              ; LED 'b3.'
LED_b_eq_DOT:    set $8337              ; LED 'b=.'
LED_b_neg_DOT:   set $833F              ; LED 'b-.'
LED_b0_DOT:      set $8340              ; LED 'b0.'
LED_bU_DOT:      set $8341              ; LED 'bU.'
LED_b_vlines_DOT: set $836B             ; LED 'b‖.'
LED_b7_DOT:      set $8378              ; LED 'b7.'
LED_b1_DOT:      set $8379              ; LED 'b1.'
LED_b_uline_DOT: set $837E              ; LED 'b⎺.'
LED_b__DOT:      set $837F              ; LED 'b .'
LED_b8:          set $8380              ; LED 'b8'
LED_b6:          set $8382              ; LED 'b6'
LED_bb:          set $8383              ; LED 'bb'
LED_bE:          set $8386              ; LED 'bE'
LED_bA:          set $8388              ; LED 'bA'
LED_bF:          set $838E              ; LED 'bF'
LED_b9:          set $8390              ; LED 'b9'
LED_b5:          set $8392              ; LED 'b5'
LED_b4:          set $8399              ; LED 'b4'
LED_bD:          set $83A1              ; LED 'bD'
LED_b2:          set $83A4              ; LED 'b2'
LED_bC:          set $83A7              ; LED 'bC'
LED_b3:          set $83B0              ; LED 'b3'
LED_b_eq:        set $83B7              ; LED 'b='
LED_b_neg:       set $83BF              ; LED 'b-'
LED_b0:          set $83C0              ; LED 'b0'
LED_bU:          set $83C1              ; LED 'bU'
LED_b_vlines:    set $83EB              ; LED 'b‖'
LED_b7:          set $83F8              ; LED 'b7'
LED_b1:          set $83F9              ; LED 'b1'
LED_b_uline:     set $83FE              ; LED 'b⎺'
LED_b_:          set $83FF              ; LED 'b '
LED_E8_DOT:      set $8600              ; LED 'E8.'
LED_E6_DOT:      set $8602              ; LED 'E6.'
LED_Eb_DOT:      set $8603              ; LED 'Eb.'
LED_EE_DOT:      set $8606              ; LED 'EE.'
LED_EA_DOT:      set $8608              ; LED 'EA.'
LED_EF_DOT:      set $860E              ; LED 'EF.'
LED_E9_DOT:      set $8610              ; LED 'E9.'
LED_E5_DOT:      set $8612              ; LED 'E5.'
LED_E4_DOT:      set $8619              ; LED 'E4.'
LED_ED_DOT:      set $8621              ; LED 'ED.'
LED_E2_DOT:      set $8624              ; LED 'E2.'
LED_EC_DOT:      set $8627              ; LED 'EC.'
LED_E3_DOT:      set $8630              ; LED 'E3.'
LED_E_eq_DOT:    set $8637              ; LED 'E=.'
LED_E_neg_DOT:   set $863F              ; LED 'E-.'
LED_E0_DOT:      set $8640              ; LED 'E0.'
LED_EU_DOT:      set $8641              ; LED 'EU.'
LED_E_vlines_DOT: set $866B             ; LED 'E‖.'
LED_E7_DOT:      set $8678              ; LED 'E7.'
LED_E1_DOT:      set $8679              ; LED 'E1.'
LED_E_uline_DOT: set $867E              ; LED 'E⎺.'
LED_E__DOT:      set $867F              ; LED 'E .'
LED_E8:          set $8680              ; LED 'E8'
LED_E6:          set $8682              ; LED 'E6'
LED_Eb:          set $8683              ; LED 'Eb'
LED_EE:          set $8686              ; LED 'EE'
LED_EA:          set $8688              ; LED 'EA'
LED_EF:          set $868E              ; LED 'EF'
LED_E9:          set $8690              ; LED 'E9'
LED_E5:          set $8692              ; LED 'E5'
LED_E4:          set $8699              ; LED 'E4'
LED_ED:          set $86A1              ; LED 'ED'
LED_E2:          set $86A4              ; LED 'E2'
LED_EC:          set $86A7              ; LED 'EC'
LED_E3:          set $86B0              ; LED 'E3'
LED_E_eq:        set $86B7              ; LED 'E='
LED_E_neg:       set $86BF              ; LED 'E-'
LED_E0:          set $86C0              ; LED 'E0'
LED_EU:          set $86C1              ; LED 'EU'
LED_E_vlines:    set $86EB              ; LED 'E‖'
LED_E7:          set $86F8              ; LED 'E7'
LED_E1:          set $86F9              ; LED 'E1'
LED_E_uline:     set $86FE              ; LED 'E⎺'
LED_E_:          set $86FF              ; LED 'E '
LED_A8_DOT:      set $8800              ; LED 'A8.'
LED_A6_DOT:      set $8802              ; LED 'A6.'
LED_Ab_DOT:      set $8803              ; LED 'Ab.'
LED_AE_DOT:      set $8806              ; LED 'AE.'
LED_AA_DOT:      set $8808              ; LED 'AA.'
LED_AF_DOT:      set $880E              ; LED 'AF.'
LED_A9_DOT:      set $8810              ; LED 'A9.'
LED_A5_DOT:      set $8812              ; LED 'A5.'
LED_A4_DOT:      set $8819              ; LED 'A4.'
LED_AD_DOT:      set $8821              ; LED 'AD.'
LED_A2_DOT:      set $8824              ; LED 'A2.'
LED_AC_DOT:      set $8827              ; LED 'AC.'
LED_A3_DOT:      set $8830              ; LED 'A3.'
LED_A_eq_DOT:    set $8837              ; LED 'A=.'
LED_A_neg_DOT:   set $883F              ; LED 'A-.'
LED_A0_DOT:      set $8840              ; LED 'A0.'
LED_AU_DOT:      set $8841              ; LED 'AU.'
LED_A_vlines_DOT: set $886B             ; LED 'A‖.'
LED_A7_DOT:      set $8878              ; LED 'A7.'
LED_A1_DOT:      set $8879              ; LED 'A1.'
LED_A_uline_DOT: set $887E              ; LED 'A⎺.'
LED_A__DOT:      set $887F              ; LED 'A .'
LED_A8:          set $8880              ; LED 'A8'
LED_A6:          set $8882              ; LED 'A6'
LED_Ab:          set $8883              ; LED 'Ab'
LED_AE:          set $8886              ; LED 'AE'
LED_AA:          set $8888              ; LED 'AA'
LED_AF:          set $888E              ; LED 'AF'
LED_A9:          set $8890              ; LED 'A9'
LED_A5:          set $8892              ; LED 'A5'
LED_A4:          set $8899              ; LED 'A4'
LED_AD:          set $88A1              ; LED 'AD'
LED_A2:          set $88A4              ; LED 'A2'
LED_AC:          set $88A7              ; LED 'AC'
LED_A3:          set $88B0              ; LED 'A3'
LED_A_eq:        set $88B7              ; LED 'A='
LED_A_neg:       set $88BF              ; LED 'A-'
LED_A0:          set $88C0              ; LED 'A0'
LED_AU:          set $88C1              ; LED 'AU'
LED_A_vlines:    set $88EB              ; LED 'A‖'
LED_A7:          set $88F8              ; LED 'A7'
LED_A1:          set $88F9              ; LED 'A1'
LED_A_uline:     set $88FE              ; LED 'A⎺'
LED_A_:          set $88FF              ; LED 'A '
LED_F8_DOT:      set $8E00              ; LED 'F8.'
LED_F6_DOT:      set $8E02              ; LED 'F6.'
LED_Fb_DOT:      set $8E03              ; LED 'Fb.'
LED_FE_DOT:      set $8E06              ; LED 'FE.'
LED_FA_DOT:      set $8E08              ; LED 'FA.'
LED_FF_DOT:      set $8E0E              ; LED 'FF.'
LED_F9_DOT:      set $8E10              ; LED 'F9.'
LED_F5_DOT:      set $8E12              ; LED 'F5.'
LED_F4_DOT:      set $8E19              ; LED 'F4.'
LED_FD_DOT:      set $8E21              ; LED 'FD.'
LED_F2_DOT:      set $8E24              ; LED 'F2.'
LED_FC_DOT:      set $8E27              ; LED 'FC.'
LED_F3_DOT:      set $8E30              ; LED 'F3.'
LED_F_eq_DOT:    set $8E37              ; LED 'F=.'
LED_F_neg_DOT:   set $8E3F              ; LED 'F-.'
LED_F0_DOT:      set $8E40              ; LED 'F0.'
LED_FU_DOT:      set $8E41              ; LED 'FU.'
LED_F_vlines_DOT: set $8E6B             ; LED 'F‖.'
LED_F7_DOT:      set $8E78              ; LED 'F7.'
LED_F1_DOT:      set $8E79              ; LED 'F1.'
LED_F_uline_DOT: set $8E7E              ; LED 'F⎺.'
LED_F__DOT:      set $8E7F              ; LED 'F .'
LED_F8:          set $8E80              ; LED 'F8'
LED_F6:          set $8E82              ; LED 'F6'
LED_Fb:          set $8E83              ; LED 'Fb'
LED_FE:          set $8E86              ; LED 'FE'
LED_FA:          set $8E88              ; LED 'FA'
LED_FF:          set $8E8E              ; LED 'FF'
LED_F9:          set $8E90              ; LED 'F9'
LED_F5:          set $8E92              ; LED 'F5'
LED_F4:          set $8E99              ; LED 'F4'
LED_FD:          set $8EA1              ; LED 'FD'
LED_F2:          set $8EA4              ; LED 'F2'
LED_FC:          set $8EA7              ; LED 'FC'
LED_F3:          set $8EB0              ; LED 'F3'
LED_F_eq:        set $8EB7              ; LED 'F='
LED_F_neg:       set $8EBF              ; LED 'F-'
LED_F0:          set $8EC0              ; LED 'F0'
LED_FU:          set $8EC1              ; LED 'FU'
LED_F_vlines:    set $8EEB              ; LED 'F‖'
LED_F7:          set $8EF8              ; LED 'F7'
LED_F1:          set $8EF9              ; LED 'F1'
LED_F_uline:     set $8EFE              ; LED 'F⎺'
LED_F_:          set $8EFF              ; LED 'F '
LED_98_DOT:      set $9000              ; LED '98.'
LED_96_DOT:      set $9002              ; LED '96.'
LED_9b_DOT:      set $9003              ; LED '9b.'
LED_9E_DOT:      set $9006              ; LED '9E.'
LED_9A_DOT:      set $9008              ; LED '9A.'
LED_9F_DOT:      set $900E              ; LED '9F.'
LED_99_DOT:      set $9010              ; LED '99.'
LED_95_DOT:      set $9012              ; LED '95.'
LED_94_DOT:      set $9019              ; LED '94.'
LED_9D_DOT:      set $9021              ; LED '9D.'
LED_92_DOT:      set $9024              ; LED '92.'
LED_9C_DOT:      set $9027              ; LED '9C.'
LED_93_DOT:      set $9030              ; LED '93.'
LED_9_eq_DOT:    set $9037              ; LED '9=.'
LED_9_neg_DOT:   set $903F              ; LED '9-.'
LED_90_DOT:      set $9040              ; LED '90.'
LED_9U_DOT:      set $9041              ; LED '9U.'
LED_9_vlines_DOT: set $906B             ; LED '9‖.'
LED_97_DOT:      set $9078              ; LED '97.'
LED_91_DOT:      set $9079              ; LED '91.'
LED_9_uline_DOT: set $907E              ; LED '9⎺.'
LED_9__DOT:      set $907F              ; LED '9 .'
LED_98:          set $9080              ; LED '98'
LED_96:          set $9082              ; LED '96'
LED_9b:          set $9083              ; LED '9b'
LED_9E:          set $9086              ; LED '9E'
LED_9A:          set $9088              ; LED '9A'
LED_9F:          set $908E              ; LED '9F'
LED_99:          set $9090              ; LED '99'
LED_95:          set $9092              ; LED '95'
LED_94:          set $9099              ; LED '94'
LED_9D:          set $90A1              ; LED '9D'
LED_92:          set $90A4              ; LED '92'
LED_9C:          set $90A7              ; LED '9C'
LED_93:          set $90B0              ; LED '93'
LED_9_eq:        set $90B7              ; LED '9='
LED_9_neg:       set $90BF              ; LED '9-'
LED_90:          set $90C0              ; LED '90'
LED_9U:          set $90C1              ; LED '9U'
LED_9_vlines:    set $90EB              ; LED '9‖'
LED_97:          set $90F8              ; LED '97'
LED_91:          set $90F9              ; LED '91'
LED_9_uline:     set $90FE              ; LED '9⎺'
LED_9_:          set $90FF              ; LED '9 '
LED_58_DOT:      set $9200              ; LED '58.'
LED_56_DOT:      set $9202              ; LED '56.'
LED_5b_DOT:      set $9203              ; LED '5b.'
LED_5E_DOT:      set $9206              ; LED '5E.'
LED_5A_DOT:      set $9208              ; LED '5A.'
LED_5F_DOT:      set $920E              ; LED '5F.'
LED_59_DOT:      set $9210              ; LED '59.'
LED_55_DOT:      set $9212              ; LED '55.'
LED_54_DOT:      set $9219              ; LED '54.'
LED_5D_DOT:      set $9221              ; LED '5D.'
LED_52_DOT:      set $9224              ; LED '52.'
LED_5C_DOT:      set $9227              ; LED '5C.'
LED_53_DOT:      set $9230              ; LED '53.'
LED_5_eq_DOT:    set $9237              ; LED '5=.'
LED_5_neg_DOT:   set $923F              ; LED '5-.'
LED_50_DOT:      set $9240              ; LED '50.'
LED_5U_DOT:      set $9241              ; LED '5U.'
LED_5_vlines_DOT: set $926B             ; LED '5‖.'
LED_57_DOT:      set $9278              ; LED '57.'
LED_51_DOT:      set $9279              ; LED '51.'
LED_5_uline_DOT: set $927E              ; LED '5⎺.'
LED_5__DOT:      set $927F              ; LED '5 .'
LED_58:          set $9280              ; LED '58'
LED_56:          set $9282              ; LED '56'
LED_5b:          set $9283              ; LED '5b'
LED_5E:          set $9286              ; LED '5E'
LED_5A:          set $9288              ; LED '5A'
LED_5F:          set $928E              ; LED '5F'
LED_59:          set $9290              ; LED '59'
LED_55:          set $9292              ; LED '55'
LED_54:          set $9299              ; LED '54'
LED_5D:          set $92A1              ; LED '5D'
LED_52:          set $92A4              ; LED '52'
LED_5C:          set $92A7              ; LED '5C'
LED_53:          set $92B0              ; LED '53'
LED_5_eq:        set $92B7              ; LED '5='
LED_5_neg:       set $92BF              ; LED '5-'
LED_50:          set $92C0              ; LED '50'
LED_5U:          set $92C1              ; LED '5U'
LED_5_vlines:    set $92EB              ; LED '5‖'
LED_57:          set $92F8              ; LED '57'
LED_51:          set $92F9              ; LED '51'
LED_5_uline:     set $92FE              ; LED '5⎺'
LED_5_:          set $92FF              ; LED '5 '
LED_48_DOT:      set $9900              ; LED '48.'
LED_46_DOT:      set $9902              ; LED '46.'
LED_4b_DOT:      set $9903              ; LED '4b.'
LED_4E_DOT:      set $9906              ; LED '4E.'
LED_4A_DOT:      set $9908              ; LED '4A.'
LED_4F_DOT:      set $990E              ; LED '4F.'
LED_49_DOT:      set $9910              ; LED '49.'
LED_45_DOT:      set $9912              ; LED '45.'
LED_44_DOT:      set $9919              ; LED '44.'
LED_4D_DOT:      set $9921              ; LED '4D.'
LED_42_DOT:      set $9924              ; LED '42.'
LED_4C_DOT:      set $9927              ; LED '4C.'
LED_43_DOT:      set $9930              ; LED '43.'
LED_4_eq_DOT:    set $9937              ; LED '4=.'
LED_4_neg_DOT:   set $993F              ; LED '4-.'
LED_40_DOT:      set $9940              ; LED '40.'
LED_4U_DOT:      set $9941              ; LED '4U.'
LED_4_vlines_DOT: set $996B             ; LED '4‖.'
LED_47_DOT:      set $9978              ; LED '47.'
LED_41_DOT:      set $9979              ; LED '41.'
LED_4_uline_DOT: set $997E              ; LED '4⎺.'
LED_4__DOT:      set $997F              ; LED '4 .'
LED_48:          set $9980              ; XREF: START:TEST_48_SRAM_TESTPATTERN/s ; LED '48'
LED_46:          set $9982              ; XREF: START:TEST_46_SRAM_TESTPATTERN_VRAM_FFFFFFFF/s ; LED '46'
LED_4b:          set $9983              ; XREF: START:TEST_4b_SHADOW_VIDEO_OFF/s ; LED '4b'
LED_4E:          set $9986              ; LED '4E'
LED_4A:          set $9988              ; XREF: START:TEST_4A_SRAM_WRITE_DELAY_TEST/s ; LED '4A'
LED_4F:          set $998E              ; LED '4F'
LED_49:          set $9990              ; XREF: START:TEST_49_SHADOW_VIDEO_ON/s ; LED '49'
LED_45:          set $9992              ; XREF: START:TEST_45_SRAM_TESTPATTERN_VRAM_5AA55AA5/s ; LED '45'
LED_44:          set $9999              ; XREF: START:TEST_44_SRAM_WRITE_DELAY_TEST/s ; LED '44'
LED_4D:          set $99A1              ; LED '4D'
LED_42:          set $99A4              ; XREF: START:TEST_42_SRAM_WORDS_MIRRORED/s ; LED '42'
LED_4C:          set $99A7              ; XREF: START:TEST_4c_REFRESH_CONTROLLER_OFF/s ; LED '4C'
LED_43:          set $99B0              ; LED '43'
LED_4_eq:        set $99B7              ; LED '4='
LED_4_neg:       set $99BF              ; LED '4-'
LED_40:          set $99C0              ; XREF: START:TEST_40_LOOP/s ; LED '40'
LED_4U:          set $99C1              ; LED '4U'
LED_4_vlines:    set $99EB              ; LED '4‖'
LED_47:          set $99F8              ; XREF: START:TEST_47_REFRESH_CONTROLLER_ON/s ; LED '47'
LED_41:          set $99F9              ; XREF: START:TEST_41_SRAM_POWER2/s ; LED '41'
LED_4_uline:     set $99FE              ; LED '4⎺'
LED_4_:          set $99FF              ; LED '4 '
LED_D8_DOT:      set $A100              ; LED 'D8.'
LED_D6_DOT:      set $A102              ; LED 'D6.'
LED_Db_DOT:      set $A103              ; LED 'Db.'
LED_DE_DOT:      set $A106              ; LED 'DE.'
LED_DA_DOT:      set $A108              ; LED 'DA.'
LED_DF_DOT:      set $A10E              ; LED 'DF.'
LED_D9_DOT:      set $A110              ; LED 'D9.'
LED_D5_DOT:      set $A112              ; LED 'D5.'
LED_D4_DOT:      set $A119              ; LED 'D4.'
LED_DD_DOT:      set $A121              ; LED 'DD.'
LED_D2_DOT:      set $A124              ; LED 'D2.'
LED_DC_DOT:      set $A127              ; LED 'DC.'
LED_D3_DOT:      set $A130              ; LED 'D3.'
LED_D_eq_DOT:    set $A137              ; LED 'D=.'
LED_D_neg_DOT:   set $A13F              ; LED 'D-.'
LED_D0_DOT:      set $A140              ; LED 'D0.'
LED_DU_DOT:      set $A141              ; LED 'DU.'
LED_D_vlines_DOT: set $A16B             ; LED 'D‖.'
LED_D7_DOT:      set $A178              ; LED 'D7.'
LED_D1_DOT:      set $A179              ; LED 'D1.'
LED_D_uline_DOT: set $A17E              ; LED 'D⎺.'
LED_D__DOT:      set $A17F              ; LED 'D .'
LED_D8:          set $A180              ; LED 'D8'
LED_D6:          set $A182              ; LED 'D6'
LED_Db:          set $A183              ; LED 'Db'
LED_DE:          set $A186              ; LED 'DE'
LED_DA:          set $A188              ; LED 'DA'
LED_DF:          set $A18E              ; LED 'DF'
LED_D9:          set $A190              ; LED 'D9'
LED_D5:          set $A192              ; LED 'D5'
LED_D4:          set $A199              ; LED 'D4'
LED_DD:          set $A1A1              ; LED 'DD'
LED_D2:          set $A1A4              ; LED 'D2'
LED_DC:          set $A1A7              ; LED 'DC'
LED_D3:          set $A1B0              ; LED 'D3'
LED_D_eq:        set $A1B7              ; LED 'D='
LED_D_neg:       set $A1BF              ; LED 'D-'
LED_D0:          set $A1C0              ; LED 'D0'
LED_DU:          set $A1C1              ; LED 'DU'
LED_D_vlines:    set $A1EB              ; LED 'D‖'
LED_D7:          set $A1F8              ; LED 'D7'
LED_D1:          set $A1F9              ; LED 'D1'
LED_D_uline:     set $A1FE              ; LED 'D⎺'
LED_D_:          set $A1FF              ; LED 'D '
LED_28_DOT:      set $A400              ; LED '28.'
LED_26_DOT:      set $A402              ; LED '26.'
LED_2b_DOT:      set $A403              ; LED '2b.'
LED_2E_DOT:      set $A406              ; LED '2E.'
LED_2A_DOT:      set $A408              ; LED '2A.'
LED_2F_DOT:      set $A40E              ; LED '2F.'
LED_29_DOT:      set $A410              ; LED '29.'
LED_25_DOT:      set $A412              ; LED '25.'
LED_24_DOT:      set $A419              ; LED '24.'
LED_2D_DOT:      set $A421              ; LED '2D.'
LED_22_DOT:      set $A424              ; LED '22.'
LED_2C_DOT:      set $A427              ; LED '2C.'
LED_23_DOT:      set $A430              ; LED '23.'
LED_2_eq_DOT:    set $A437              ; LED '2=.'
LED_2_neg_DOT:   set $A43F              ; LED '2-.'
LED_20_DOT:      set $A440              ; LED '20.'
LED_2U_DOT:      set $A441              ; LED '2U.'
LED_2_vlines_DOT: set $A46B             ; LED '2‖.'
LED_27_DOT:      set $A478              ; LED '27.'
LED_21_DOT:      set $A479              ; LED '21.'
LED_2_uline_DOT: set $A47E              ; LED '2⎺.'
LED_2__DOT:      set $A47F              ; LED '2 .'
LED_28:          set $A480              ; XREF: START:TEST_28_ACIA_SEND_MIDI/s ; LED '28'
LED_26:          set $A482              ; LED '26'
LED_2b:          set $A483              ; LED '2b'
LED_2E:          set $A486              ; LED '2E'
LED_2A:          set $A488              ; LED '2A'
LED_2F:          set $A48E              ; LED '2F'
LED_29:          set $A490              ; XREF: START:TEST_29_ACIA_IKBD_ACCESS/s ; LED '29'
LED_25:          set $A492              ; LED '25'
LED_24:          set $A499              ; LED '24'
LED_2D:          set $A4A1              ; LED '2D'
LED_22:          set $A4A4              ; LED '22'
LED_2C:          set $A4A7              ; LED '2C'
LED_23:          set $A4B0              ; LED '23'
LED_2_eq:        set $A4B7              ; LED '2='
LED_2_neg:       set $A4BF              ; LED '2-'
LED_20:          set $A4C0              ; XREF: START:TEST_20_MFP_UART/s ; LED '20'
LED_2U:          set $A4C1              ; LED '2U'
LED_2_vlines:    set $A4EB              ; LED '2‖'
LED_27:          set $A4F8              ; LED '27'
LED_21:          set $A4F9              ; XREF: START:TEST_21_LOOP/s ; LED '21'
LED_2_uline:     set $A4FE              ; LED '2⎺'
LED_2_:          set $A4FF              ; LED '2 '
LED_C8_DOT:      set $A700              ; LED 'C8.'
LED_C6_DOT:      set $A702              ; LED 'C6.'
LED_Cb_DOT:      set $A703              ; LED 'Cb.'
LED_CE_DOT:      set $A706              ; LED 'CE.'
LED_CA_DOT:      set $A708              ; LED 'CA.'
LED_CF_DOT:      set $A70E              ; LED 'CF.'
LED_C9_DOT:      set $A710              ; LED 'C9.'
LED_C5_DOT:      set $A712              ; LED 'C5.'
LED_C4_DOT:      set $A719              ; LED 'C4.'
LED_CD_DOT:      set $A721              ; LED 'CD.'
LED_C2_DOT:      set $A724              ; LED 'C2.'
LED_CC_DOT:      set $A727              ; LED 'CC.'
LED_C3_DOT:      set $A730              ; LED 'C3.'
LED_C_eq_DOT:    set $A737              ; LED 'C=.'
LED_C_neg_DOT:   set $A73F              ; LED 'C-.'
LED_C0_DOT:      set $A740              ; LED 'C0.'
LED_CU_DOT:      set $A741              ; LED 'CU.'
LED_C_vlines_DOT: set $A76B             ; LED 'C‖.'
LED_C7_DOT:      set $A778              ; LED 'C7.'
LED_C1_DOT:      set $A779              ; LED 'C1.'
LED_C_uline_DOT: set $A77E              ; LED 'C⎺.'
LED_C__DOT:      set $A77F              ; LED 'C .'
LED_C8:          set $A780              ; LED 'C8'
LED_C6:          set $A782              ; LED 'C6'
LED_Cb:          set $A783              ; LED 'Cb'
LED_CE:          set $A786              ; LED 'CE'
LED_CA:          set $A788              ; LED 'CA'
LED_CF:          set $A78E              ; LED 'CF'
LED_C9:          set $A790              ; LED 'C9'
LED_C5:          set $A792              ; LED 'C5'
LED_C4:          set $A799              ; LED 'C4'
LED_CD:          set $A7A1              ; LED 'CD'
LED_C2:          set $A7A4              ; LED 'C2'
LED_CC:          set $A7A7              ; LED 'CC'
LED_C3:          set $A7B0              ; LED 'C3'
LED_C_eq:        set $A7B7              ; LED 'C='
LED_C_neg:       set $A7BF              ; LED 'C-'
LED_C0:          set $A7C0              ; LED 'C0'
LED_CU:          set $A7C1              ; LED 'CU'
LED_C_vlines:    set $A7EB              ; LED 'C‖'
LED_C7:          set $A7F8              ; LED 'C7'
LED_C1:          set $A7F9              ; LED 'C1'
LED_C_uline:     set $A7FE              ; LED 'C⎺'
LED_C_:          set $A7FF              ; LED 'C '
LED_38_DOT:      set $B000              ; LED '38.'
LED_36_DOT:      set $B002              ; LED '36.'
LED_3b_DOT:      set $B003              ; LED '3b.'
LED_3E_DOT:      set $B006              ; LED '3E.'
LED_3A_DOT:      set $B008              ; LED '3A.'
LED_3F_DOT:      set $B00E              ; LED '3F.'
LED_39_DOT:      set $B010              ; LED '39.'
LED_35_DOT:      set $B012              ; LED '35.'
LED_34_DOT:      set $B019              ; LED '34.'
LED_3D_DOT:      set $B021              ; LED '3D.'
LED_32_DOT:      set $B024              ; LED '32.'
LED_3C_DOT:      set $B027              ; LED '3C.'
LED_33_DOT:      set $B030              ; LED '33.'
LED_3_eq_DOT:    set $B037              ; LED '3=.'
LED_3_neg_DOT:   set $B03F              ; LED '3-.'
LED_30_DOT:      set $B040              ; LED '30.'
LED_3U_DOT:      set $B041              ; LED '3U.'
LED_3_vlines_DOT: set $B06B             ; LED '3‖.'
LED_37_DOT:      set $B078              ; LED '37.'
LED_31_DOT:      set $B079              ; LED '31.'
LED_3_uline_DOT: set $B07E              ; LED '3⎺.'
LED_3__DOT:      set $B07F              ; LED '3 .'
LED_38:          set $B080              ; LED '38'
LED_36:          set $B082              ; LED '36'
LED_3b:          set $B083              ; LED '3b'
LED_3E:          set $B086              ; LED '3E'
LED_3A:          set $B088              ; LED '3A'
LED_3F:          set $B08E              ; LED '3F'
LED_39:          set $B090              ; LED '39'
LED_35:          set $B092              ; LED '35'
LED_34:          set $B099              ; LED '34'
LED_3D:          set $B0A1              ; LED '3D'
LED_32:          set $B0A4              ; LED '32'
LED_3C:          set $B0A7              ; LED '3C'
LED_33:          set $B0B0              ; LED '33'
LED_3_eq:        set $B0B7              ; LED '3='
LED_3_neg:       set $B0BF              ; LED '3-'
LED_30:          set $B0C0              ; XREF: START:TEST_30_ACIA_SEND_IKBD_RESET/s ; LED '30'
LED_3U:          set $B0C1              ; LED '3U'
LED_3_vlines:    set $B0EB              ; LED '3‖'
LED_37:          set $B0F8              ; LED '37'
LED_31:          set $B0F9              ; XREF: START:TEST_31_LOOP/s ; LED '31'
LED_3_uline:     set $B0FE              ; LED '3⎺'
LED_3_:          set $B0FF              ; LED '3 '
LED_eq_8_DOT:    set $B700              ; LED '=8.'
LED_eq_6_DOT:    set $B702              ; LED '=6.'
LED_eq_b_DOT:    set $B703              ; LED '=b.'
LED_eq_E_DOT:    set $B706              ; LED '=E.'
LED_eq_A_DOT:    set $B708              ; LED '=A.'
LED_eq_F_DOT:    set $B70E              ; LED '=F.'
LED_eq_9_DOT:    set $B710              ; LED '=9.'
LED_eq_5_DOT:    set $B712              ; LED '=5.'
LED_eq_4_DOT:    set $B719              ; LED '=4.'
LED_eq_D_DOT:    set $B721              ; LED '=D.'
LED_eq_2_DOT:    set $B724              ; LED '=2.'
LED_eq_C_DOT:    set $B727              ; LED '=C.'
LED_eq_3_DOT:    set $B730              ; LED '=3.'
LED_eq_eq_DOT:   set $B737              ; LED '==.'
LED_eq_neg_DOT:  set $B73F              ; LED '=-.'
LED_eq_0_DOT:    set $B740              ; LED '=0.'
LED_eq_U_DOT:    set $B741              ; LED '=U.'
LED_eq_vlines_DOT: set $B76B            ; LED '=‖.'
LED_eq_7_DOT:    set $B778              ; LED '=7.'
LED_eq_1_DOT:    set $B779              ; LED '=1.'
LED_eq_uline_DOT: set $B77E             ; LED '=⎺.'
LED_eq___DOT:    set $B77F              ; LED '= .'
LED_eq_8:        set $B780              ; LED '=8'
LED_eq_6:        set $B782              ; LED '=6'
LED_eq_b:        set $B783              ; LED '=b'
LED_eq_E:        set $B786              ; LED '=E'
LED_eq_A:        set $B788              ; LED '=A'
LED_eq_F:        set $B78E              ; LED '=F'
LED_eq_9:        set $B790              ; LED '=9'
LED_eq_5:        set $B792              ; LED '=5'
LED_eq_4:        set $B799              ; LED '=4'
LED_eq_D:        set $B7A1              ; LED '=D'
LED_eq_2:        set $B7A4              ; LED '=2'
LED_eq_C:        set $B7A7              ; LED '=C'
LED_eq_3:        set $B7B0              ; LED '=3'
LED_eq_eq:       set $B7B7              ; LED '=='
LED_eq_neg:      set $B7BF              ; LED '=-'
LED_eq_0:        set $B7C0              ; LED '=0'
LED_eq_U:        set $B7C1              ; LED '=U'
LED_eq_vlines:   set $B7EB              ; LED '=‖'
LED_eq_7:        set $B7F8              ; LED '=7'
LED_eq_1:        set $B7F9              ; LED '=1'
LED_eq_uline:    set $B7FE              ; LED '=⎺'
LED_eq__:        set $B7FF              ; XREF: START+228/s
                                        ; START+344/s ... ; LED '= '
LED_neg_8_DOT:   set $BF00              ; LED '-8.'
LED_neg_6_DOT:   set $BF02              ; LED '-6.'
LED_neg_b_DOT:   set $BF03              ; LED '-b.'
LED_neg_E_DOT:   set $BF06              ; LED '-E.'
LED_neg_A_DOT:   set $BF08              ; LED '-A.'
LED_neg_F_DOT:   set $BF0E              ; LED '-F.'
LED_neg_9_DOT:   set $BF10              ; LED '-9.'
LED_neg_5_DOT:   set $BF12              ; LED '-5.'
LED_neg_4_DOT:   set $BF19              ; LED '-4.'
LED_neg_D_DOT:   set $BF21              ; LED '-D.'
LED_neg_2_DOT:   set $BF24              ; LED '-2.'
LED_neg_C_DOT:   set $BF27              ; LED '-C.'
LED_neg_3_DOT:   set $BF30              ; LED '-3.'
LED_neg_eq_DOT:  set $BF37              ; LED '-=.'
LED_neg_neg_DOT: set $BF3F              ; LED '--.'
LED_neg_0_DOT:   set $BF40              ; LED '-0.'
LED_neg_U_DOT:   set $BF41              ; LED '-U.'
LED_neg_vlines_DOT: set $BF6B           ; LED '-‖.'
LED_neg_7_DOT:   set $BF78              ; LED '-7.'
LED_neg_1_DOT:   set $BF79              ; LED '-1.'
LED_neg_uline_DOT: set $BF7E            ; LED '-⎺.'
LED_neg___DOT:   set $BF7F              ; LED '- .'
LED_neg_8:       set $BF80              ; LED '-8'
LED_neg_6:       set $BF82              ; LED '-6'
LED_neg_b:       set $BF83              ; LED '-b'
LED_neg_E:       set $BF86              ; LED '-E'
LED_neg_A:       set $BF88              ; LED '-A'
LED_neg_F:       set $BF8E              ; LED '-F'
LED_neg_9:       set $BF90              ; LED '-9'
LED_neg_5:       set $BF92              ; XREF: START:TEST_n5_LOOP/s ; LED '-5'
LED_neg_4:       set $BF99              ; XREF: START:TEST_n4_LOOP/s ; LED '-4'
LED_neg_D:       set $BFA1              ; LED '-D'
LED_neg_2:       set $BFA4              ; XREF: START:TEST_n2_voltage/s ; LED '-2'
LED_neg_C:       set $BFA7              ; LED '-C'
LED_neg_3:       set $BFB0              ; XREF: START:TEST_n3_voltage/s ; LED '-3'
LED_neg_eq:      set $BFB7              ; LED '-='
LED_neg_neg:     set $BFBF              ; XREF: START+2790/s ; LED '--'
LED_neg_0:       set $BFC0              ; LED '-0'
LED_neg_U:       set $BFC1              ; LED '-U'
LED_neg_vlines:  set $BFEB              ; LED '-‖'
LED_neg_7:       set $BFF8              ; LED '-7'
LED_neg_1:       set $BFF9              ; XREF: START+264A/s ; LED '-1'
LED_neg_uline:   set $BFFE              ; LED '-⎺'
LED_neg__:       set $BFFF              ; LED '- '
LED_08_DOT:      set $C000              ; LED '08.'
LED_06_DOT:      set $C002              ; LED '06.'
LED_0b_DOT:      set $C003              ; LED '0b.'
LED_0E_DOT:      set $C006              ; LED '0E.'
LED_0A_DOT:      set $C008              ; LED '0A.'
LED_0F_DOT:      set $C00E              ; LED '0F.'
LED_09_DOT:      set $C010              ; LED '09.'
LED_05_DOT:      set $C012              ; LED '05.'
LED_04_DOT:      set $C019              ; LED '04.'
LED_0D_DOT:      set $C021              ; LED '0D.'
LED_02_DOT:      set $C024              ; LED '02.'
LED_0C_DOT:      set $C027              ; LED '0C.'
LED_03_DOT:      set $C030              ; LED '03.'
LED_0_eq_DOT:    set $C037              ; LED '0=.'
LED_0_neg_DOT:   set $C03F              ; LED '0-.'
LED_00_DOT:      set $C040              ; LED '00.'
LED_0U_DOT:      set $C041              ; LED '0U.'
LED_0_vlines_DOT: set $C06B             ; LED '0‖.'
LED_07_DOT:      set $C078              ; LED '07.'
LED_01_DOT:      set $C079              ; LED '01.'
LED_0_uline_DOT: set $C07E              ; LED '0⎺.'
LED_0__DOT:      set $C07F              ; LED '0 .'
LED_08:          set $C080              ; XREF: START:TEST_08_DIAGNOSTIC_ROM_CRC/s ; LED '08'
LED_06:          set $C082              ; LED '06'
LED_0b:          set $C083              ; XREF: START:TEST_0b_LOOP/s ; LED '0b'
LED_0E:          set $C086              ; LED '0E'
LED_0A:          set $C088              ; XREF: START:TEST_0A_DIAGNOSTIC_LED_MEMORY/s ; LED '0A'
LED_0F:          set $C08E              ; LED '0F'
LED_09:          set $C090              ; XREF: START:TEST_09_DIAGNOSTIC_SRAM_TESTPATTERN/s ; LED '09'
LED_05:          set $C092              ; LED '05'
LED_04:          set $C099              ; XREF: START:TEST_04_SOUND_CHANNEL_A/s ; LED '04'
LED_0D:          set $C0A1              ; LED '0D'
LED_02:          set $C0A4              ; XREF: START:TEST_02_LOOP/s ; LED '02'
LED_0C:          set $C0A7              ; LED '0C'
LED_03:          set $C0B0              ; XREF: START:TEST_03_VOLTAGE/s ; LED '03'
LED_0_eq:        set $C0B7              ; LED '0='
LED_0_neg:       set $C0BF              ; LED '0-'
LED_00:          set $C0C0              ; XREF: START+18/s ; LED '00'
LED_0U:          set $C0C1              ; LED '0U'
LED_0_vlines:    set $C0EB              ; LED '0‖'
LED_07:          set $C0F8              ; LED '07'
LED_01:          set $C0F9              ; XREF: START:TEST_01_CPU_REGS_AND_SHIFT/s ; LED '01'
LED_0_uline:     set $C0FE              ; LED '0⎺'
LED_0_:          set $C0FF              ; LED '0 '
LED_U8_DOT:      set $C100              ; LED 'U8.'
LED_U6_DOT:      set $C102              ; LED 'U6.'
LED_Ub_DOT:      set $C103              ; LED 'Ub.'
LED_UE_DOT:      set $C106              ; LED 'UE.'
LED_UA_DOT:      set $C108              ; LED 'UA.'
LED_UF_DOT:      set $C10E              ; LED 'UF.'
LED_U9_DOT:      set $C110              ; LED 'U9.'
LED_U5_DOT:      set $C112              ; LED 'U5.'
LED_U4_DOT:      set $C119              ; LED 'U4.'
LED_UD_DOT:      set $C121              ; LED 'UD.'
LED_U2_DOT:      set $C124              ; LED 'U2.'
LED_UC_DOT:      set $C127              ; LED 'UC.'
LED_U3_DOT:      set $C130              ; LED 'U3.'
LED_U_eq_DOT:    set $C137              ; LED 'U=.'
LED_U_neg_DOT:   set $C13F              ; LED 'U-.'
LED_U0_DOT:      set $C140              ; LED 'U0.'
LED_UU_DOT:      set $C141              ; LED 'UU.'
LED_U_vlines_DOT: set $C16B             ; LED 'U‖.'
LED_U7_DOT:      set $C178              ; LED 'U7.'
LED_U1_DOT:      set $C179              ; LED 'U1.'
LED_U_uline_DOT: set $C17E              ; LED 'U⎺.'
LED_U__DOT:      set $C17F              ; LED 'U .'
LED_U8:          set $C180              ; LED 'U8'
LED_U6:          set $C182              ; LED 'U6'
LED_Ub:          set $C183              ; LED 'Ub'
LED_UE:          set $C186              ; LED 'UE'
LED_UA:          set $C188              ; LED 'UA'
LED_UF:          set $C18E              ; LED 'UF'
LED_U9:          set $C190              ; LED 'U9'
LED_U5:          set $C192              ; LED 'U5'
LED_U4:          set $C199              ; LED 'U4'
LED_UD:          set $C1A1              ; LED 'UD'
LED_U2:          set $C1A4              ; LED 'U2'
LED_UC:          set $C1A7              ; LED 'UC'
LED_U3:          set $C1B0              ; LED 'U3'
LED_U_eq:        set $C1B7              ; LED 'U='
LED_U_neg:       set $C1BF              ; LED 'U-'
LED_U0:          set $C1C0              ; LED 'U0'
LED_UU:          set $C1C1              ; LED 'UU'
LED_U_vlines:    set $C1EB              ; LED 'U‖'
LED_U7:          set $C1F8              ; LED 'U7'
LED_U1:          set $C1F9              ; LED 'U1'
LED_U_uline:     set $C1FE              ; LED 'U⎺'
LED_U_:          set $C1FF              ; LED 'U '
LED_vlines_8_DOT: set $EB00             ; LED '‖8.'
LED_vlines_6_DOT: set $EB02             ; LED '‖6.'
LED_vlines_b_DOT: set $EB03             ; LED '‖b.'
LED_vlines_E_DOT: set $EB06             ; LED '‖E.'
LED_vlines_A_DOT: set $EB08             ; LED '‖A.'
LED_vlines_F_DOT: set $EB0E             ; LED '‖F.'
LED_vlines_9_DOT: set $EB10             ; LED '‖9.'
LED_vlines_5_DOT: set $EB12             ; LED '‖5.'
LED_vlines_4_DOT: set $EB19             ; LED '‖4.'
LED_vlines_D_DOT: set $EB21             ; LED '‖D.'
LED_vlines_2_DOT: set $EB24             ; LED '‖2.'
LED_vlines_C_DOT: set $EB27             ; LED '‖C.'
LED_vlines_3_DOT: set $EB30             ; LED '‖3.'
LED_vlines_eq_DOT: set $EB37            ; LED '‖=.'
LED_vlines_neg_DOT: set $EB3F           ; LED '‖-.'
LED_vlines_0_DOT: set $EB40             ; LED '‖0.'
LED_vlines_U_DOT: set $EB41             ; LED '‖U.'
LED_vlines_vlines_DOT: set $EB6B        ; LED '‖‖.'
LED_vlines_7_DOT: set $EB78             ; LED '‖7.'
LED_vlines_1_DOT: set $EB79             ; LED '‖1.'
LED_vlines_uline_DOT: set $EB7E         ; LED '‖⎺.'
LED_vlines___DOT: set $EB7F             ; LED '‖ .'
LED_vlines_8:    set $EB80              ; LED '‖8'
LED_vlines_6:    set $EB82              ; LED '‖6'
LED_vlines_b:    set $EB83              ; LED '‖b'
LED_vlines_E:    set $EB86              ; LED '‖E'
LED_vlines_A:    set $EB88              ; LED '‖A'
LED_vlines_F:    set $EB8E              ; LED '‖F'
LED_vlines_9:    set $EB90              ; LED '‖9'
LED_vlines_5:    set $EB92              ; LED '‖5'
LED_vlines_4:    set $EB99              ; LED '‖4'
LED_vlines_D:    set $EBA1              ; LED '‖D'
LED_vlines_2:    set $EBA4              ; LED '‖2'
LED_vlines_C:    set $EBA7              ; LED '‖C'
LED_vlines_3:    set $EBB0              ; LED '‖3'
LED_vlines_eq:   set $EBB7              ; LED '‖='
LED_vlines_neg:  set $EBBF              ; LED '‖-'
LED_vlines_0:    set $EBC0              ; LED '‖0'
LED_vlines_U:    set $EBC1              ; LED '‖U'
LED_vlines_vlines: set $EBEB            ; LED '‖‖'
LED_vlines_7:    set $EBF8              ; LED '‖7'
LED_vlines_1:    set $EBF9              ; LED '‖1'
LED_vlines_uline: set $EBFE             ; LED '‖⎺'
LED_vlines__:    set $EBFF              ; XREF: START+566/s
                                        ; START+794/s ... ; LED '‖ '
LED_78_DOT:      set $F800              ; LED '78.'
LED_76_DOT:      set $F802              ; LED '76.'
LED_7b_DOT:      set $F803              ; LED '7b.'
LED_7E_DOT:      set $F806              ; LED '7E.'
LED_7A_DOT:      set $F808              ; LED '7A.'
LED_7F_DOT:      set $F80E              ; LED '7F.'
LED_79_DOT:      set $F810              ; LED '79.'
LED_75_DOT:      set $F812              ; LED '75.'
LED_74_DOT:      set $F819              ; LED '74.'
LED_7D_DOT:      set $F821              ; LED '7D.'
LED_72_DOT:      set $F824              ; LED '72.'
LED_7C_DOT:      set $F827              ; LED '7C.'
LED_73_DOT:      set $F830              ; LED '73.'
LED_7_eq_DOT:    set $F837              ; LED '7=.'
LED_7_neg_DOT:   set $F83F              ; LED '7-.'
LED_70_DOT:      set $F840              ; LED '70.'
LED_7U_DOT:      set $F841              ; LED '7U.'
LED_7_vlines_DOT: set $F86B             ; LED '7‖.'
LED_77_DOT:      set $F878              ; LED '77.'
LED_71_DOT:      set $F879              ; LED '71.'
LED_7_uline_DOT: set $F87E              ; LED '7⎺.'
LED_7__DOT:      set $F87F              ; LED '7 .'
LED_78:          set $F880              ; XREF: START:TEST_78_RTC_1s_CLOCK/s ; LED '78'
LED_76:          set $F882              ; LED '76'
LED_7b:          set $F883              ; LED '7b'
LED_7E:          set $F886              ; LED '7E'
LED_7A:          set $F888              ; XREF: START:TEST_7A_RTC_16Hz_ALARM/s ; LED '7A'
LED_7F:          set $F88E              ; LED '7F'
LED_79:          set $F890              ; XREF: START:TEST_79_LOOP/s ; LED '79'
LED_75:          set $F892              ; LED '75'
LED_74:          set $F899              ; LED '74'
LED_7D:          set $F8A1              ; LED '7D'
LED_72:          set $F8A4              ; LED '72'
LED_7C:          set $F8A7              ; LED '7C'
LED_73:          set $F8B0              ; LED '73'
LED_7_eq:        set $F8B7              ; LED '7='
LED_7_neg:       set $F8BF              ; LED '7-'
LED_70:          set $F8C0              ; XREF: START:TEST_70_DMA_TRANSFER/s ; LED '70'
LED_7U:          set $F8C1              ; LED '7U'
LED_7_vlines:    set $F8EB              ; LED '7‖'
LED_77:          set $F8F8              ; LED '77'
LED_71:          set $F8F9              ; LED '71'
LED_7_uline:     set $F8FE              ; LED '7⎺'
LED_7_:          set $F8FF              ; LED '7 '
LED_18_DOT:      set $F900              ; LED '18.'
LED_16_DOT:      set $F902              ; LED '16.'
LED_1b_DOT:      set $F903              ; LED '1b.'
LED_1E_DOT:      set $F906              ; LED '1E.'
LED_1A_DOT:      set $F908              ; LED '1A.'
LED_1F_DOT:      set $F90E              ; LED '1F.'
LED_19_DOT:      set $F910              ; LED '19.'
LED_15_DOT:      set $F912              ; LED '15.'
LED_14_DOT:      set $F919              ; LED '14.'
LED_1D_DOT:      set $F921              ; LED '1D.'
LED_12_DOT:      set $F924              ; LED '12.'
LED_1C_DOT:      set $F927              ; LED '1C.'
LED_13_DOT:      set $F930              ; LED '13.'
LED_1_eq_DOT:    set $F937              ; LED '1=.'
LED_1_neg_DOT:   set $F93F              ; LED '1-.'
LED_10_DOT:      set $F940              ; LED '10.'
LED_1U_DOT:      set $F941              ; LED '1U.'
LED_1_vlines_DOT: set $F96B             ; LED '1‖.'
LED_17_DOT:      set $F978              ; LED '17.'
LED_11_DOT:      set $F979              ; LED '11.'
LED_1_uline_DOT: set $F97E              ; LED '1⎺.'
LED_1__DOT:      set $F97F              ; LED '1 .'
LED_18:          set $F980              ; XREF: START:TEST_18_REGS_MFP_AER_VR/s ; LED '18'
LED_16:          set $F982              ; LED '16'
LED_1b:          set $F983              ; XREF: START:TEST_1b_REGS_DMA_PTR_SECTOR_COUNT/s ; LED '1b'
LED_1E:          set $F986              ; XREF: START:TEST_1E_IDE/s ; LED '1E'
LED_1A:          set $F988              ; XREF: START:TEST_1A_DELAY/s ; LED '1A'
LED_1F:          set $F98E              ; LED '1F'
LED_19:          set $F990              ; XREF: START:TEST_19_REGS_SHIFTER_BASE_SCANLINE/s ; LED '19'
LED_15:          set $F992              ; LED '15'
LED_14:          set $F999              ; LED '14'
LED_1D:          set $F9A1              ; XREF: START:TEST_1d_REGS_BLITTER/s ; LED '1D'
LED_12:          set $F9A4              ; XREF: START:TEST_12_RAM_FIRST_2KB/s ; LED '12'
LED_1C:          set $F9A7              ; XREF: START:TEST_1c_LOOP/s ; LED '1C'
LED_13:          set $F9B0              ; LED '13'
LED_1_eq:        set $F9B7              ; LED '1='
LED_1_neg:       set $F9BF              ; LED '1-'
LED_10:          set $F9C0              ; XREF: START:TEST_10_TOS_ROM_CRC/s ; LED '10'
LED_1U:          set $F9C1              ; LED '1U'
LED_1_vlines:    set $F9EB              ; LED '1‖'
LED_17:          set $F9F8              ; LED '17'
LED_11:          set $F9F9              ; LED '11'
LED_1_uline:     set $F9FE              ; LED '1⎺'
LED_1_:          set $F9FF              ; LED '1 '
LED_uline_8_DOT: set $FE00              ; LED '⎺8.'
LED_uline_6_DOT: set $FE02              ; LED '⎺6.'
LED_uline_b_DOT: set $FE03              ; LED '⎺b.'
LED_uline_E_DOT: set $FE06              ; LED '⎺E.'
LED_uline_A_DOT: set $FE08              ; LED '⎺A.'
LED_uline_F_DOT: set $FE0E              ; LED '⎺F.'
LED_uline_9_DOT: set $FE10              ; LED '⎺9.'
LED_uline_5_DOT: set $FE12              ; LED '⎺5.'
LED_uline_4_DOT: set $FE19              ; LED '⎺4.'
LED_uline_D_DOT: set $FE21              ; LED '⎺D.'
LED_uline_2_DOT: set $FE24              ; LED '⎺2.'
LED_uline_C_DOT: set $FE27              ; LED '⎺C.'
LED_uline_3_DOT: set $FE30              ; LED '⎺3.'
LED_uline_eq_DOT: set $FE37             ; LED '⎺=.'
LED_uline_neg_DOT: set $FE3F            ; LED '⎺-.'
LED_uline_0_DOT: set $FE40              ; LED '⎺0.'
LED_uline_U_DOT: set $FE41              ; LED '⎺U.'
LED_uline_vlines_DOT: set $FE6B         ; LED '⎺‖.'
LED_uline_7_DOT: set $FE78              ; LED '⎺7.'
LED_uline_1_DOT: set $FE79              ; LED '⎺1.'
LED_uline_uline_DOT: set $FE7E          ; LED '⎺⎺.'
LED_uline___DOT: set $FE7F              ; LED '⎺ .'
LED_uline_8:     set $FE80              ; LED '⎺8'
LED_uline_6:     set $FE82              ; LED '⎺6'
LED_uline_b:     set $FE83              ; LED '⎺b'
LED_uline_E:     set $FE86              ; LED '⎺E'
LED_uline_A:     set $FE88              ; LED '⎺A'
LED_uline_F:     set $FE8E              ; LED '⎺F'
LED_uline_9:     set $FE90              ; LED '⎺9'
LED_uline_5:     set $FE92              ; LED '⎺5'
LED_uline_4:     set $FE99              ; LED '⎺4'
LED_uline_D:     set $FEA1              ; LED '⎺D'
LED_uline_2:     set $FEA4              ; LED '⎺2'
LED_uline_C:     set $FEA7              ; LED '⎺C'
LED_uline_3:     set $FEB0              ; LED '⎺3'
LED_uline_eq:    set $FEB7              ; LED '⎺='
LED_uline_neg:   set $FEBF              ; LED '⎺-'
LED_uline_0:     set $FEC0              ; LED '⎺0'
LED_uline_U:     set $FEC1              ; LED '⎺U'
LED_uline_vlines: set $FEEB             ; LED '⎺‖'
LED_uline_7:     set $FEF8              ; LED '⎺7'
LED_uline_1:     set $FEF9              ; LED '⎺1'
LED_uline_uline: set $FEFE              ; XREF: START+27F4/s
                                        ; START+281E/s ; LED '⎺⎺'
LED_uline__:     set $FEFF              ; LED '⎺ '
LED__8_DOT:      set $FF00              ; LED ' 8.'
LED__6_DOT:      set $FF02              ; LED ' 6.'
LED__b_DOT:      set $FF03              ; LED ' b.'
LED__E_DOT:      set $FF06              ; LED ' E.'
LED__A_DOT:      set $FF08              ; LED ' A.'
LED__F_DOT:      set $FF0E              ; LED ' F.'
LED__9_DOT:      set $FF10              ; LED ' 9.'
LED__5_DOT:      set $FF12              ; LED ' 5.'
LED__4_DOT:      set $FF19              ; LED ' 4.'
LED__D_DOT:      set $FF21              ; LED ' D.'
LED__2_DOT:      set $FF24              ; LED ' 2.'
LED__C_DOT:      set $FF27              ; LED ' C.'
LED__3_DOT:      set $FF30              ; LED ' 3.'
LED___eq_DOT:    set $FF37              ; LED ' =.'
LED___neg_DOT:   set $FF3F              ; LED ' -.'
LED__0_DOT:      set $FF40              ; LED ' 0.'
LED__U_DOT:      set $FF41              ; LED ' U.'
LED___vlines_DOT: set $FF6B             ; LED ' ‖.'
LED__7_DOT:      set $FF78              ; LED ' 7.'
LED__1_DOT:      set $FF79              ; LED ' 1.'
LED___uline_DOT: set $FF7E              ; LED ' ⎺.'
LED____DOT:      set $FF7F              ; LED '  .'
LED__8:          set $FF80              ; LED ' 8'
LED__6:          set $FF82              ; LED ' 6'
LED__b:          set $FF83              ; LED ' b'
LED__E:          set $FF86              ; LED ' E'
LED__A:          set $FF88              ; LED ' A'
LED__F:          set $FF8E              ; LED ' F'
LED__9:          set $FF90              ; LED ' 9'
LED__5:          set $FF92              ; LED ' 5'
LED__4:          set $FF99              ; LED ' 4'
LED__D:          set $FFA1              ; LED ' D'
LED__2:          set $FFA4              ; LED ' 2'
LED__C:          set $FFA7              ; LED ' C'
LED__3:          set $FFB0              ; LED ' 3'
LED___eq:        set $FFB7              ; LED ' ='
LED___neg:       set $FFBF              ; LED ' -'
LED__0:          set $FFC0              ; LED ' 0'
LED__U:          set $FFC1              ; LED ' U'
LED___vlines:    set $FFEB              ; LED ' ‖'
LED__7:          set $FFF8              ; LED ' 7'
LED__1:          set $FFF9              ; LED ' 1'
LED___uline:     set $FFFE              ; LED ' ⎺'
LED___:          set $FFFF              ; XREF: START+1E8/s
                                        ; START+248/s ... ; LED '  '

; ---------------------------------------------------------------------------

; enum DIAG_LED_MASK, bitfield, width 1 byte
DIAG_LED_MASK_1: set 1
DIAG_LED_MASK_2: set 2
DIAG_LED_MASK_4: set 4
DIAG_LED_MASK_8: set 8
DIAG_LED_MASK_10: set $10
DIAG_LED_MASK_20: set $20
DIAG_LED_MASK_YELLOW: set $40           ; XREF: START+26/s START+AA/s ...
DIAG_LED_MASK_80: set $80

; ---------------------------------------------------------------------------

; enum DIAG_LED_BITS, width 1 byte
DIAG_LED_BITS_0: set 0
DIAG_LED_BITS_1: set 1
DIAG_LED_BITS_2: set 2
DIAG_LED_BITS_3: set 3
DIAG_LED_BITS_4: set 4
DIAG_LED_BITS_5: set 5
DIAG_LED_BITS_YELLOW: set 6             ; XREF: START+E4/s START+14C/s ...
DIAG_LED_BITS_7: set 7

; ---------------------------------------------------------------------------

; enum DIAG_DIPSW_BITS
DIAG_DIPSW_FUNCTION_DIP8: set 0         ; XREF: START+92/s START+F2/s ...
DIAG_DIPSW_MEASUREMENT_MODE: set 1      ; XREF: START:TEST_LOOP_DONE/s
DIAG_DIPSW_BITS_2: set 2
DIAG_DIPSW_BITS_3: set 3
DIAG_DIPSW_BITS_4: set 4
DIAG_DIPSW_TEST_SOUND: set 5            ; XREF: START+3FC/s
                                        ; START:TEST_SOUND_CHANNEL_B/s
DIAG_DIPSW_STOP_ON_ERROR: set 6         ; XREF: START+EA/s START+152/s ...
DIAG_DIPSW_BITS_7: set 7

; ---------------------------------------------------------------------------

; enum CONSTANTS
COUNTER_DELAY_1ms: set 1                ; XREF: check_mem_bitmask_8bit_slow_unused+8/s
                                        ; check_mem_bitmask_8bit_slow_unused+32/s ; 1ms delay
COUNTER_DELAY_2ms: set 2                ; XREF: START+FE4/s
                                        ; START+100A/s ... ; 2ms delay
COUNTER_DELAY_10ms: set $A              ; XREF: START+426/s
                                        ; START+FC4/s ... ; 10ms delay
COUNTER_DELAY_20ms: set $14             ; XREF: START+109C/s
                                        ; START+115A/s ; 20ms delay
COUNTER_DELAY_100ms: set $64            ; XREF: START+1972/s
                                        ; START+1A3C/s ... ; 0.1s delay
COUNTER_DELAY_150ms: set $96            ; XREF: START+1EE/s
                                        ; START+24E/s ... ; 0.15s delay
COUNTER_DELAY_200ms: set $C8            ; XREF: START+1B7E/s
                                        ; START+1C1A/s ; 0.2s delay
COUNTER_DELAY_250ms: set $FA            ; XREF: START:loc_FA024C/s
                                        ; START:loc_FA026C/s ... ; 0.25s delay
COUNTER_DELAY_300ms: set $12C           ; XREF: START+2328/s ; 0.3s delay
COUNTER_DELAY_500ms: set $1F4           ; XREF: START+20E/s
                                        ; START+22E/s ... ; 0.5s delay
COUNTER_DELAY_1s: set $3E8              ; XREF: START+1CE/s
                                        ; START+2EA/s ... ; 1s delay
SCREEN_SIZE_IN_16BYTES: set $7CF        ; XREF: START+82/s
                                        ; START+1812/s ...
BLITTER_TEST_WORDS: set $7CFF           ; XREF: START+200A/s
                                        ; START+20EC/s
DELAY_COUNTER:   set $C000              ; XREF: START+120/s
                                        ; START+3F2/s ... ; short delay between tests
BUTTON_DEBOUNCE_COUNTER: set $F000      ; XREF: START:loc_FA0172/s
                                        ; START:loc_FA01DA/s ... ; counter for debouncing a button press
ACIA_IKBD_DELAY_COUNTER: set $30D40     ; XREF: START:loc_FA1220/s

; ---------------------------------------------------------------------------

; enum IO_CONFIG_DIP_BITS, width 1 byte
IO_CONFIG_DIP_BITS_0: set 0
IO_CONFIG_DIP_BITS_1: set 1
IO_CONFIG_DIP_RTC_ALARM: set 2          ; XREF: START:loc_FA242C/s
                                        ; START+2474/s ... ; 0: RTC Alarm triggered /(RTC_ALARM)
IO_CONFIG_DIP_SOURCE_DEAD: set 3        ; XREF: START+13E/s ; 0: “Common Source” voltage level below 7.2V /(SOURCE_DEAD) - triggers an NMI
IO_CONFIG_DIP_SOURCE_LOW: set 4         ; XREF: START:loc_FA01EA/s
                                        ; START:loc_FA26F2/s ... ; 0: "Common Source” voltage level below 8.8V /(SOURCE_LOW)
IO_CONFIG_DIP_BITS_5: set 5
IO_CONFIG_DIP_BITS_6: set 6
IO_CONFIG_DIP_BITS_7: set 7

;
; +-------------------------------------------------------------------------+
; |      This file was generated by The Interactive Disassembler (IDA)      |
; |           Copyright (c) 2021 Hex-Rays, <support@hex-rays.com>           |
; |                      License info: 48-3051-7314-20                      |
; |                     Markus Fritze, Personal license                     |
; +-------------------------------------------------------------------------+
;
; Input SHA256 : 8B5DA24A055DFF7734322EF611E289EA531412DFA957DF7A7FE4BBD9004472CC
; Input MD5    : C1C01D24585F11D8ECF0647583FF1C2D
; Input CRC32  : FBBFB137


; Processor       : 68000
; Target assembler: Pila PalmPilot assembler

 include "pilot.inc"

; ===========================================================================

; Segment type: Regular
                res 'RAM', 32767
RAM_BASE:       ds.b 8                  ; DATA XREF: START+13C2↓o
                                        ; START+13E8↓o ...
BUSERROR_VECT:  ds.b 4                  ; DATA XREF: START+2C↓o
                                        ; START+44↓w ...
ADDERROR_VECT:  ds.b $5C                ; DATA XREF: START+4C↓w
                                        ; START+B02↓w
HBL_VECT:       ds.b 4                  ; DATA XREF: START+1C0E↓w
                                        ; START+1C88↓w
                ds.b 4
VBL_VECT:       ds.b 4                  ; DATA XREF: START+1B72↓w
                                        ; START:loc_FA1C4C↓w ...
                ds.b 4
                ds.b 4
NMI_VECT:       ds.b 4                  ; DATA XREF: START+54↓w
                                        ; START+B0A↓w
                ds.b $B4
TIMER_A_VECT:   ds.b 4                  ; DATA XREF: START+1CB4↓w
                                        ; START+1E08↓w
                ds.b $2C8
VECTOR_TABLE_END:ds.b $400              ; DATA XREF: START+3C↓o
                                        ; START+AF2↓o
RAM_2kb:        ds.b $F800              ; DATA XREF: START+A64↓o
                                        ; START+13C6↓o ...
RAM_video_buffer:ds.b $7D00             ; DATA XREF: START+62↓t
                                        ; START+68↓t ...
RAM_video_buffer_end:ds.b $E8300             ; 0
                                        ; DATA XREF: START+1822↓o
                                        ; START+18D6↓o
RAM_END_1MB:    ds.b 4                  ; DATA XREF: START+13E0↓o
                                        ; START+1424↓o ...
; end of 'RAM'

; ===========================================================================

; Segment type: Regular
                res 'TOS_', 32767
TOS_ROM:        ds.b $3FFFE             ; DATA XREF: START+860↓o
TOS_ROM_CHECKSUM:ds.b 2                 ; DATA XREF: START+866↓o
                                        ; START+892↓r
; end of 'TOS_ROM'

; ===========================================================================

; Segment type: Regular
                res 'IO_I', 222
IO_IDE_DATA:    ds.b 4                  ; DATA XREF: START+F7A↓w
IO_IDE_ERR:     ds.b 2                  ; DATA XREF: START+F80↓r
                ds.b $32
IO_IDE_ALT_STATUS:ds.b 2                ; DATA XREF: START+F86↓r
                ds.b 2
IO_IDE_ALT_COM_REG:ds.b 2               ; DATA XREF: START+F8C↓r
                ds.b 2
; end of 'IO_IDE'

; File Name   : /Users/sarnau/Desktop/STBook_0.65_91.10.03.BIN
; Format      : Binary file
; Base Address: 0000h Range: FA0000h - FC0000h Loaded length: 20000h
; ===========================================================================

; Segment type: Pure code
                res 'DIAG', 32767
ROM_MODULE_BASE:dc.l $FA52235F          ; DATA XREF: START+458↓o

; =============== S U B R O U T I N E =======================================

; Attributes: thunk

proc            ROM_MODULE_START()
                bra.s   START
; End of function ROM_MODULE_START

; ---------------------------------------------------------------------------
aAtariStbookSty:dc.b $D,$A
                dc.b $D,$A
                dc.b 'Atari STBook/STylus Test Cartridge',$D,$A
                dc.b '  Version 0.65 of Oct  3 21:18:00 JST 1991',$D,$A,0
aCopyright1991A:dc.b 'Copyright 1991 Atari Corp.',$D,$A,0

; =============== S U B R O U T I N E =======================================


proc            START()                 ; CODE XREF: ROM_MODULE_START↑j
                                        ; START+2634↓j

; FUNCTION CHUNK AT 00FA1C5E SIZE 000000AC BYTES
; FUNCTION CHUNK AT 00FA1D12 SIZE 00000178 BYTES
; FUNCTION CHUNK AT 00FA1E98 SIZE 00000A08 BYTES

                move    #$2700,sr
                movea.l #DIAG_SRAM_STACK_TOP,sp
                move.b  #2,(IO_video_st_shifter_mode).w ; ST High Res (only supported resolution)
                move    a6,usp          ; user mode is never used, so it makes no difference loading it with A6 (which points into ROM)
                move.w  #%1010,(IO_memory_conf_reg).w ; setup controller for 2Mb/2Mb - only valid configuration on a ST Book

                move.w  #LED_00,(IO_DIAG_LED_1).w ; FF U8 => DX2
                move.b  #$00,(DIAG_SRAM_TEST_NUMBER).l
                eori.b  #DIAG_LED_MASK_YELLOW,(IO_DIAG_LED).w ; Bit 6: 0:yellow LED on, 1:yellow LED off

; Setup all exception vectors
                movea.l #BUSERROR_VECT,a0
                move.l  #EXCEPTION_VECTORS,d0

loop:                                   ; CODE XREF: START+42↓j
                move.l  d0,(a0)+
                addq.l  #8,d0
                cmpa.l  #VECTOR_TABLE_END,a0
                bne.s   loop
                move.l  #BUSERROR_EXCEPTION,(BUSERROR_VECT).w ; LED 'b.E.'
                move.l  #ADDRESSERROR_EXCEPTION,(ADDERROR_VECT).w ; LED 'A.E.'
                move.l  #NMI_EXCEPTION,(NMI_VECT).w ; LED 'b.4.'

                move.b  #0,(IO_DIAG_LED).w ; Bit 6: 0:yellow LED on, 1:yellow LED off

; Clear video memory
                move.b  #RAM_video_buffer>>8,(IO_shifter_video_base_mid).w
                move.b  #RAM_video_buffer>>16,(IO_shifter_video_base_high).w
                move.w  #0,(IO_shifter_color_palette).w ; Black on white
                lea     (RAM_video_buffer).l,a0
                clr.l   d1
                clr.l   d2
                clr.l   d3
                clr.l   d4
                move.w  #SCREEN_SIZE_IN_16BYTES,d0

loop_0:                                 ; CODE XREF: START+8E↓j
                move.l  d1,(a0)+
                move.l  d2,(a0)+
                move.l  d3,(a0)+
                move.l  d4,(a0)+
                dbf     d0,loop_0

; if the function button is pressed during reset, display the version number of the diagnostic ROM
                btst    #DIAG_DIPSW_FUNCTION_DIP8,(IO_DIAG_DIPSW).w ; DIP Switches, #0=0:Function button pressed, #1=1:enable measurement mode, #5=1:sound check enabled, #6=1:stop at test failure
                beq     LED_display_version_number ; LED 1 'U'

TEST_01_CPU_REGS_AND_SHIFT:             ; FF U8 => DX2
                move.w  #LED_01,(IO_DIAG_LED_1).w
                move.b  #$01,(DIAG_SRAM_TEST_NUMBER).l
                eori.b  #DIAG_LED_MASK_YELLOW,(IO_DIAG_LED).w ; Bit 6: 0:yellow LED on, 1:yellow LED off
                clr.l   d0
                bset    #0,d0
                asl.l   #1,d0
                move.l  d0,d1
                asl.l   #1,d1
                move.l  d1,d2
                asl.l   #1,d2
                move.l  d2,d3           ; CPU test by shifting and using all data registers
                asl.l   #1,d3
                move.l  d3,d4
                asl.l   #1,d4
                move.l  d4,d5
                asl.l   #1,d5
                move.l  d5,d6
                asl.l   #1,d6
                move.l  d6,d7
                asl.l   #1,d7
                cmpi.l  #$100,d7
                bne.s   loc_FA0156
                bra.s   TEST_02_LOOP
; ---------------------------------------------------------------------------

loc_FA0156:                             ; CODE XREF: START+DA↑j
                                        ; START+F8↓j
                move.w  #LED_0_DOT_1,(IO_DIAG_LED_1).w ; FF U8 => DX2
                bclr    #DIAG_LED_BITS_YELLOW,(IO_DIAG_LED).w ; Bit 6: 0:yellow LED on, 1:yellow LED off
                btst    #DIAG_DIPSW_STOP_ON_ERROR,(IO_DIAG_DIPSW).w ; DIP Switches, #0=0:Function button pressed, #1=1:enable measurement mode, #5=1:sound check enabled, #6=1:stop at test failure

endless_loop:                           ; CODE XREF: START:endless_loop↓j
                bne.s   endless_loop
                btst    #DIAG_DIPSW_FUNCTION_DIP8,(IO_DIAG_DIPSW).w ; DIP Switches, #0=0:Function button pressed, #1=1:enable measurement mode, #5=1:sound check enabled, #6=1:stop at test failure
                bne.s   loc_FA0156

loc_FA0172:                             ; CODE XREF: START+104↓j
                move.w  #BUTTON_DEBOUNCE_COUNTER,d0 ; counter for debouncing a button press

loc_FA0176:                             ; CODE XREF: START+108↓j
                btst    #DIAG_DIPSW_FUNCTION_DIP8,(IO_DIAG_DIPSW).w ; DIP Switches, #0=0:Function button pressed, #1=1:enable measurement mode, #5=1:sound check enabled, #6=1:stop at test failure
                beq.s   loc_FA0172
                subq.w  #1,d0
                bne.s   loc_FA0176

loc_FA0182:                             ; CODE XREF: START:loc_FA0182↓j
                bra.s   loc_FA0182
; ---------------------------------------------------------------------------

TEST_02_LOOP:                           ; CODE XREF: START+DC↑j
                move.w  #LED_02,(IO_DIAG_LED_1).w ; FF U8 => DX2
                move.b  #$02,(DIAG_SRAM_TEST_NUMBER).l
                eori.b  #DIAG_LED_MASK_YELLOW,(IO_DIAG_LED).w ; Bit 6: 0:yellow LED on, 1:yellow LED off
                move.w  #DELAY_COUNTER,d0 ; short delay between tests

loop_1:                                 ; CODE XREF: START+126↓j
                nop
                dbf     d0,loop_1

TEST_03_VOLTAGE:                        ; FF U8 => DX2
                move.w  #LED_03,(IO_DIAG_LED_1).w
                move.b  #$03,(DIAG_SRAM_TEST_NUMBER).l
                eori.b  #DIAG_LED_MASK_YELLOW,(IO_DIAG_LED).w ; Bit 6: 0:yellow LED on, 1:yellow LED off

                btst    #IO_CONFIG_DIP_SOURCE_DEAD,(IO_CONFIG_DIP+1).w ; 0: “Common Source” voltage level below 7.2V /(SOURCE_DEAD) - triggers an NMI
                bne.s   loc_FA01EA

TEST_03_SOURCE_DEAD:                    ; CODE XREF: START+160↓j
                move.w  #LED_b_DOT_3,(IO_DIAG_LED_1).w ; FF U8 => DX2
                bclr    #DIAG_LED_BITS_YELLOW,(IO_DIAG_LED).w ; Bit 6: 0:yellow LED on, 1:yellow LED off
                btst    #DIAG_DIPSW_STOP_ON_ERROR,(IO_DIAG_DIPSW).w ; DIP Switches, #0=0:Function button pressed, #1=1:enable measurement mode, #5=1:sound check enabled, #6=1:stop at test failure

endless_loop_0:                         ; CODE XREF: START:endless_loop_0↓j
                bne.s   endless_loop_0
                btst    #DIAG_DIPSW_FUNCTION_DIP8,(IO_DIAG_DIPSW).w ; DIP Switches, #0=0:Function button pressed, #1=1:enable measurement mode, #5=1:sound check enabled, #6=1:stop at test failure
                bne.s   TEST_03_SOURCE_DEAD

loc_FA01DA:                             ; CODE XREF: START+16C↓j
                move.w  #BUTTON_DEBOUNCE_COUNTER,d0 ; counter for debouncing a button press

loc_FA01DE:                             ; CODE XREF: START+170↓j
                btst    #DIAG_DIPSW_FUNCTION_DIP8,(IO_DIAG_DIPSW).w ; DIP Switches, #0=0:Function button pressed, #1=1:enable measurement mode, #5=1:sound check enabled, #6=1:stop at test failure
                beq.s   loc_FA01DA
                subq.w  #1,d0
                bne.s   loc_FA01DE

loc_FA01EA:                             ; CODE XREF: START+144↑j
                btst    #IO_CONFIG_DIP_SOURCE_LOW,(IO_CONFIG_DIP+1).w ; 0: "Common Source” voltage level below 8.8V /(SOURCE_LOW)
                bne.s   loc_FA021E

TEST_03_SOURCE_LOW:                     ; CODE XREF: START+194↓j
                move.w  #LED_b_DOT_1,(IO_DIAG_LED_1).w ; FF U8 => DX2
                bclr    #DIAG_LED_BITS_YELLOW,(IO_DIAG_LED).w ; Bit 6: 0:yellow LED on, 1:yellow LED off
                btst    #DIAG_DIPSW_STOP_ON_ERROR,(IO_DIAG_DIPSW).w ; DIP Switches, #0=0:Function button pressed, #1=1:enable measurement mode, #5=1:sound check enabled, #6=1:stop at test failure

endless_loop_1:                         ; CODE XREF: START:endless_loop_1↓j
                bne.s   endless_loop_1
                btst    #DIAG_DIPSW_FUNCTION_DIP8,(IO_DIAG_DIPSW).w ; DIP Switches, #0=0:Function button pressed, #1=1:enable measurement mode, #5=1:sound check enabled, #6=1:stop at test failure
                bne.s   TEST_03_SOURCE_LOW

loc_FA020E:                             ; CODE XREF: START+1A0↓j
                move.w  #BUTTON_DEBOUNCE_COUNTER,d0 ; counter for debouncing a button press

loc_FA0212:                             ; CODE XREF: START+1A4↓j
                btst    #DIAG_DIPSW_FUNCTION_DIP8,(IO_DIAG_DIPSW).w ; DIP Switches, #0=0:Function button pressed, #1=1:enable measurement mode, #5=1:sound check enabled, #6=1:stop at test failure
                beq.s   loc_FA020E
                subq.w  #1,d0
                bne.s   loc_FA0212

loc_FA021E:                             ; CODE XREF: START+178↑j
                clr.w   d3
                move.b  (IO_CONFIG_POWER_VOLTAGE+1).w,d3 ; 8-bit Common Power Voltage Level in 100mV steps (PAD0X)
                cmpi.w  #$40,d3 ; '@'
                blt.s   TEST_03_COMMON_VOLTAGE_LOW
                cmpi.w  #$E0,d3
                blt     loc_FA033A

TEST_03_COMMON_VOLTAGE_LOW:             ; CODE XREF: START+1B0↑j
                                        ; START+2AE↓j
                move.w  #LED_0_DOT_3,(IO_DIAG_LED_1).w ; FF U8 => DX2
                bclr    #DIAG_LED_BITS_YELLOW,(IO_DIAG_LED).w ; Bit 6: 0:yellow LED on, 1:yellow LED off
                btst    #DIAG_DIPSW_STOP_ON_ERROR,(IO_DIAG_DIPSW).w ; DIP Switches, #0=0:Function button pressed, #1=1:enable measurement mode, #5=1:sound check enabled, #6=1:stop at test failure

endless_loop_2:                         ; CODE XREF: START:endless_loop_2↓j
                bne.s   endless_loop_2
                move.w  #COUNTER_DELAY_1s,d0 ; 1s delay
                subq.w  #1,d0

loc_FA024C:                             ; CODE XREF: START+1E4↓j
                move.l  #COUNTER_DELAY_250ms,d1 ; 0.25s delay

loc_FA0252:                             ; CODE XREF: START:loc_FA025A↓j
                subq.l  #1,d1
                nop
                bra     *+4
; ---------------------------------------------------------------------------

loc_FA025A:                             ; CODE XREF: START+1DE↑j
                bne.s   loc_FA0252
                dbf     d0,loc_FA024C
                move.w  #LED___,(IO_DIAG_LED_1).w ; FF U8 => DX2
                move.w  #COUNTER_DELAY_150ms,d0 ; 0.15s delay
                subq.w  #1,d0

loc_FA026C:                             ; CODE XREF: START+204↓j
                move.l  #COUNTER_DELAY_250ms,d1 ; 0.25s delay

loc_FA0272:                             ; CODE XREF: START:loc_FA027A↓j
                subq.l  #1,d1
                nop
                bra     *+4
; ---------------------------------------------------------------------------

loc_FA027A:                             ; CODE XREF: START+1FE↑j
                bne.s   loc_FA0272
                dbf     d0,loc_FA026C
                moveq   #1,d0
                bsr     LED_show_hex_byte_D0
                move.w  #COUNTER_DELAY_500ms,d0 ; 0.5s delay
                subq.w  #1,d0

loc_FA028C:                             ; CODE XREF: START+224↓j
                move.l  #COUNTER_DELAY_250ms,d1 ; 0.25s delay

loc_FA0292:                             ; CODE XREF: START:loc_FA029A↓j
                subq.l  #1,d1
                nop
                bra     *+4
; ---------------------------------------------------------------------------

loc_FA029A:                             ; CODE XREF: START+21E↑j
                bne.s   loc_FA0292
                dbf     d0,loc_FA028C
                move.w  #LED_eq__,(IO_DIAG_LED_1).w ; FF U8 => DX2
                move.w  #COUNTER_DELAY_500ms,d0 ; 0.5s delay
                subq.w  #1,d0

loc_FA02AC:                             ; CODE XREF: START+244↓j
                move.l  #COUNTER_DELAY_250ms,d1 ; 0.25s delay

loc_FA02B2:                             ; CODE XREF: START:loc_FA02BA↓j
                subq.l  #1,d1
                nop
                bra     *+4
; ---------------------------------------------------------------------------

loc_FA02BA:                             ; CODE XREF: START+23E↑j
                bne.s   loc_FA02B2
                dbf     d0,loc_FA02AC
                move.w  #LED___,(IO_DIAG_LED_1).w ; FF U8 => DX2
                move.w  #COUNTER_DELAY_150ms,d0 ; 0.15s delay
                subq.w  #1,d0

loc_FA02CC:                             ; CODE XREF: START+264↓j
                move.l  #COUNTER_DELAY_250ms,d1 ; 0.25s delay

loc_FA02D2:                             ; CODE XREF: START:loc_FA02DA↓j
                subq.l  #1,d1
                nop
                bra     *+4
; ---------------------------------------------------------------------------

loc_FA02DA:                             ; CODE XREF: START+25E↑j
                bne.s   loc_FA02D2
                dbf     d0,loc_FA02CC
                move.l  d3,d0
                bsr     LED_show_hex_byte_D0
                move.w  #COUNTER_DELAY_500ms,d0 ; 0.5s delay
                subq.w  #1,d0

loc_FA02EC:                             ; CODE XREF: START+284↓j
                move.l  #COUNTER_DELAY_250ms,d1 ; 0.25s delay

loc_FA02F2:                             ; CODE XREF: START:loc_FA02FA↓j
                subq.l  #1,d1
                nop
                bra     *+4
; ---------------------------------------------------------------------------

loc_FA02FA:                             ; CODE XREF: START+27E↑j
                bne.s   loc_FA02F2
                dbf     d0,loc_FA02EC
                move.w  #LED___,(IO_DIAG_LED_1).w ; FF U8 => DX2
                move.w  #COUNTER_DELAY_500ms,d0 ; 0.5s delay
                subq.w  #1,d0

loc_FA030C:                             ; CODE XREF: START+2A4↓j
                move.l  #COUNTER_DELAY_250ms,d1 ; 0.25s delay

loc_FA0312:                             ; CODE XREF: START:loc_FA031A↓j
                subq.l  #1,d1
                nop
                bra     *+4
; ---------------------------------------------------------------------------

loc_FA031A:                             ; CODE XREF: START+29E↑j
                bne.s   loc_FA0312
                dbf     d0,loc_FA030C
                btst    #DIAG_DIPSW_FUNCTION_DIP8,(IO_DIAG_DIPSW).w ; DIP Switches, #0=0:Function button pressed, #1=1:enable measurement mode, #5=1:sound check enabled, #6=1:stop at test failure
                bne     TEST_03_COMMON_VOLTAGE_LOW

loc_FA032A:                             ; CODE XREF: START+2BC↓j
                move.w  #BUTTON_DEBOUNCE_COUNTER,d0 ; counter for debouncing a button press

loc_FA032E:                             ; CODE XREF: START+2C0↓j
                btst    #DIAG_DIPSW_FUNCTION_DIP8,(IO_DIAG_DIPSW).w ; DIP Switches, #0=0:Function button pressed, #1=1:enable measurement mode, #5=1:sound check enabled, #6=1:stop at test failure
                beq.s   loc_FA032A
                subq.w  #1,d0
                bne.s   loc_FA032E

loc_FA033A:                             ; CODE XREF: START+1B6↑j
                clr.w   d3
                move.b  (IO_CONFIG_REF_VOLTAGE+1).w,d3 ; 8-bit Reference Voltage Level in 100mV steps (PAD1X)
                cmpi.w  #$40,d3 ; '@'
                blt.s   TEST_03_REFERENCE_VOLTAGE_LOW
                cmpi.w  #$E0,d3
                blt     TEST_04_SOUND_CHANNEL_A

TEST_03_REFERENCE_VOLTAGE_LOW:          ; CODE XREF: START+2CC↑j
                                        ; START+3CA↓j
                move.w  #LED_0_DOT_3,(IO_DIAG_LED_1).w ; FF U8 => DX2
                bclr    #DIAG_LED_BITS_YELLOW,(IO_DIAG_LED).w ; Bit 6: 0:yellow LED on, 1:yellow LED off
                btst    #DIAG_DIPSW_STOP_ON_ERROR,(IO_DIAG_DIPSW).w ; DIP Switches, #0=0:Function button pressed, #1=1:enable measurement mode, #5=1:sound check enabled, #6=1:stop at test failure

endless_loop_3:                         ; CODE XREF: START:endless_loop_3↓j
                bne.s   endless_loop_3
                move.w  #COUNTER_DELAY_1s,d0 ; 1s delay
                subq.w  #1,d0

loc_FA0368:                             ; CODE XREF: START+300↓j
                move.l  #COUNTER_DELAY_250ms,d1 ; 0.25s delay

loc_FA036E:                             ; CODE XREF: START:loc_FA0376↓j
                subq.l  #1,d1
                nop
                bra     *+4
; ---------------------------------------------------------------------------

loc_FA0376:                             ; CODE XREF: START+2FA↑j
                bne.s   loc_FA036E
                dbf     d0,loc_FA0368
                move.w  #LED___,(IO_DIAG_LED_1).w ; FF U8 => DX2
                move.w  #COUNTER_DELAY_150ms,d0 ; 0.15s delay
                subq.w  #1,d0

loc_FA0388:                             ; CODE XREF: START+320↓j
                move.l  #COUNTER_DELAY_250ms,d1 ; 0.25s delay

loc_FA038E:                             ; CODE XREF: START:loc_FA0396↓j
                subq.l  #1,d1
                nop
                bra     *+4
; ---------------------------------------------------------------------------

loc_FA0396:                             ; CODE XREF: START+31A↑j
                bne.s   loc_FA038E
                dbf     d0,loc_FA0388
                moveq   #2,d0
                bsr     LED_show_hex_byte_D0
                move.w  #COUNTER_DELAY_500ms,d0 ; 0.5s delay
                subq.w  #1,d0

loc_FA03A8:                             ; CODE XREF: START+340↓j
                move.l  #COUNTER_DELAY_250ms,d1 ; 0.25s delay

loc_FA03AE:                             ; CODE XREF: START:loc_FA03B6↓j
                subq.l  #1,d1
                nop
                bra     *+4
; ---------------------------------------------------------------------------

loc_FA03B6:                             ; CODE XREF: START+33A↑j
                bne.s   loc_FA03AE
                dbf     d0,loc_FA03A8
                move.w  #LED_eq__,(IO_DIAG_LED_1).w ; FF U8 => DX2
                move.w  #COUNTER_DELAY_500ms,d0 ; 0.5s delay
                subq.w  #1,d0

loc_FA03C8:                             ; CODE XREF: START+360↓j
                move.l  #COUNTER_DELAY_250ms,d1 ; 0.25s delay

loc_FA03CE:                             ; CODE XREF: START:loc_FA03D6↓j
                subq.l  #1,d1
                nop
                bra     *+4
; ---------------------------------------------------------------------------

loc_FA03D6:                             ; CODE XREF: START+35A↑j
                bne.s   loc_FA03CE
                dbf     d0,loc_FA03C8
                move.w  #LED___,(IO_DIAG_LED_1).w ; FF U8 => DX2
                move.w  #COUNTER_DELAY_150ms,d0 ; 0.15s delay
                subq.w  #1,d0

loc_FA03E8:                             ; CODE XREF: START+380↓j
                move.l  #COUNTER_DELAY_250ms,d1 ; 0.25s delay

loc_FA03EE:                             ; CODE XREF: START:loc_FA03F6↓j
                subq.l  #1,d1
                nop
                bra     *+4
; ---------------------------------------------------------------------------

loc_FA03F6:                             ; CODE XREF: START+37A↑j
                bne.s   loc_FA03EE
                dbf     d0,loc_FA03E8
                move.l  d3,d0
                bsr     LED_show_hex_byte_D0
                move.w  #COUNTER_DELAY_500ms,d0 ; 0.5s delay
                subq.w  #1,d0

loc_FA0408:                             ; CODE XREF: START+3A0↓j
                move.l  #COUNTER_DELAY_250ms,d1 ; 0.25s delay

loc_FA040E:                             ; CODE XREF: START:loc_FA0416↓j
                subq.l  #1,d1
                nop
                bra     *+4
; ---------------------------------------------------------------------------

loc_FA0416:                             ; CODE XREF: START+39A↑j
                bne.s   loc_FA040E
                dbf     d0,loc_FA0408
                move.w  #LED___,(IO_DIAG_LED_1).w ; FF U8 => DX2
                move.w  #COUNTER_DELAY_500ms,d0 ; 0.5s delay
                subq.w  #1,d0

loc_FA0428:                             ; CODE XREF: START+3C0↓j
                move.l  #COUNTER_DELAY_250ms,d1 ; 0.25s delay

loc_FA042E:                             ; CODE XREF: START:loc_FA0436↓j
                subq.l  #1,d1
                nop
                bra     *+4
; ---------------------------------------------------------------------------

loc_FA0436:                             ; CODE XREF: START+3BA↑j
                bne.s   loc_FA042E
                dbf     d0,loc_FA0428
                btst    #DIAG_DIPSW_FUNCTION_DIP8,(IO_DIAG_DIPSW).w ; DIP Switches, #0=0:Function button pressed, #1=1:enable measurement mode, #5=1:sound check enabled, #6=1:stop at test failure
                bne     TEST_03_REFERENCE_VOLTAGE_LOW

loc_FA0446:                             ; CODE XREF: START+3D8↓j
                move.w  #BUTTON_DEBOUNCE_COUNTER,d0 ; counter for debouncing a button press

loc_FA044A:                             ; CODE XREF: START+3DC↓j
                btst    #DIAG_DIPSW_FUNCTION_DIP8,(IO_DIAG_DIPSW).w ; DIP Switches, #0=0:Function button pressed, #1=1:enable measurement mode, #5=1:sound check enabled, #6=1:stop at test failure
                beq.s   loc_FA0446
                subq.w  #1,d0
                bne.s   loc_FA044A

TEST_04_SOUND_CHANNEL_A:                ; CODE XREF: START+2D2↑j
                move.w  #LED_04,(IO_DIAG_LED_1).w ; FF U8 => DX2
                move.b  #$04,(DIAG_SRAM_TEST_NUMBER).l
                eori.b  #DIAG_LED_MASK_YELLOW,(IO_DIAG_LED).w ; Bit 6: 0:yellow LED on, 1:yellow LED off
                move.w  #DELAY_COUNTER,d0 ; short delay between tests

loc_FA046E:                             ; CODE XREF: START+3F8↓j
                nop
                dbf     d0,loc_FA046E
                btst    #DIAG_DIPSW_TEST_SOUND,(IO_DIAG_DIPSW).w ; DIP Switches, #0=0:Function button pressed, #1=1:enable measurement mode, #5=1:sound check enabled, #6=1:stop at test failure
                beq.s   TEST_08_DIAGNOSTIC_ROM_CRC
                lea     (snd_test_channel_A).l,a0 ; Channel A Freq High = 2 => ~244Hz

loc_FA0482:                             ; CODE XREF: START+420↓j
                                        ; START+442↓j
                move.b  (a0)+,d0
                btst    #7,d0           ; End of list?
                bne.s   TEST_08_DIAGNOSTIC_ROM_CRC
                btst    #4,d0           ; Delay?
                bne.s   loc_FA049A
                move.b  d0,(IO_snd_reg_select).w
                move.b  (a0)+,(IO_snd_reg_read).w
                bra.s   loc_FA0482
; ---------------------------------------------------------------------------

loc_FA049A:                             ; CODE XREF: START+416↑j
                clr.w   d0
                move.b  (a0)+,d0        ; delay in 10ms units
                mulu.w  #COUNTER_DELAY_10ms,d0 ; 10ms delay
                move.w  d0,d0
                subq.w  #1,d0

loc_FA04A6:                             ; CODE XREF: START+43E↓j
                move.l  #COUNTER_DELAY_250ms,d1 ; 0.25s delay

loc_FA04AC:                             ; CODE XREF: START:loc_FA04B4↓j
                subq.l  #1,d1
                nop
                bra     *+4
; ---------------------------------------------------------------------------

loc_FA04B4:                             ; CODE XREF: START+438↑j
                bne.s   loc_FA04AC
                dbf     d0,loc_FA04A6
                bra.s   loc_FA0482
; ---------------------------------------------------------------------------

TEST_08_DIAGNOSTIC_ROM_CRC:             ; CODE XREF: START+402↑j
                                        ; START+410↑j
                move.w  #LED_08,(IO_DIAG_LED_1).w ; FF U8 => DX2
                move.b  #$08,(DIAG_SRAM_TEST_NUMBER).l
                eori.b  #DIAG_LED_MASK_YELLOW,(IO_DIAG_LED).w ; Bit 6: 0:yellow LED on, 1:yellow LED off
                movea.l #ROM_MODULE_BASE,a0
                movea.l #DIAG_ROM_CHECKSM,a1
                clr.w   d0
                clr.w   d1
                clr.w   d3
                lea     (CRC16_TABLE).l,a2

loc_FA04E8:                             ; CODE XREF: START+486↓j
                move.w  d0,d1
                lsl.w   #8,d0
                lsr.w   #8,d1
                move.b  (a0),d3
                addq.w  #1,a0
                eor.b   d3,d1
                add.w   d1,d1
                move.w  (a2,d1.w),d4
                eor.w   d4,d0
                cmpa.l  a0,a1
                bne.s   loc_FA04E8
                move.w  (DIAG_ROM_CHECKSM).l,d3
                move.w  d0,d4
                cmp.w   d0,d3
                beq     TEST_09_DIAGNOSTIC_SRAM_TESTPATTERN

loc_FA050E:                             ; CODE XREF: START+62E↓j
                move.w  #LED_0_DOT_8,(IO_DIAG_LED_1).w ; FF U8 => DX2
                bclr    #DIAG_LED_BITS_YELLOW,(IO_DIAG_LED).w ; Bit 6: 0:yellow LED on, 1:yellow LED off
                btst    #DIAG_DIPSW_STOP_ON_ERROR,(IO_DIAG_DIPSW).w ; DIP Switches, #0=0:Function button pressed, #1=1:enable measurement mode, #5=1:sound check enabled, #6=1:stop at test failure

endless_loop_4:                         ; CODE XREF: START:endless_loop_4↓j
                bne.s   endless_loop_4
                move.w  #COUNTER_DELAY_1s,d0 ; 1s delay
                subq.w  #1,d0

loc_FA0528:                             ; CODE XREF: START+4C0↓j
                move.l  #COUNTER_DELAY_250ms,d1 ; 0.25s delay

loc_FA052E:                             ; CODE XREF: START:loc_FA0536↓j
                subq.l  #1,d1
                nop
                bra     *+4
; ---------------------------------------------------------------------------

loc_FA0536:                             ; CODE XREF: START+4BA↑j
                bne.s   loc_FA052E
                dbf     d0,loc_FA0528
                move.w  #LED_eq__,(IO_DIAG_LED_1).w ; FF U8 => DX2
                move.w  #COUNTER_DELAY_500ms,d0 ; 0.5s delay
                subq.w  #1,d0

loc_FA0548:                             ; CODE XREF: START+4E0↓j
                move.l  #COUNTER_DELAY_250ms,d1 ; 0.25s delay

loc_FA054E:                             ; CODE XREF: START:loc_FA0556↓j
                subq.l  #1,d1
                nop
                bra     *+4
; ---------------------------------------------------------------------------

loc_FA0556:                             ; CODE XREF: START+4DA↑j
                bne.s   loc_FA054E
                dbf     d0,loc_FA0548
                move.w  #LED___,(IO_DIAG_LED_1).w ; FF U8 => DX2
                move.w  #COUNTER_DELAY_150ms,d0 ; 0.15s delay
                subq.w  #1,d0

loc_FA0568:                             ; CODE XREF: START+500↓j
                move.l  #COUNTER_DELAY_250ms,d1 ; 0.25s delay

loc_FA056E:                             ; CODE XREF: START:loc_FA0576↓j
                subq.l  #1,d1
                nop
                bra     *+4
; ---------------------------------------------------------------------------

loc_FA0576:                             ; CODE XREF: START+4FA↑j
                bne.s   loc_FA056E
                dbf     d0,loc_FA0568
                move.l  d4,d0
                asr.w   #8,d0
                bsr     LED_show_hex_byte_D0
                move.w  #COUNTER_DELAY_500ms,d0 ; 0.5s delay
                subq.w  #1,d0

loc_FA058A:                             ; CODE XREF: START+522↓j
                move.l  #COUNTER_DELAY_250ms,d1 ; 0.25s delay

loc_FA0590:                             ; CODE XREF: START:loc_FA0598↓j
                subq.l  #1,d1
                nop
                bra     *+4
; ---------------------------------------------------------------------------

loc_FA0598:                             ; CODE XREF: START+51C↑j
                bne.s   loc_FA0590
                dbf     d0,loc_FA058A
                move.w  #LED___,(IO_DIAG_LED_1).w ; FF U8 => DX2
                move.w  #COUNTER_DELAY_150ms,d0 ; 0.15s delay
                subq.w  #1,d0

loc_FA05AA:                             ; CODE XREF: START+542↓j
                move.l  #COUNTER_DELAY_250ms,d1 ; 0.25s delay

loc_FA05B0:                             ; CODE XREF: START:loc_FA05B8↓j
                subq.l  #1,d1
                nop
                bra     *+4
; ---------------------------------------------------------------------------

loc_FA05B8:                             ; CODE XREF: START+53C↑j
                bne.s   loc_FA05B0
                dbf     d0,loc_FA05AA
                move.l  d4,d0
                bsr     LED_show_hex_byte_D0
                move.w  #COUNTER_DELAY_500ms,d0 ; 0.5s delay
                subq.w  #1,d0

loc_FA05CA:                             ; CODE XREF: START+562↓j
                move.l  #COUNTER_DELAY_250ms,d1 ; 0.25s delay

loc_FA05D0:                             ; CODE XREF: START:loc_FA05D8↓j
                subq.l  #1,d1
                nop
                bra     *+4
; ---------------------------------------------------------------------------

loc_FA05D8:                             ; CODE XREF: START+55C↑j
                bne.s   loc_FA05D0
                dbf     d0,loc_FA05CA
                move.w  #LED_vlines__,(IO_DIAG_LED_1).w ; FF U8 => DX2
                move.w  #COUNTER_DELAY_500ms,d0 ; 0.5s delay
                subq.w  #1,d0

loc_FA05EA:                             ; CODE XREF: START+582↓j
                move.l  #COUNTER_DELAY_250ms,d1 ; 0.25s delay

loc_FA05F0:                             ; CODE XREF: START:loc_FA05F8↓j
                subq.l  #1,d1
                nop
                bra     *+4
; ---------------------------------------------------------------------------

loc_FA05F8:                             ; CODE XREF: START+57C↑j
                bne.s   loc_FA05F0
                dbf     d0,loc_FA05EA
                move.w  #LED___,(IO_DIAG_LED_1).w ; FF U8 => DX2
                move.w  #COUNTER_DELAY_150ms,d0 ; 0.15s delay
                subq.w  #1,d0

loc_FA060A:                             ; CODE XREF: START+5A2↓j
                move.l  #COUNTER_DELAY_250ms,d1 ; 0.25s delay

loc_FA0610:                             ; CODE XREF: START:loc_FA0618↓j
                subq.l  #1,d1
                nop
                bra     *+4
; ---------------------------------------------------------------------------

loc_FA0618:                             ; CODE XREF: START+59C↑j
                bne.s   loc_FA0610
                dbf     d0,loc_FA060A
                move.l  d3,d0
                asr.w   #8,d0
                bsr     LED_show_hex_byte_D0
                move.w  #COUNTER_DELAY_500ms,d0 ; 0.5s delay
                subq.w  #1,d0

loc_FA062C:                             ; CODE XREF: START+5C4↓j
                move.l  #COUNTER_DELAY_250ms,d1 ; 0.25s delay

loc_FA0632:                             ; CODE XREF: START:loc_FA063A↓j
                subq.l  #1,d1
                nop
                bra     *+4
; ---------------------------------------------------------------------------

loc_FA063A:                             ; CODE XREF: START+5BE↑j
                bne.s   loc_FA0632
                dbf     d0,loc_FA062C
                move.w  #LED___,(IO_DIAG_LED_1).w ; FF U8 => DX2
                move.w  #COUNTER_DELAY_150ms,d0 ; 0.15s delay
                subq.w  #1,d0

loc_FA064C:                             ; CODE XREF: START+5E4↓j
                move.l  #COUNTER_DELAY_250ms,d1 ; 0.25s delay

loc_FA0652:                             ; CODE XREF: START:loc_FA065A↓j
                subq.l  #1,d1
                nop
                bra     *+4
; ---------------------------------------------------------------------------

loc_FA065A:                             ; CODE XREF: START+5DE↑j
                bne.s   loc_FA0652
                dbf     d0,loc_FA064C
                move.l  d3,d0
                bsr     LED_show_hex_byte_D0
                move.w  #COUNTER_DELAY_500ms,d0 ; 0.5s delay
                subq.w  #1,d0

loc_FA066C:                             ; CODE XREF: START+604↓j
                move.l  #COUNTER_DELAY_250ms,d1 ; 0.25s delay

loc_FA0672:                             ; CODE XREF: START:loc_FA067A↓j
                subq.l  #1,d1
                nop
                bra     *+4
; ---------------------------------------------------------------------------

loc_FA067A:                             ; CODE XREF: START+5FE↑j
                bne.s   loc_FA0672
                dbf     d0,loc_FA066C
                move.w  #LED___,(IO_DIAG_LED_1).w ; FF U8 => DX2
                move.w  #COUNTER_DELAY_500ms,d0 ; 0.5s delay
                subq.w  #1,d0

loc_FA068C:                             ; CODE XREF: START+624↓j
                move.l  #COUNTER_DELAY_250ms,d1 ; 0.25s delay

loc_FA0692:                             ; CODE XREF: START:loc_FA069A↓j
                subq.l  #1,d1
                nop
                bra     *+4
; ---------------------------------------------------------------------------

loc_FA069A:                             ; CODE XREF: START+61E↑j
                bne.s   loc_FA0692
                dbf     d0,loc_FA068C
                btst    #DIAG_DIPSW_FUNCTION_DIP8,(IO_DIAG_DIPSW).w ; DIP Switches, #0=0:Function button pressed, #1=1:enable measurement mode, #5=1:sound check enabled, #6=1:stop at test failure
                bne     loc_FA050E

loc_FA06AA:                             ; CODE XREF: START+63C↓j
                move.w  #BUTTON_DEBOUNCE_COUNTER,d0 ; counter for debouncing a button press

loc_FA06AE:                             ; CODE XREF: START+640↓j
                btst    #DIAG_DIPSW_FUNCTION_DIP8,(IO_DIAG_DIPSW).w ; DIP Switches, #0=0:Function button pressed, #1=1:enable measurement mode, #5=1:sound check enabled, #6=1:stop at test failure
                beq.s   loc_FA06AA
                subq.w  #1,d0
                bne.s   loc_FA06AE

TEST_09_DIAGNOSTIC_SRAM_TESTPATTERN:    ; CODE XREF: START+492↑j
                move.w  #LED_09,(IO_DIAG_LED_1).w ; FF U8 => DX2
                move.b  #$09,(DIAG_SRAM_TEST_NUMBER).l
                eori.b  #DIAG_LED_MASK_YELLOW,(IO_DIAG_LED).w ; Bit 6: 0:yellow LED on, 1:yellow LED off
                movea.l #DIAG_SRAM_TEST_NUMBER,a0
                movea.l #DIAG_SRAM_STACK_TOP,a1

loc_FA06DA:                             ; CODE XREF: START+6A2↓j
                move.w  #$FFFF,(a0)
                tst.b   (IO_mfp_GPIP).w
                cmpi.w  #$FFFF,(a0)
                bne.s   loc_FA0720
                move.w  #$55AA,(a0)
                tst.b   (IO_mfp_GPIP).w
                cmpi.w  #$55AA,(a0)
                bne.s   loc_FA0720
                move.w  #$AA55,(a0)
                tst.b   (IO_mfp_GPIP).w
                cmpi.w  #$AA55,(a0)
                bne.s   loc_FA0720
                clr.w   (a0)
                tst.b   (IO_mfp_GPIP).w
                tst.w   (a0)+
                bne.s   loc_FA0720
                move.w  a0,d0
                bne.s   loc_FA0718
                eori.b  #DIAG_LED_MASK_YELLOW,(IO_DIAG_LED).w ; Bit 6: 0:yellow LED on, 1:yellow LED off

loc_FA0718:                             ; CODE XREF: START+698↑j
                cmpa.l  a0,a1
                bne.s   loc_FA06DA
                clr.w   d0
                bra.s   loc_FA0722
; ---------------------------------------------------------------------------

loc_FA0720:                             ; CODE XREF: START+66E↑j
                                        ; START+67C↑j ...
                moveq   #-1,d0

loc_FA0722:                             ; CODE XREF: START+6A6↑j
                beq     TEST_0A_DIAGNOSTIC_LED_MEMORY

loc_FA0726:                             ; CODE XREF: START+6C8↓j
                move.w  #LED_0_DOT_9,(IO_DIAG_LED_1).w ; FF U8 => DX2
                bclr    #DIAG_LED_BITS_YELLOW,(IO_DIAG_LED).w ; Bit 6: 0:yellow LED on, 1:yellow LED off
                btst    #DIAG_DIPSW_STOP_ON_ERROR,(IO_DIAG_DIPSW).w ; DIP Switches, #0=0:Function button pressed, #1=1:enable measurement mode, #5=1:sound check enabled, #6=1:stop at test failure

endless_loop_5:                         ; CODE XREF: START:endless_loop_5↓j
                bne.s   endless_loop_5
                btst    #DIAG_DIPSW_FUNCTION_DIP8,(IO_DIAG_DIPSW).w ; DIP Switches, #0=0:Function button pressed, #1=1:enable measurement mode, #5=1:sound check enabled, #6=1:stop at test failure
                bne.s   loc_FA0726

loc_FA0742:                             ; CODE XREF: START+6D4↓j
                move.w  #BUTTON_DEBOUNCE_COUNTER,d0 ; counter for debouncing a button press

loc_FA0746:                             ; CODE XREF: START+6D8↓j
                btst    #DIAG_DIPSW_FUNCTION_DIP8,(IO_DIAG_DIPSW).w ; DIP Switches, #0=0:Function button pressed, #1=1:enable measurement mode, #5=1:sound check enabled, #6=1:stop at test failure
                beq.s   loc_FA0742
                subq.w  #1,d0
                bne.s   loc_FA0746

loc_FA0752:                             ; CODE XREF: START:loc_FA0752↓j
                bra.s   loc_FA0752
; ---------------------------------------------------------------------------

TEST_0A_DIAGNOSTIC_LED_MEMORY:          ; CODE XREF: START:loc_FA0722↑j
                move.w  #LED_0A,(IO_DIAG_LED_1).w ; FF U8 => DX2
                move.b  #$0A,(DIAG_SRAM_TEST_NUMBER).l
                eori.b  #DIAG_LED_MASK_YELLOW,(IO_DIAG_LED).w ; Bit 6: 0:yellow LED on, 1:yellow LED off
                movea.l #IO_DIAG_LED,a0 ; Bit 6: 0:yellow LED on, 1:yellow LED off
                move.b  #$78,d1 ; 'x'
                move.b  #8,d2
                bsr     check_mem_bitmask_8bit ; A0:mem, D1:test bitmask, D2:value offset, => D0<0:error, D4:defect bit
                beq     TEST_0b_LOOP

loc_FA077E:                             ; CODE XREF: START+81A↓j
                move.w  #LED_0_DOT_A,(IO_DIAG_LED_1).w ; FF U8 => DX2
                bclr    #DIAG_LED_BITS_YELLOW,(IO_DIAG_LED).w ; Bit 6: 0:yellow LED on, 1:yellow LED off
                btst    #DIAG_DIPSW_STOP_ON_ERROR,(IO_DIAG_DIPSW).w ; DIP Switches, #0=0:Function button pressed, #1=1:enable measurement mode, #5=1:sound check enabled, #6=1:stop at test failure

endless_loop_8:                         ; CODE XREF: START:endless_loop_8↓j
                bne.s   endless_loop_8
                move.w  #COUNTER_DELAY_1s,d0 ; 1s delay
                subq.w  #1,d0

loc_FA0798:                             ; CODE XREF: START+730↓j
                move.l  #COUNTER_DELAY_250ms,d1 ; 0.25s delay

loc_FA079E:                             ; CODE XREF: START:loc_FA07A6↓j
                subq.l  #1,d1
                nop
                bra     *+4
; ---------------------------------------------------------------------------

loc_FA07A6:                             ; CODE XREF: START+72A↑j
                bne.s   loc_FA079E
                dbf     d0,loc_FA0798
                move.w  #LED_eq__,(IO_DIAG_LED_1).w ; FF U8 => DX2
                move.w  #COUNTER_DELAY_500ms,d0 ; 0.5s delay
                subq.w  #1,d0

loc_FA07B8:                             ; CODE XREF: START+750↓j
                move.l  #COUNTER_DELAY_250ms,d1 ; 0.25s delay

loc_FA07BE:                             ; CODE XREF: START:loc_FA07C6↓j
                subq.l  #1,d1
                nop
                bra     *+4
; ---------------------------------------------------------------------------

loc_FA07C6:                             ; CODE XREF: START+74A↑j
                bne.s   loc_FA07BE
                dbf     d0,loc_FA07B8
                move.w  #LED___,(IO_DIAG_LED_1).w ; FF U8 => DX2
                move.w  #COUNTER_DELAY_150ms,d0 ; 0.15s delay
                subq.w  #1,d0

loc_FA07D8:                             ; CODE XREF: START+770↓j
                move.l  #COUNTER_DELAY_250ms,d1 ; 0.25s delay

loc_FA07DE:                             ; CODE XREF: START:loc_FA07E6↓j
                subq.l  #1,d1
                nop
                bra     *+4
; ---------------------------------------------------------------------------

loc_FA07E6:                             ; CODE XREF: START+76A↑j
                bne.s   loc_FA07DE
                dbf     d0,loc_FA07D8
                move.l  d3,d0
                bsr     LED_show_hex_byte_D0
                move.w  #COUNTER_DELAY_500ms,d0 ; 0.5s delay
                subq.w  #1,d0

loc_FA07F8:                             ; CODE XREF: START+790↓j
                move.l  #COUNTER_DELAY_250ms,d1 ; 0.25s delay

loc_FA07FE:                             ; CODE XREF: START:loc_FA0806↓j
                subq.l  #1,d1
                nop
                bra     *+4
; ---------------------------------------------------------------------------

loc_FA0806:                             ; CODE XREF: START+78A↑j
                bne.s   loc_FA07FE
                dbf     d0,loc_FA07F8
                move.w  #LED_vlines__,(IO_DIAG_LED_1).w ; FF U8 => DX2
                move.w  #COUNTER_DELAY_500ms,d0 ; 0.5s delay
                subq.w  #1,d0

loc_FA0818:                             ; CODE XREF: START+7B0↓j
                move.l  #COUNTER_DELAY_250ms,d1 ; 0.25s delay

loc_FA081E:                             ; CODE XREF: START:loc_FA0826↓j
                subq.l  #1,d1
                nop
                bra     *+4
; ---------------------------------------------------------------------------

loc_FA0826:                             ; CODE XREF: START+7AA↑j
                bne.s   loc_FA081E
                dbf     d0,loc_FA0818
                move.w  #LED___,(IO_DIAG_LED_1).w ; FF U8 => DX2
                move.w  #COUNTER_DELAY_150ms,d0 ; 0.15s delay
                subq.w  #1,d0

loc_FA0838:                             ; CODE XREF: START+7D0↓j
                move.l  #COUNTER_DELAY_250ms,d1 ; 0.25s delay

loc_FA083E:                             ; CODE XREF: START:loc_FA0846↓j
                subq.l  #1,d1
                nop
                bra     *+4
; ---------------------------------------------------------------------------

loc_FA0846:                             ; CODE XREF: START+7CA↑j
                bne.s   loc_FA083E
                dbf     d0,loc_FA0838
                move.l  d4,d0
                bsr     LED_show_hex_byte_D0
                move.w  #COUNTER_DELAY_500ms,d0 ; 0.5s delay
                subq.w  #1,d0

loc_FA0858:                             ; CODE XREF: START+7F0↓j
                move.l  #COUNTER_DELAY_250ms,d1 ; 0.25s delay

loc_FA085E:                             ; CODE XREF: START:loc_FA0866↓j
                subq.l  #1,d1
                nop
                bra     *+4
; ---------------------------------------------------------------------------

loc_FA0866:                             ; CODE XREF: START+7EA↑j
                bne.s   loc_FA085E
                dbf     d0,loc_FA0858
                move.w  #LED___,(IO_DIAG_LED_1).w ; FF U8 => DX2
                move.w  #COUNTER_DELAY_500ms,d0 ; 0.5s delay
                subq.w  #1,d0

loc_FA0878:                             ; CODE XREF: START+810↓j
                move.l  #COUNTER_DELAY_250ms,d1 ; 0.25s delay

loc_FA087E:                             ; CODE XREF: START:loc_FA0886↓j
                subq.l  #1,d1
                nop
                bra     *+4
; ---------------------------------------------------------------------------

loc_FA0886:                             ; CODE XREF: START+80A↑j
                bne.s   loc_FA087E
                dbf     d0,loc_FA0878
                btst    #DIAG_DIPSW_FUNCTION_DIP8,(IO_DIAG_DIPSW).w ; DIP Switches, #0=0:Function button pressed, #1=1:enable measurement mode, #5=1:sound check enabled, #6=1:stop at test failure
                bne     loc_FA077E

loc_FA0896:                             ; CODE XREF: START+828↓j
                move.w  #BUTTON_DEBOUNCE_COUNTER,d0 ; counter for debouncing a button press

loc_FA089A:                             ; CODE XREF: START+82C↓j
                btst    #DIAG_DIPSW_FUNCTION_DIP8,(IO_DIAG_DIPSW).w ; DIP Switches, #0=0:Function button pressed, #1=1:enable measurement mode, #5=1:sound check enabled, #6=1:stop at test failure
                beq.s   loc_FA0896
                subq.w  #1,d0
                bne.s   loc_FA089A

TEST_0b_LOOP:                           ; CODE XREF: START+702↑j
                move.w  #LED_0b,(IO_DIAG_LED_1).w ; FF U8 => DX2
                move.b  #$0B,(DIAG_SRAM_TEST_NUMBER).l
                eori.b  #DIAG_LED_MASK_YELLOW,(IO_DIAG_LED).w ; Bit 6: 0:yellow LED on, 1:yellow LED off
                move.w  #DELAY_COUNTER,d0 ; short delay between tests

loc_FA08BE:                             ; CODE XREF: START+848↓j
                nop
                dbf     d0,loc_FA08BE

TEST_10_TOS_ROM_CRC:                    ; FF U8 => DX2
                move.w  #LED_10,(IO_DIAG_LED_1).w
                move.b  #$10,(DIAG_SRAM_TEST_NUMBER).l
                eori.b  #DIAG_LED_MASK_YELLOW,(IO_DIAG_LED).w ; Bit 6: 0:yellow LED on, 1:yellow LED off
                movea.l #TOS_ROM,a0
                movea.l #TOS_ROM_CHECKSUM,a1
                clr.w   d0
                clr.w   d1
                clr.w   d3
                lea     (CRC16_TABLE).l,a2

loc_FA08F0:                             ; CODE XREF: START+88E↓j
                move.w  d0,d1
                lsl.w   #8,d0
                lsr.w   #8,d1
                move.b  (a0),d3
                addq.w  #1,a0
                eor.b   d3,d1
                add.w   d1,d1
                move.w  (a2,d1.w),d4
                eor.w   d4,d0
                cmpa.l  a0,a1
                bne.s   loc_FA08F0
                move.w  d0,d4
                move.w  (TOS_ROM_CHECKSUM).l,d3
                cmp.w   d0,d3
                beq     TEST_12_RAM_FIRST_2KB

loc_FA0916:                             ; CODE XREF: START+A36↓j
                move.w  #LED_1_DOT_0,(IO_DIAG_LED_1).w ; FF U8 => DX2
                bclr    #DIAG_LED_BITS_YELLOW,(IO_DIAG_LED).w ; Bit 6: 0:yellow LED on, 1:yellow LED off
                btst    #DIAG_DIPSW_STOP_ON_ERROR,(IO_DIAG_DIPSW).w ; DIP Switches, #0=0:Function button pressed, #1=1:enable measurement mode, #5=1:sound check enabled, #6=1:stop at test failure

endless_loop_9:                         ; CODE XREF: START:endless_loop_9↓j
                bne.s   endless_loop_9
                move.w  #COUNTER_DELAY_1s,d0 ; 1s delay
                subq.w  #1,d0

loc_FA0930:                             ; CODE XREF: START+8C8↓j
                move.l  #COUNTER_DELAY_250ms,d1 ; 0.25s delay

loc_FA0936:                             ; CODE XREF: START:loc_FA093E↓j
                subq.l  #1,d1
                nop
                bra     *+4
; ---------------------------------------------------------------------------

loc_FA093E:                             ; CODE XREF: START+8C2↑j
                bne.s   loc_FA0936
                dbf     d0,loc_FA0930
                move.w  #LED_eq__,(IO_DIAG_LED_1).w ; FF U8 => DX2
                move.w  #COUNTER_DELAY_500ms,d0 ; 0.5s delay
                subq.w  #1,d0

loc_FA0950:                             ; CODE XREF: START+8E8↓j
                move.l  #COUNTER_DELAY_250ms,d1 ; 0.25s delay

loc_FA0956:                             ; CODE XREF: START:loc_FA095E↓j
                subq.l  #1,d1
                nop
                bra     *+4
; ---------------------------------------------------------------------------

loc_FA095E:                             ; CODE XREF: START+8E2↑j
                bne.s   loc_FA0956
                dbf     d0,loc_FA0950
                move.w  #LED___,(IO_DIAG_LED_1).w ; FF U8 => DX2
                move.w  #COUNTER_DELAY_150ms,d0 ; 0.15s delay
                subq.w  #1,d0

loc_FA0970:                             ; CODE XREF: START+908↓j
                move.l  #COUNTER_DELAY_250ms,d1 ; 0.25s delay

loc_FA0976:                             ; CODE XREF: START:loc_FA097E↓j
                subq.l  #1,d1
                nop
                bra     *+4
; ---------------------------------------------------------------------------

loc_FA097E:                             ; CODE XREF: START+902↑j
                bne.s   loc_FA0976
                dbf     d0,loc_FA0970
                move.l  d4,d0
                asr.w   #8,d0
                bsr     LED_show_hex_byte_D0
                move.w  #COUNTER_DELAY_500ms,d0 ; 0.5s delay
                subq.w  #1,d0

loc_FA0992:                             ; CODE XREF: START+92A↓j
                move.l  #COUNTER_DELAY_250ms,d1 ; 0.25s delay

loc_FA0998:                             ; CODE XREF: START:loc_FA09A0↓j
                subq.l  #1,d1
                nop
                bra     *+4
; ---------------------------------------------------------------------------

loc_FA09A0:                             ; CODE XREF: START+924↑j
                bne.s   loc_FA0998
                dbf     d0,loc_FA0992
                move.w  #LED___,(IO_DIAG_LED_1).w ; FF U8 => DX2
                move.w  #COUNTER_DELAY_150ms,d0 ; 0.15s delay
                subq.w  #1,d0

loc_FA09B2:                             ; CODE XREF: START+94A↓j
                move.l  #COUNTER_DELAY_250ms,d1 ; 0.25s delay

loc_FA09B8:                             ; CODE XREF: START:loc_FA09C0↓j
                subq.l  #1,d1
                nop
                bra     *+4
; ---------------------------------------------------------------------------

loc_FA09C0:                             ; CODE XREF: START+944↑j
                bne.s   loc_FA09B8
                dbf     d0,loc_FA09B2
                move.l  d4,d0
                bsr     LED_show_hex_byte_D0
                move.w  #COUNTER_DELAY_500ms,d0 ; 0.5s delay
                subq.w  #1,d0

loc_FA09D2:                             ; CODE XREF: START+96A↓j
                move.l  #COUNTER_DELAY_250ms,d1 ; 0.25s delay

loc_FA09D8:                             ; CODE XREF: START:loc_FA09E0↓j
                subq.l  #1,d1
                nop
                bra     *+4
; ---------------------------------------------------------------------------

loc_FA09E0:                             ; CODE XREF: START+964↑j
                bne.s   loc_FA09D8
                dbf     d0,loc_FA09D2
                move.w  #LED_vlines__,(IO_DIAG_LED_1).w ; FF U8 => DX2
                move.w  #COUNTER_DELAY_500ms,d0 ; 0.5s delay
                subq.w  #1,d0

loc_FA09F2:                             ; CODE XREF: START+98A↓j
                move.l  #COUNTER_DELAY_250ms,d1 ; 0.25s delay

loc_FA09F8:                             ; CODE XREF: START:loc_FA0A00↓j
                subq.l  #1,d1
                nop
                bra     *+4
; ---------------------------------------------------------------------------

loc_FA0A00:                             ; CODE XREF: START+984↑j
                bne.s   loc_FA09F8
                dbf     d0,loc_FA09F2
                move.w  #LED___,(IO_DIAG_LED_1).w ; FF U8 => DX2
                move.w  #COUNTER_DELAY_150ms,d0 ; 0.15s delay
                subq.w  #1,d0

loc_FA0A12:                             ; CODE XREF: START+9AA↓j
                move.l  #COUNTER_DELAY_250ms,d1 ; 0.25s delay

loc_FA0A18:                             ; CODE XREF: START:loc_FA0A20↓j
                subq.l  #1,d1
                nop
                bra     *+4
; ---------------------------------------------------------------------------

loc_FA0A20:                             ; CODE XREF: START+9A4↑j
                bne.s   loc_FA0A18
                dbf     d0,loc_FA0A12
                move.l  d3,d0
                asr.w   #8,d0
                bsr     LED_show_hex_byte_D0
                move.w  #COUNTER_DELAY_500ms,d0 ; 0.5s delay
                subq.w  #1,d0

loc_FA0A34:                             ; CODE XREF: START+9CC↓j
                move.l  #COUNTER_DELAY_250ms,d1 ; 0.25s delay

loc_FA0A3A:                             ; CODE XREF: START:loc_FA0A42↓j
                subq.l  #1,d1
                nop
                bra     *+4
; ---------------------------------------------------------------------------

loc_FA0A42:                             ; CODE XREF: START+9C6↑j
                bne.s   loc_FA0A3A
                dbf     d0,loc_FA0A34
                move.w  #LED___,(IO_DIAG_LED_1).w ; FF U8 => DX2
                move.w  #COUNTER_DELAY_150ms,d0 ; 0.15s delay
                subq.w  #1,d0

loc_FA0A54:                             ; CODE XREF: START+9EC↓j
                move.l  #COUNTER_DELAY_250ms,d1 ; 0.25s delay

loc_FA0A5A:                             ; CODE XREF: START:loc_FA0A62↓j
                subq.l  #1,d1
                nop
                bra     *+4
; ---------------------------------------------------------------------------

loc_FA0A62:                             ; CODE XREF: START+9E6↑j
                bne.s   loc_FA0A5A
                dbf     d0,loc_FA0A54
                move.l  d3,d0
                bsr     LED_show_hex_byte_D0
                move.w  #COUNTER_DELAY_500ms,d0 ; 0.5s delay
                subq.w  #1,d0

loc_FA0A74:                             ; CODE XREF: START+A0C↓j
                move.l  #COUNTER_DELAY_250ms,d1 ; 0.25s delay

loc_FA0A7A:                             ; CODE XREF: START:loc_FA0A82↓j
                subq.l  #1,d1
                nop
                bra     *+4
; ---------------------------------------------------------------------------

loc_FA0A82:                             ; CODE XREF: START+A06↑j
                bne.s   loc_FA0A7A
                dbf     d0,loc_FA0A74
                move.w  #LED___,(IO_DIAG_LED_1).w ; FF U8 => DX2
                move.w  #COUNTER_DELAY_500ms,d0 ; 0.5s delay
                subq.w  #1,d0

loc_FA0A94:                             ; CODE XREF: START+A2C↓j
                move.l  #COUNTER_DELAY_250ms,d1 ; 0.25s delay

loc_FA0A9A:                             ; CODE XREF: START:loc_FA0AA2↓j
                subq.l  #1,d1
                nop
                bra     *+4
; ---------------------------------------------------------------------------

loc_FA0AA2:                             ; CODE XREF: START+A26↑j
                bne.s   loc_FA0A9A
                dbf     d0,loc_FA0A94
                btst    #DIAG_DIPSW_FUNCTION_DIP8,(IO_DIAG_DIPSW).w ; DIP Switches, #0=0:Function button pressed, #1=1:enable measurement mode, #5=1:sound check enabled, #6=1:stop at test failure
                bne     loc_FA0916

loc_FA0AB2:                             ; CODE XREF: START+A44↓j
                move.w  #BUTTON_DEBOUNCE_COUNTER,d0 ; counter for debouncing a button press

loc_FA0AB6:                             ; CODE XREF: START+A48↓j
                btst    #DIAG_DIPSW_FUNCTION_DIP8,(IO_DIAG_DIPSW).w ; DIP Switches, #0=0:Function button pressed, #1=1:enable measurement mode, #5=1:sound check enabled, #6=1:stop at test failure
                beq.s   loc_FA0AB2
                subq.w  #1,d0
                bne.s   loc_FA0AB6

TEST_12_RAM_FIRST_2KB:                  ; CODE XREF: START+89A↑j
                move.w  #LED_12,(IO_DIAG_LED_1).w ; FF U8 => DX2
                move.b  #$12,(DIAG_SRAM_TEST_NUMBER).l
                eori.b  #DIAG_LED_MASK_YELLOW,(IO_DIAG_LED).w ; Bit 6: 0:yellow LED on, 1:yellow LED off
                movea.l #BUSERROR_VECT,a0
                movea.l #RAM_2kb,a1

loc_FA0AE2:                             ; CODE XREF: START+AAA↓j
                move.w  #$FFFF,(a0)
                tst.b   (IO_mfp_GPIP).w
                cmpi.w  #$FFFF,(a0)
                bne.s   loc_FA0B28
                move.w  #$55AA,(a0)
                tst.b   (IO_mfp_GPIP).w
                cmpi.w  #$55AA,(a0)
                bne.s   loc_FA0B28
                move.w  #$AA55,(a0)
                tst.b   (IO_mfp_GPIP).w
                cmpi.w  #$AA55,(a0)
                bne.s   loc_FA0B28
                clr.w   (a0)
                tst.b   (IO_mfp_GPIP).w
                tst.w   (a0)+
                bne.s   loc_FA0B28
                move.w  a0,d0
                bne.s   loc_FA0B20
                eori.b  #DIAG_LED_MASK_YELLOW,(IO_DIAG_LED).w ; Bit 6: 0:yellow LED on, 1:yellow LED off

loc_FA0B20:                             ; CODE XREF: START+AA0↑j
                cmpa.l  a0,a1
                bne.s   loc_FA0AE2
                clr.w   d0
                bra.s   loc_FA0B2A
; ---------------------------------------------------------------------------

loc_FA0B28:                             ; CODE XREF: START+A76↑j
                                        ; START+A84↑j ...
                moveq   #-1,d0

loc_FA0B2A:                             ; CODE XREF: START+AAE↑j
                beq     loc_FA0B5A      ; restore exception vectors

loc_FA0B2E:                             ; CODE XREF: START+AD0↓j
                move.w  #LED_1_DOT_2,(IO_DIAG_LED_1).w ; FF U8 => DX2
                bclr    #DIAG_LED_BITS_YELLOW,(IO_DIAG_LED).w ; Bit 6: 0:yellow LED on, 1:yellow LED off
                btst    #DIAG_DIPSW_STOP_ON_ERROR,(IO_DIAG_DIPSW).w ; DIP Switches, #0=0:Function button pressed, #1=1:enable measurement mode, #5=1:sound check enabled, #6=1:stop at test failure

endless_loop_6:                         ; CODE XREF: START:endless_loop_6↓j
                bne.s   endless_loop_6
                btst    #DIAG_DIPSW_FUNCTION_DIP8,(IO_DIAG_DIPSW).w ; DIP Switches, #0=0:Function button pressed, #1=1:enable measurement mode, #5=1:sound check enabled, #6=1:stop at test failure
                bne.s   loc_FA0B2E

loc_FA0B4A:                             ; CODE XREF: START+ADC↓j
                move.w  #BUTTON_DEBOUNCE_COUNTER,d0 ; counter for debouncing a button press

loc_FA0B4E:                             ; CODE XREF: START+AE0↓j
                btst    #DIAG_DIPSW_FUNCTION_DIP8,(IO_DIAG_DIPSW).w ; DIP Switches, #0=0:Function button pressed, #1=1:enable measurement mode, #5=1:sound check enabled, #6=1:stop at test failure
                beq.s   loc_FA0B4A
                subq.w  #1,d0
                bne.s   loc_FA0B4E

loc_FA0B5A:                             ; CODE XREF: START:loc_FA0B2A↑j
                movea.l #8,a0           ; restore exception vectors
                move.l  #EXCEPTION_VECTORS,d0

loc_FA0B66:                             ; CODE XREF: START+AF8↓j
                move.l  d0,(a0)+
                addq.l  #8,d0
                cmpa.l  #VECTOR_TABLE_END,a0
                bne.s   loc_FA0B66
                move.l  #BUSERROR_EXCEPTION,(BUSERROR_VECT).w ; LED 'b.E.'
                move.l  #ADDRESSERROR_EXCEPTION,(ADDERROR_VECT).w ; LED 'A.E.'
                move.l  #NMI_EXCEPTION,(NMI_VECT).w ; LED 'b.4.'

TEST_18_REGS_MFP_AER_VR:                ; FF U8 => DX2
                move.w  #LED_18,(IO_DIAG_LED_1).w
                move.b  #$18,(DIAG_SRAM_TEST_NUMBER).l
                eori.b  #DIAG_LED_MASK_YELLOW,(IO_DIAG_LED).w ; Bit 6: 0:yellow LED on, 1:yellow LED off
                lea     (mfp_reg_table).l,a0
                bsr     check_register_set_8bit
                beq.s   TEST_19_REGS_SHIFTER_BASE_SCANLINE

loc_FA0BAA:                             ; CODE XREF: START+B4C↓j
                move.w  #LED_1_DOT_8,(IO_DIAG_LED_1).w ; FF U8 => DX2
                bclr    #DIAG_LED_BITS_YELLOW,(IO_DIAG_LED).w ; Bit 6: 0:yellow LED on, 1:yellow LED off
                btst    #DIAG_DIPSW_STOP_ON_ERROR,(IO_DIAG_DIPSW).w ; DIP Switches, #0=0:Function button pressed, #1=1:enable measurement mode, #5=1:sound check enabled, #6=1:stop at test failure

endless_loop_10:                        ; CODE XREF: START:endless_loop_10↓j
                bne.s   endless_loop_10
                btst    #DIAG_DIPSW_FUNCTION_DIP8,(IO_DIAG_DIPSW).w ; DIP Switches, #0=0:Function button pressed, #1=1:enable measurement mode, #5=1:sound check enabled, #6=1:stop at test failure
                bne.s   loc_FA0BAA

loc_FA0BC6:                             ; CODE XREF: START+B58↓j
                move.w  #BUTTON_DEBOUNCE_COUNTER,d0 ; counter for debouncing a button press

loc_FA0BCA:                             ; CODE XREF: START+B5C↓j
                btst    #DIAG_DIPSW_FUNCTION_DIP8,(IO_DIAG_DIPSW).w ; DIP Switches, #0=0:Function button pressed, #1=1:enable measurement mode, #5=1:sound check enabled, #6=1:stop at test failure
                beq.s   loc_FA0BC6
                subq.w  #1,d0
                bne.s   loc_FA0BCA

TEST_19_REGS_SHIFTER_BASE_SCANLINE:     ; CODE XREF: START+B30↑j
                move.w  #LED_19,(IO_DIAG_LED_1).w ; FF U8 => DX2
                move.b  #$19,(DIAG_SRAM_TEST_NUMBER).l
                eori.b  #DIAG_LED_MASK_YELLOW,(IO_DIAG_LED).w ; Bit 6: 0:yellow LED on, 1:yellow LED off
                lea     (video_reg_table).l,a0
                bsr     check_register_set_8bit
                beq.s   loc_FA0C22      ; reset shifter register

loc_FA0BF6:                             ; CODE XREF: START+B98↓j
                move.w  #LED_1_DOT_9,(IO_DIAG_LED_1).w ; FF U8 => DX2
                bclr    #DIAG_LED_BITS_YELLOW,(IO_DIAG_LED).w ; Bit 6: 0:yellow LED on, 1:yellow LED off
                btst    #DIAG_DIPSW_STOP_ON_ERROR,(IO_DIAG_DIPSW).w ; DIP Switches, #0=0:Function button pressed, #1=1:enable measurement mode, #5=1:sound check enabled, #6=1:stop at test failure

endless_loop_11:                        ; CODE XREF: START:endless_loop_11↓j
                bne.s   endless_loop_11
                btst    #DIAG_DIPSW_FUNCTION_DIP8,(IO_DIAG_DIPSW).w ; DIP Switches, #0=0:Function button pressed, #1=1:enable measurement mode, #5=1:sound check enabled, #6=1:stop at test failure
                bne.s   loc_FA0BF6

loc_FA0C12:                             ; CODE XREF: START+BA4↓j
                move.w  #BUTTON_DEBOUNCE_COUNTER,d0 ; counter for debouncing a button press

loc_FA0C16:                             ; CODE XREF: START+BA8↓j
                btst    #DIAG_DIPSW_FUNCTION_DIP8,(IO_DIAG_DIPSW).w ; DIP Switches, #0=0:Function button pressed, #1=1:enable measurement mode, #5=1:sound check enabled, #6=1:stop at test failure
                beq.s   loc_FA0C12
                subq.w  #1,d0
                bne.s   loc_FA0C16

loc_FA0C22:                             ; CODE XREF: START+B7C↑j
                move.b  #0,(IO_shifter_video_base_mid).w ; reset shifter register
                move.b  #1,(IO_shifter_video_base_high).w

TEST_1A_DELAY:                          ; FF U8 => DX2
                move.w  #LED_1A,(IO_DIAG_LED_1).w
                move.b  #$1A,(DIAG_SRAM_TEST_NUMBER).l
                eori.b  #DIAG_LED_MASK_YELLOW,(IO_DIAG_LED).w ; Bit 6: 0:yellow LED on, 1:yellow LED off
                move.w  #DELAY_COUNTER,d0 ; short delay between tests

loc_FA0C46:                             ; CODE XREF: START+BD0↓j
                nop
                dbf     d0,loc_FA0C46

TEST_1b_REGS_DMA_PTR_SECTOR_COUNT:      ; FF U8 => DX2
                move.w  #LED_1b,(IO_DIAG_LED_1).w
                move.b  #$1B,(DIAG_SRAM_TEST_NUMBER).l
                eori.b  #DIAG_LED_MASK_YELLOW,(IO_DIAG_LED).w ; Bit 6: 0:yellow LED on, 1:yellow LED off
                lea     (dma_reg_table).l,a0
                bsr     check_register_set_8bit
                beq.s   TEST_1c_LOOP

loc_FA0C6C:                             ; CODE XREF: START+C0E↓j
                move.w  #LED_1_DOT_b,(IO_DIAG_LED_1).w ; FF U8 => DX2
                bclr    #DIAG_LED_BITS_YELLOW,(IO_DIAG_LED).w ; Bit 6: 0:yellow LED on, 1:yellow LED off
                btst    #DIAG_DIPSW_STOP_ON_ERROR,(IO_DIAG_DIPSW).w ; DIP Switches, #0=0:Function button pressed, #1=1:enable measurement mode, #5=1:sound check enabled, #6=1:stop at test failure

endless_loop_12:                        ; CODE XREF: START:endless_loop_12↓j
                bne.s   endless_loop_12
                btst    #DIAG_DIPSW_FUNCTION_DIP8,(IO_DIAG_DIPSW).w ; DIP Switches, #0=0:Function button pressed, #1=1:enable measurement mode, #5=1:sound check enabled, #6=1:stop at test failure
                bne.s   loc_FA0C6C

loc_FA0C88:                             ; CODE XREF: START+C1A↓j
                move.w  #BUTTON_DEBOUNCE_COUNTER,d0 ; counter for debouncing a button press

loc_FA0C8C:                             ; CODE XREF: START+C1E↓j
                btst    #DIAG_DIPSW_FUNCTION_DIP8,(IO_DIAG_DIPSW).w ; DIP Switches, #0=0:Function button pressed, #1=1:enable measurement mode, #5=1:sound check enabled, #6=1:stop at test failure
                beq.s   loc_FA0C88
                subq.w  #1,d0
                bne.s   loc_FA0C8C
                move.w  #$90,(IO_dma_mode_control).w
                tst.b   (IO_mfp_GPIP).w
                movea.l #IO_dma_sector_count,a0
                move.b  #$FF,d1
                move.b  #1,d2
                bsr     check_mem_bitmask_8bit ; A0:mem, D1:test bitmask, D2:value offset, => D0<0:error, D4:defect bit
                beq.s   loc_FA0CE2

loc_FA0CB6:                             ; CODE XREF: START+C58↓j
                move.w  #LED_1_DOT_b,(IO_DIAG_LED_1).w ; FF U8 => DX2
                bclr    #DIAG_LED_BITS_YELLOW,(IO_DIAG_LED).w ; Bit 6: 0:yellow LED on, 1:yellow LED off
                btst    #DIAG_DIPSW_STOP_ON_ERROR,(IO_DIAG_DIPSW).w ; DIP Switches, #0=0:Function button pressed, #1=1:enable measurement mode, #5=1:sound check enabled, #6=1:stop at test failure

endless_loop_13:                        ; CODE XREF: START:endless_loop_13↓j
                bne.s   endless_loop_13
                btst    #DIAG_DIPSW_FUNCTION_DIP8,(IO_DIAG_DIPSW).w ; DIP Switches, #0=0:Function button pressed, #1=1:enable measurement mode, #5=1:sound check enabled, #6=1:stop at test failure
                bne.s   loc_FA0CB6

loc_FA0CD2:                             ; CODE XREF: START+C64↓j
                move.w  #BUTTON_DEBOUNCE_COUNTER,d0 ; counter for debouncing a button press

loc_FA0CD6:                             ; CODE XREF: START+C68↓j
                btst    #DIAG_DIPSW_FUNCTION_DIP8,(IO_DIAG_DIPSW).w ; DIP Switches, #0=0:Function button pressed, #1=1:enable measurement mode, #5=1:sound check enabled, #6=1:stop at test failure
                beq.s   loc_FA0CD2
                subq.w  #1,d0
                bne.s   loc_FA0CD6

loc_FA0CE2:                             ; CODE XREF: START+C3C↑j
                move.w  #$80,(IO_dma_mode_control).w

TEST_1c_LOOP:                           ; CODE XREF: START+BF2↑j
                move.w  #LED_1C,(IO_DIAG_LED_1).w ; FF U8 => DX2
                move.b  #$1C,(DIAG_SRAM_TEST_NUMBER).l
                eori.b  #DIAG_LED_MASK_YELLOW,(IO_DIAG_LED).w ; Bit 6: 0:yellow LED on, 1:yellow LED off
                move.w  #DELAY_COUNTER,d0 ; short delay between tests

loc_FA0D00:                             ; CODE XREF: START+C8A↓j
                nop
                dbf     d0,loc_FA0D00

TEST_1d_REGS_BLITTER:                   ; FF U8 => DX2
                move.w  #LED_1D,(IO_DIAG_LED_1).w
                move.b  #$1D,(DIAG_SRAM_TEST_NUMBER).l
                eori.b  #DIAG_LED_MASK_YELLOW,(IO_DIAG_LED).w ; Bit 6: 0:yellow LED on, 1:yellow LED off
                lea     (blitter_reg_table).l,a0
                bsr     check_register_set_16bit
                beq     TEST_1E_IDE

loc_FA0D28:                             ; CODE XREF: START+F50↓j
                move.w  #LED_1_DOT_D,(IO_DIAG_LED_1).w ; FF U8 => DX2
                bclr    #DIAG_LED_BITS_YELLOW,(IO_DIAG_LED).w ; Bit 6: 0:yellow LED on, 1:yellow LED off
                btst    #DIAG_DIPSW_STOP_ON_ERROR,(IO_DIAG_DIPSW).w ; DIP Switches, #0=0:Function button pressed, #1=1:enable measurement mode, #5=1:sound check enabled, #6=1:stop at test failure

endless_loop_7:                         ; CODE XREF: START:endless_loop_7↓j
                bne.s   endless_loop_7
                move.w  #COUNTER_DELAY_1s,d0 ; 1s delay
                subq.w  #1,d0

loc_FA0D42:                             ; CODE XREF: START+CDA↓j
                move.l  #COUNTER_DELAY_250ms,d1 ; 0.25s delay

loc_FA0D48:                             ; CODE XREF: START:loc_FA0D50↓j
                subq.l  #1,d1
                nop
                bra     *+4
; ---------------------------------------------------------------------------

loc_FA0D50:                             ; CODE XREF: START+CD4↑j
                bne.s   loc_FA0D48
                dbf     d0,loc_FA0D42
                move.w  #LED___,(IO_DIAG_LED_1).w ; FF U8 => DX2
                move.w  #COUNTER_DELAY_150ms,d0 ; 0.15s delay
                subq.w  #1,d0

loc_FA0D62:                             ; CODE XREF: START+CFA↓j
                move.l  #COUNTER_DELAY_250ms,d1 ; 0.25s delay

loc_FA0D68:                             ; CODE XREF: START:loc_FA0D70↓j
                subq.l  #1,d1
                nop
                bra     *+4
; ---------------------------------------------------------------------------

loc_FA0D70:                             ; CODE XREF: START+CF4↑j
                bne.s   loc_FA0D68
                dbf     d0,loc_FA0D62
                move.l  a0,d0
                swap    d0
                asr.w   #8,d0
                bsr     LED_show_hex_byte_D0
                move.w  #COUNTER_DELAY_500ms,d0 ; 0.5s delay
                subq.w  #1,d0

loc_FA0D86:                             ; CODE XREF: START+D1E↓j
                move.l  #COUNTER_DELAY_250ms,d1 ; 0.25s delay

loc_FA0D8C:                             ; CODE XREF: START:loc_FA0D94↓j
                subq.l  #1,d1
                nop
                bra     *+4
; ---------------------------------------------------------------------------

loc_FA0D94:                             ; CODE XREF: START+D18↑j
                bne.s   loc_FA0D8C
                dbf     d0,loc_FA0D86
                move.w  #LED___,(IO_DIAG_LED_1).w ; FF U8 => DX2
                move.w  #COUNTER_DELAY_150ms,d0 ; 0.15s delay
                subq.w  #1,d0

loc_FA0DA6:                             ; CODE XREF: START+D3E↓j
                move.l  #COUNTER_DELAY_250ms,d1 ; 0.25s delay

loc_FA0DAC:                             ; CODE XREF: START:loc_FA0DB4↓j
                subq.l  #1,d1
                nop
                bra     *+4
; ---------------------------------------------------------------------------

loc_FA0DB4:                             ; CODE XREF: START+D38↑j
                bne.s   loc_FA0DAC
                dbf     d0,loc_FA0DA6
                move.l  a0,d0
                swap    d0
                bsr     LED_show_hex_byte_D0
                move.w  #COUNTER_DELAY_500ms,d0 ; 0.5s delay
                subq.w  #1,d0

loc_FA0DC8:                             ; CODE XREF: START+D60↓j
                move.l  #COUNTER_DELAY_250ms,d1 ; 0.25s delay

loc_FA0DCE:                             ; CODE XREF: START:loc_FA0DD6↓j
                subq.l  #1,d1
                nop
                bra     *+4
; ---------------------------------------------------------------------------

loc_FA0DD6:                             ; CODE XREF: START+D5A↑j
                bne.s   loc_FA0DCE
                dbf     d0,loc_FA0DC8
                move.w  #LED___,(IO_DIAG_LED_1).w ; FF U8 => DX2
                move.w  #COUNTER_DELAY_150ms,d0 ; 0.15s delay
                subq.w  #1,d0

loc_FA0DE8:                             ; CODE XREF: START+D80↓j
                move.l  #COUNTER_DELAY_250ms,d1 ; 0.25s delay

loc_FA0DEE:                             ; CODE XREF: START:loc_FA0DF6↓j
                subq.l  #1,d1
                nop
                bra     *+4
; ---------------------------------------------------------------------------

loc_FA0DF6:                             ; CODE XREF: START+D7A↑j
                bne.s   loc_FA0DEE
                dbf     d0,loc_FA0DE8
                move.l  a0,d0
                asr.w   #8,d0
                bsr     LED_show_hex_byte_D0
                move.w  #COUNTER_DELAY_500ms,d0 ; 0.5s delay
                subq.w  #1,d0

loc_FA0E0A:                             ; CODE XREF: START+DA2↓j
                move.l  #COUNTER_DELAY_250ms,d1 ; 0.25s delay

loc_FA0E10:                             ; CODE XREF: START:loc_FA0E18↓j
                subq.l  #1,d1
                nop
                bra     *+4
; ---------------------------------------------------------------------------

loc_FA0E18:                             ; CODE XREF: START+D9C↑j
                bne.s   loc_FA0E10
                dbf     d0,loc_FA0E0A
                move.w  #LED___,(IO_DIAG_LED_1).w ; FF U8 => DX2
                move.w  #COUNTER_DELAY_150ms,d0 ; 0.15s delay
                subq.w  #1,d0

loc_FA0E2A:                             ; CODE XREF: START+DC2↓j
                move.l  #COUNTER_DELAY_250ms,d1 ; 0.25s delay

loc_FA0E30:                             ; CODE XREF: START:loc_FA0E38↓j
                subq.l  #1,d1
                nop
                bra     *+4
; ---------------------------------------------------------------------------

loc_FA0E38:                             ; CODE XREF: START+DBC↑j
                bne.s   loc_FA0E30
                dbf     d0,loc_FA0E2A
                move.l  a0,d0
                bsr     LED_show_hex_byte_D0
                move.w  #COUNTER_DELAY_500ms,d0 ; 0.5s delay
                subq.w  #1,d0

loc_FA0E4A:                             ; CODE XREF: START+DE2↓j
                move.l  #COUNTER_DELAY_250ms,d1 ; 0.25s delay

loc_FA0E50:                             ; CODE XREF: START:loc_FA0E58↓j
                subq.l  #1,d1
                nop
                bra     *+4
; ---------------------------------------------------------------------------

loc_FA0E58:                             ; CODE XREF: START+DDC↑j
                bne.s   loc_FA0E50
                dbf     d0,loc_FA0E4A
                move.w  #LED_eq__,(IO_DIAG_LED_1).w ; FF U8 => DX2
                move.w  #COUNTER_DELAY_500ms,d0 ; 0.5s delay
                subq.w  #1,d0

loc_FA0E6A:                             ; CODE XREF: START+E02↓j
                move.l  #COUNTER_DELAY_250ms,d1 ; 0.25s delay

loc_FA0E70:                             ; CODE XREF: START:loc_FA0E78↓j
                subq.l  #1,d1
                nop
                bra     *+4
; ---------------------------------------------------------------------------

loc_FA0E78:                             ; CODE XREF: START+DFC↑j
                bne.s   loc_FA0E70
                dbf     d0,loc_FA0E6A
                move.w  #LED___,(IO_DIAG_LED_1).w ; FF U8 => DX2
                move.w  #COUNTER_DELAY_150ms,d0 ; 0.15s delay
                subq.w  #1,d0

loc_FA0E8A:                             ; CODE XREF: START+E22↓j
                move.l  #COUNTER_DELAY_250ms,d1 ; 0.25s delay

loc_FA0E90:                             ; CODE XREF: START:loc_FA0E98↓j
                subq.l  #1,d1
                nop
                bra     *+4
; ---------------------------------------------------------------------------

loc_FA0E98:                             ; CODE XREF: START+E1C↑j
                bne.s   loc_FA0E90
                dbf     d0,loc_FA0E8A
                move.l  d3,d0
                asr.w   #8,d0
                bsr     LED_show_hex_byte_D0
                move.w  #COUNTER_DELAY_500ms,d0 ; 0.5s delay
                subq.w  #1,d0

loc_FA0EAC:                             ; CODE XREF: START+E44↓j
                move.l  #COUNTER_DELAY_250ms,d1 ; 0.25s delay

loc_FA0EB2:                             ; CODE XREF: START:loc_FA0EBA↓j
                subq.l  #1,d1
                nop
                bra     *+4
; ---------------------------------------------------------------------------

loc_FA0EBA:                             ; CODE XREF: START+E3E↑j
                bne.s   loc_FA0EB2
                dbf     d0,loc_FA0EAC
                move.w  #LED___,(IO_DIAG_LED_1).w ; FF U8 => DX2
                move.w  #COUNTER_DELAY_150ms,d0 ; 0.15s delay
                subq.w  #1,d0

loc_FA0ECC:                             ; CODE XREF: START+E64↓j
                move.l  #COUNTER_DELAY_250ms,d1 ; 0.25s delay

loc_FA0ED2:                             ; CODE XREF: START:loc_FA0EDA↓j
                subq.l  #1,d1
                nop
                bra     *+4
; ---------------------------------------------------------------------------

loc_FA0EDA:                             ; CODE XREF: START+E5E↑j
                bne.s   loc_FA0ED2
                dbf     d0,loc_FA0ECC
                move.l  d3,d0
                bsr     LED_show_hex_byte_D0
                move.w  #COUNTER_DELAY_500ms,d0 ; 0.5s delay
                subq.w  #1,d0

loc_FA0EEC:                             ; CODE XREF: START+E84↓j
                move.l  #COUNTER_DELAY_250ms,d1 ; 0.25s delay

loc_FA0EF2:                             ; CODE XREF: START:loc_FA0EFA↓j
                subq.l  #1,d1
                nop
                bra     *+4
; ---------------------------------------------------------------------------

loc_FA0EFA:                             ; CODE XREF: START+E7E↑j
                bne.s   loc_FA0EF2
                dbf     d0,loc_FA0EEC
                move.w  #LED_vlines__,(IO_DIAG_LED_1).w ; FF U8 => DX2
                move.w  #COUNTER_DELAY_500ms,d0 ; 0.5s delay
                subq.w  #1,d0

loc_FA0F0C:                             ; CODE XREF: START+EA4↓j
                move.l  #COUNTER_DELAY_250ms,d1 ; 0.25s delay

loc_FA0F12:                             ; CODE XREF: START:loc_FA0F1A↓j
                subq.l  #1,d1
                nop
                bra     *+4
; ---------------------------------------------------------------------------

loc_FA0F1A:                             ; CODE XREF: START+E9E↑j
                bne.s   loc_FA0F12
                dbf     d0,loc_FA0F0C
                move.w  #LED___,(IO_DIAG_LED_1).w ; FF U8 => DX2
                move.w  #COUNTER_DELAY_150ms,d0 ; 0.15s delay
                subq.w  #1,d0

loc_FA0F2C:                             ; CODE XREF: START+EC4↓j
                move.l  #COUNTER_DELAY_250ms,d1 ; 0.25s delay

loc_FA0F32:                             ; CODE XREF: START:loc_FA0F3A↓j
                subq.l  #1,d1
                nop
                bra     *+4
; ---------------------------------------------------------------------------

loc_FA0F3A:                             ; CODE XREF: START+EBE↑j
                bne.s   loc_FA0F32
                dbf     d0,loc_FA0F2C
                move.l  d4,d0
                asr.w   #8,d0
                bsr     LED_show_hex_byte_D0
                move.w  #COUNTER_DELAY_500ms,d0 ; 0.5s delay
                subq.w  #1,d0

loc_FA0F4E:                             ; CODE XREF: START+EE6↓j
                move.l  #COUNTER_DELAY_250ms,d1 ; 0.25s delay

loc_FA0F54:                             ; CODE XREF: START:loc_FA0F5C↓j
                subq.l  #1,d1
                nop
                bra     *+4
; ---------------------------------------------------------------------------

loc_FA0F5C:                             ; CODE XREF: START+EE0↑j
                bne.s   loc_FA0F54
                dbf     d0,loc_FA0F4E
                move.w  #LED___,(IO_DIAG_LED_1).w ; FF U8 => DX2
                move.w  #COUNTER_DELAY_150ms,d0 ; 0.15s delay
                subq.w  #1,d0

loc_FA0F6E:                             ; CODE XREF: START+F06↓j
                move.l  #COUNTER_DELAY_250ms,d1 ; 0.25s delay

loc_FA0F74:                             ; CODE XREF: START:loc_FA0F7C↓j
                subq.l  #1,d1
                nop
                bra     *+4
; ---------------------------------------------------------------------------

loc_FA0F7C:                             ; CODE XREF: START+F00↑j
                bne.s   loc_FA0F74
                dbf     d0,loc_FA0F6E
                move.l  d4,d0
                bsr     LED_show_hex_byte_D0
                move.w  #COUNTER_DELAY_500ms,d0 ; 0.5s delay
                subq.w  #1,d0

loc_FA0F8E:                             ; CODE XREF: START+F26↓j
                move.l  #COUNTER_DELAY_250ms,d1 ; 0.25s delay

loc_FA0F94:                             ; CODE XREF: START:loc_FA0F9C↓j
                subq.l  #1,d1
                nop
                bra     *+4
; ---------------------------------------------------------------------------

loc_FA0F9C:                             ; CODE XREF: START+F20↑j
                bne.s   loc_FA0F94
                dbf     d0,loc_FA0F8E
                move.w  #LED___,(IO_DIAG_LED_1).w ; FF U8 => DX2
                move.w  #COUNTER_DELAY_500ms,d0 ; 0.5s delay
                subq.w  #1,d0

loc_FA0FAE:                             ; CODE XREF: START+F46↓j
                move.l  #COUNTER_DELAY_250ms,d1 ; 0.25s delay

loc_FA0FB4:                             ; CODE XREF: START:loc_FA0FBC↓j
                subq.l  #1,d1
                nop
                bra     *+4
; ---------------------------------------------------------------------------

loc_FA0FBC:                             ; CODE XREF: START+F40↑j
                bne.s   loc_FA0FB4
                dbf     d0,loc_FA0FAE
                btst    #DIAG_DIPSW_FUNCTION_DIP8,(IO_DIAG_DIPSW).w ; DIP Switches, #0=0:Function button pressed, #1=1:enable measurement mode, #5=1:sound check enabled, #6=1:stop at test failure
                bne     loc_FA0D28

loc_FA0FCC:                             ; CODE XREF: START+F5E↓j
                move.w  #BUTTON_DEBOUNCE_COUNTER,d0 ; counter for debouncing a button press

loc_FA0FD0:                             ; CODE XREF: START+F62↓j
                btst    #DIAG_DIPSW_FUNCTION_DIP8,(IO_DIAG_DIPSW).w ; DIP Switches, #0=0:Function button pressed, #1=1:enable measurement mode, #5=1:sound check enabled, #6=1:stop at test failure
                beq.s   loc_FA0FCC
                subq.w  #1,d0
                bne.s   loc_FA0FD0

TEST_1E_IDE:                            ; CODE XREF: START+CAC↑j
                move.w  #LED_1E,(IO_DIAG_LED_1).w ; FF U8 => DX2
                move.b  #$1E,(DIAG_SRAM_TEST_NUMBER).l
                eori.b  #DIAG_LED_MASK_YELLOW,(IO_DIAG_LED).w ; Bit 6: 0:yellow LED on, 1:yellow LED off
                clr.l   d0
                move.l  d0,(IO_IDE_DATA).l
                move.w  (IO_IDE_ERR).l,d0
                move.w  (IO_IDE_ALT_STATUS).l,d0
                move.w  (IO_IDE_ALT_COM_REG).l,d0

TEST_20_MFP_UART:                       ; FF U8 => DX2
                move.w  #LED_20,(IO_DIAG_LED_1).w
                move.b  #$20,(DIAG_SRAM_TEST_NUMBER).l ; ' '
                eori.b  #DIAG_LED_MASK_YELLOW,(IO_DIAG_LED).w ; Timer C: Delay mode, divide by 64, Timer D: stop
                move.b  #$11,(IO_mfp_TCDCR).w
                move.b  #2,(IO_mfp_TDDR).w ; 9600 Baud
                move.b  #%10011000,(IO_mfp_UCR).w ; clock divide by 16, 8 bits, async, 1-stop, no parity
                move.b  #1,(IO_mfp_RSR).w ; Receiver enable
                move.b  #1,(IO_mfp_TSR).w ; Transmitter enable
                move.w  #COUNTER_DELAY_10ms,d0 ; 10ms delay
                subq.w  #1,d0

loc_FA1042:                             ; CODE XREF: START+FDA↓j
                move.l  #COUNTER_DELAY_250ms,d1 ; 0.25s delay

loc_FA1048:                             ; CODE XREF: START:loc_FA1050↓j
                subq.l  #1,d1
                nop
                bra     *+4
; ---------------------------------------------------------------------------

loc_FA1050:                             ; CODE XREF: START+FD4↑j
                bne.s   loc_FA1048
                dbf     d0,loc_FA1042
                move.b  #'A',(IO_mfp_UDR).w ; send 'A'
                move.w  #COUNTER_DELAY_2ms,d0 ; 2ms delay
                subq.w  #1,d0

loc_FA1062:                             ; CODE XREF: START+FFA↓j
                move.l  #COUNTER_DELAY_250ms,d1 ; 0.25s delay

loc_FA1068:                             ; CODE XREF: START:loc_FA1070↓j
                subq.l  #1,d1
                nop
                bra     *+4
; ---------------------------------------------------------------------------

loc_FA1070:                             ; CODE XREF: START+FF4↑j
                bne.s   loc_FA1068
                dbf     d0,loc_FA1062
                tst.b   (IO_mfp_TSR).w  ; Tx buffer empty?
                bpl.s   loc_FA10A2
                move.b  #'B',(IO_mfp_UDR).w ; send 'B'
                move.w  #COUNTER_DELAY_2ms,d0 ; 2ms delay
                subq.w  #1,d0

loc_FA1088:                             ; CODE XREF: START+1020↓j
                move.l  #COUNTER_DELAY_250ms,d1 ; 0.25s delay

loc_FA108E:                             ; CODE XREF: START:loc_FA1096↓j
                subq.l  #1,d1
                nop
                bra     *+4
; ---------------------------------------------------------------------------

loc_FA1096:                             ; CODE XREF: START+101A↑j
                bne.s   loc_FA108E
                dbf     d0,loc_FA1088
                tst.b   (IO_mfp_TSR).w  ; Tx buffer empty
                bmi.s   TEST_21_LOOP

loc_FA10A2:                             ; CODE XREF: START+1002↑j
                                        ; START+1044↓j
                move.w  #LED_2_DOT_0,(IO_DIAG_LED_1).w ; FF U8 => DX2
                bclr    #DIAG_LED_BITS_YELLOW,(IO_DIAG_LED).w ; Bit 6: 0:yellow LED on, 1:yellow LED off
                btst    #DIAG_DIPSW_STOP_ON_ERROR,(IO_DIAG_DIPSW).w ; DIP Switches, #0=0:Function button pressed, #1=1:enable measurement mode, #5=1:sound check enabled, #6=1:stop at test failure

endless_loop_14:                        ; CODE XREF: START:endless_loop_14↓j
                bne.s   endless_loop_14
                btst    #DIAG_DIPSW_FUNCTION_DIP8,(IO_DIAG_DIPSW).w ; DIP Switches, #0=0:Function button pressed, #1=1:enable measurement mode, #5=1:sound check enabled, #6=1:stop at test failure
                bne.s   loc_FA10A2

loc_FA10BE:                             ; CODE XREF: START+1050↓j
                move.w  #BUTTON_DEBOUNCE_COUNTER,d0 ; counter for debouncing a button press

loc_FA10C2:                             ; CODE XREF: START+1054↓j
                btst    #DIAG_DIPSW_FUNCTION_DIP8,(IO_DIAG_DIPSW).w ; DIP Switches, #0=0:Function button pressed, #1=1:enable measurement mode, #5=1:sound check enabled, #6=1:stop at test failure
                beq.s   loc_FA10BE
                subq.w  #1,d0
                bne.s   loc_FA10C2

TEST_21_LOOP:                           ; CODE XREF: START+1028↑j
                move.w  #LED_21,(IO_DIAG_LED_1).w ; FF U8 => DX2
                move.b  #$21,(DIAG_SRAM_TEST_NUMBER).l ; '!'
                eori.b  #DIAG_LED_MASK_YELLOW,(IO_DIAG_LED).w ; Bit 6: 0:yellow LED on, 1:yellow LED off
                move.w  #DELAY_COUNTER,d0 ; short delay between tests

loc_FA10E6:                             ; CODE XREF: START+1070↓j
                nop
                dbf     d0,loc_FA10E6

TEST_28_ACIA_SEND_MIDI:                 ; FF U8 => DX2
                move.w  #LED_28,(IO_DIAG_LED_1).w
                move.b  #$28,(DIAG_SRAM_TEST_NUMBER).l ; '('
                eori.b  #DIAG_LED_MASK_YELLOW,(IO_DIAG_LED).w ; Bit 6: 0:yellow LED on, 1:yellow LED off
                move.b  #%11,(IO_acia_midi_ctrl).w ; Master reset
                tst.b   (IO_mfp_GPIP).w
                tst.b   (IO_mfp_GPIP).w
                move.b  #%10101,(IO_acia_midi_ctrl).w ; 8N1, Clock divide by 16
                move.w  #COUNTER_DELAY_20ms,d0 ; 20ms delay
                subq.w  #1,d0

loc_FA111A:                             ; CODE XREF: START+10B2↓j
                move.l  #COUNTER_DELAY_250ms,d1 ; 0.25s delay

loc_FA1120:                             ; CODE XREF: START:loc_FA1128↓j
                subq.l  #1,d1
                nop
                bra     *+4
; ---------------------------------------------------------------------------

loc_FA1128:                             ; CODE XREF: START+10AC↑j
                bne.s   loc_FA1120
                dbf     d0,loc_FA111A
                move.b  #0,(IO_acia_midi_data).w
                move.w  #COUNTER_DELAY_2ms,d0 ; 2ms delay
                subq.w  #1,d0

loc_FA113A:                             ; CODE XREF: START+10D2↓j
                move.l  #COUNTER_DELAY_250ms,d1 ; 0.25s delay

loc_FA1140:                             ; CODE XREF: START:loc_FA1148↓j
                subq.l  #1,d1
                nop
                bra     *+4
; ---------------------------------------------------------------------------

loc_FA1148:                             ; CODE XREF: START+10CC↑j
                bne.s   loc_FA1140
                dbf     d0,loc_FA113A
                btst    #1,(IO_acia_midi_ctrl).w ; Tx data register empty
                beq.s   loc_FA117E
                move.b  #1,(IO_acia_midi_data).w
                move.w  #COUNTER_DELAY_2ms,d0 ; 2ms delay
                subq.w  #1,d0

loc_FA1162:                             ; CODE XREF: START+10FA↓j
                move.l  #COUNTER_DELAY_250ms,d1 ; 0.25s delay

loc_FA1168:                             ; CODE XREF: START:loc_FA1170↓j
                subq.l  #1,d1
                nop
                bra     *+4
; ---------------------------------------------------------------------------

loc_FA1170:                             ; CODE XREF: START+10F4↑j
                bne.s   loc_FA1168
                dbf     d0,loc_FA1162
                btst    #1,(IO_acia_midi_ctrl).w ; Tx data register empty
                bne.s   TEST_29_ACIA_IKBD_ACCESS

loc_FA117E:                             ; CODE XREF: START+10DC↑j
                                        ; START+1120↓j
                move.w  #LED_2_DOT_8,(IO_DIAG_LED_1).w ; FF U8 => DX2
                bclr    #DIAG_LED_BITS_YELLOW,(IO_DIAG_LED).w ; Bit 6: 0:yellow LED on, 1:yellow LED off
                btst    #DIAG_DIPSW_STOP_ON_ERROR,(IO_DIAG_DIPSW).w ; DIP Switches, #0=0:Function button pressed, #1=1:enable measurement mode, #5=1:sound check enabled, #6=1:stop at test failure

endless_loop_15:                        ; CODE XREF: START:endless_loop_15↓j
                bne.s   endless_loop_15
                btst    #DIAG_DIPSW_FUNCTION_DIP8,(IO_DIAG_DIPSW).w ; DIP Switches, #0=0:Function button pressed, #1=1:enable measurement mode, #5=1:sound check enabled, #6=1:stop at test failure
                bne.s   loc_FA117E

loc_FA119A:                             ; CODE XREF: START+112C↓j
                move.w  #BUTTON_DEBOUNCE_COUNTER,d0 ; counter for debouncing a button press

loc_FA119E:                             ; CODE XREF: START+1130↓j
                btst    #DIAG_DIPSW_FUNCTION_DIP8,(IO_DIAG_DIPSW).w ; DIP Switches, #0=0:Function button pressed, #1=1:enable measurement mode, #5=1:sound check enabled, #6=1:stop at test failure
                beq.s   loc_FA119A
                subq.w  #1,d0
                bne.s   loc_FA119E

TEST_29_ACIA_IKBD_ACCESS:               ; CODE XREF: START+1104↑j
                move.w  #LED_29,(IO_DIAG_LED_1).w ; FF U8 => DX2
                move.b  #$29,(DIAG_SRAM_TEST_NUMBER).l ; ')'
                eori.b  #DIAG_LED_MASK_YELLOW,(IO_DIAG_LED).w ; Bit 6: 0:yellow LED on, 1:yellow LED off
                move.b  #%11,(IO_acia_kbd_ctrl).w ; Master reset
                tst.b   (IO_mfp_GPIP).w
                tst.b   (IO_mfp_GPIP).w
                move.b  #%10110,(IO_acia_kbd_ctrl).w ; 8N1, clock div by 64
                move.w  #COUNTER_DELAY_20ms,d0 ; 20ms delay
                subq.w  #1,d0

loc_FA11D8:                             ; CODE XREF: START+1170↓j
                move.l  #COUNTER_DELAY_250ms,d1 ; 0.25s delay

loc_FA11DE:                             ; CODE XREF: START:loc_FA11E6↓j
                subq.l  #1,d1
                nop
                bra     *+4
; ---------------------------------------------------------------------------

loc_FA11E6:                             ; CODE XREF: START+116A↑j
                bne.s   loc_FA11DE
                dbf     d0,loc_FA11D8
                tst.b   (IO_acia_kbd_data).w

TEST_30_ACIA_SEND_IKBD_RESET:           ; FF U8 => DX2
                move.w  #LED_30,(IO_DIAG_LED_1).w
                move.b  #$30,(DIAG_SRAM_TEST_NUMBER).l ; '0'
                eori.b  #DIAG_LED_MASK_YELLOW,(IO_DIAG_LED).w ; Bit 6: 0:yellow LED on, 1:yellow LED off

loc_FA1204:                             ; CODE XREF: START+1192↓j
                btst    #1,(IO_acia_kbd_ctrl).w ; Tx datsa register empty
                beq.s   loc_FA1204      ; Tx datsa register empty
                move.b  #$80,(IO_acia_kbd_data).w ; IKBD RESET (Byte 1)

loc_FA1212:                             ; CODE XREF: START+11A0↓j
                btst    #1,(IO_acia_kbd_ctrl).w ; Tx datsa register empty
                beq.s   loc_FA1212      ; Tx datsa register empty
                move.b  #1,(IO_acia_kbd_data).w ; IKBD RESET (Byte 2)

loc_FA1220:                             ; CODE XREF: START+11D4↓j
                move.l  #ACIA_IKBD_DELAY_COUNTER,d5 ; It can take up to 200ms for a reply

loc_FA1226:                             ; CODE XREF: START+1284↓j
                btst    #0,(IO_acia_kbd_ctrl).w ; Rx data register full
                beq     loc_FA12FA
                move.b  (IO_acia_kbd_data).w,d0
                move.b  d0,d4
                andi.b  #$FC,d0
                cmpi.b  #$F0,d0         ; Boot message received?
                beq     TEST_31_LOOP
                btst    #DIAG_DIPSW_STOP_ON_ERROR,(IO_DIAG_DIPSW).w ; DIP Switches, #0=0:Function button pressed, #1=1:enable measurement mode, #5=1:sound check enabled, #6=1:stop at test failure
                beq.s   loc_FA124E
                tst.b   d0
                bmi.s   loc_FA1220      ; It can take up to 200ms for a reply

loc_FA124E:                             ; CODE XREF: START+11D0↑j
                                        ; START+126A↓j
                move.w  #LED_3_DOT_0,(IO_DIAG_LED_1).w ; FF U8 => DX2
                bclr    #DIAG_LED_BITS_YELLOW,(IO_DIAG_LED).w ; Bit 6: 0:yellow LED on, 1:yellow LED off
                btst    #DIAG_DIPSW_STOP_ON_ERROR,(IO_DIAG_DIPSW).w ; DIP Switches, #0=0:Function button pressed, #1=1:enable measurement mode, #5=1:sound check enabled, #6=1:stop at test failure

endless_loop_16:                        ; CODE XREF: START:endless_loop_16↓j
                bne.s   endless_loop_16
                move.w  #COUNTER_DELAY_1s,d0 ; 1s delay
                subq.w  #1,d0

loc_FA1268:                             ; CODE XREF: START+1200↓j
                move.l  #COUNTER_DELAY_250ms,d1 ; 0.25s delay

loc_FA126E:                             ; CODE XREF: START:loc_FA1276↓j
                subq.l  #1,d1
                nop
                bra     *+4
; ---------------------------------------------------------------------------

loc_FA1276:                             ; CODE XREF: START+11FA↑j
                bne.s   loc_FA126E
                dbf     d0,loc_FA1268
                move.w  #LED___,(IO_DIAG_LED_1).w ; FF U8 => DX2
                move.w  #COUNTER_DELAY_150ms,d0 ; 0.15s delay
                subq.w  #1,d0

loc_FA1288:                             ; CODE XREF: START+1220↓j
                move.l  #COUNTER_DELAY_250ms,d1 ; 0.25s delay

loc_FA128E:                             ; CODE XREF: START:loc_FA1296↓j
                subq.l  #1,d1
                nop
                bra     *+4
; ---------------------------------------------------------------------------

loc_FA1296:                             ; CODE XREF: START+121A↑j
                bne.s   loc_FA128E
                dbf     d0,loc_FA1288
                move.l  d4,d0
                bsr     LED_show_hex_byte_D0
                move.w  #COUNTER_DELAY_500ms,d0 ; 0.5s delay
                subq.w  #1,d0

loc_FA12A8:                             ; CODE XREF: START+1240↓j
                move.l  #COUNTER_DELAY_250ms,d1 ; 0.25s delay

loc_FA12AE:                             ; CODE XREF: START:loc_FA12B6↓j
                subq.l  #1,d1
                nop
                bra     *+4
; ---------------------------------------------------------------------------

loc_FA12B6:                             ; CODE XREF: START+123A↑j
                bne.s   loc_FA12AE
                dbf     d0,loc_FA12A8
                move.w  #LED___,(IO_DIAG_LED_1).w ; FF U8 => DX2
                move.w  #COUNTER_DELAY_500ms,d0 ; 0.5s delay
                subq.w  #1,d0

loc_FA12C8:                             ; CODE XREF: START+1260↓j
                move.l  #COUNTER_DELAY_250ms,d1 ; 0.25s delay

loc_FA12CE:                             ; CODE XREF: START:loc_FA12D6↓j
                subq.l  #1,d1
                nop
                bra     *+4
; ---------------------------------------------------------------------------

loc_FA12D6:                             ; CODE XREF: START+125A↑j
                bne.s   loc_FA12CE
                dbf     d0,loc_FA12C8
                btst    #DIAG_DIPSW_FUNCTION_DIP8,(IO_DIAG_DIPSW).w ; DIP Switches, #0=0:Function button pressed, #1=1:enable measurement mode, #5=1:sound check enabled, #6=1:stop at test failure
                bne     loc_FA124E

loc_FA12E6:                             ; CODE XREF: START+1278↓j
                move.w  #BUTTON_DEBOUNCE_COUNTER,d0 ; counter for debouncing a button press

loc_FA12EA:                             ; CODE XREF: START+127C↓j
                btst    #DIAG_DIPSW_FUNCTION_DIP8,(IO_DIAG_DIPSW).w ; DIP Switches, #0=0:Function button pressed, #1=1:enable measurement mode, #5=1:sound check enabled, #6=1:stop at test failure
                beq.s   loc_FA12E6
                subq.w  #1,d0
                bne.s   loc_FA12EA
                bra     TEST_31_LOOP
; ---------------------------------------------------------------------------

loc_FA12FA:                             ; CODE XREF: START+11B4↑j
                subq.l  #1,d5
                bne     loc_FA1226      ; Rx data register full

loc_FA1300:                             ; CODE XREF: START+135E↓j
                move.w  #LED_3_DOT_0,(IO_DIAG_LED_1).w ; FF U8 => DX2
                bclr    #DIAG_LED_BITS_YELLOW,(IO_DIAG_LED).w ; Bit 6: 0:yellow LED on, 1:yellow LED off
                btst    #DIAG_DIPSW_STOP_ON_ERROR,(IO_DIAG_DIPSW).w ; DIP Switches, #0=0:Function button pressed, #1=1:enable measurement mode, #5=1:sound check enabled, #6=1:stop at test failure

endless_loop_17:                        ; CODE XREF: START:endless_loop_17↓j
                bne.s   endless_loop_17
                move.w  #COUNTER_DELAY_1s,d0 ; 1s delay
                subq.w  #1,d0

loc_FA131A:                             ; CODE XREF: START+12B2↓j
                move.l  #COUNTER_DELAY_250ms,d1 ; 0.25s delay

loc_FA1320:                             ; CODE XREF: START:loc_FA1328↓j
                subq.l  #1,d1
                nop
                bra     *+4
; ---------------------------------------------------------------------------

loc_FA1328:                             ; CODE XREF: START+12AC↑j
                bne.s   loc_FA1320
                dbf     d0,loc_FA131A
                move.w  #LED___,(IO_DIAG_LED_1).w ; FF U8 => DX2
                move.w  #COUNTER_DELAY_150ms,d0 ; 0.15s delay
                subq.w  #1,d0

loc_FA133A:                             ; CODE XREF: START+12D2↓j
                move.l  #COUNTER_DELAY_250ms,d1 ; 0.25s delay

loc_FA1340:                             ; CODE XREF: START:loc_FA1348↓j
                subq.l  #1,d1
                nop
                bra     *+4
; ---------------------------------------------------------------------------

loc_FA1348:                             ; CODE XREF: START+12CC↑j
                bne.s   loc_FA1340
                dbf     d0,loc_FA133A
                moveq   #$FFFFFFFF,d0
                asr.w   #8,d0
                bsr     LED_show_hex_byte_D0
                move.w  #COUNTER_DELAY_500ms,d0 ; 0.5s delay
                subq.w  #1,d0

loc_FA135C:                             ; CODE XREF: START+12F4↓j
                move.l  #COUNTER_DELAY_250ms,d1 ; 0.25s delay

loc_FA1362:                             ; CODE XREF: START:loc_FA136A↓j
                subq.l  #1,d1
                nop
                bra     *+4
; ---------------------------------------------------------------------------

loc_FA136A:                             ; CODE XREF: START+12EE↑j
                bne.s   loc_FA1362
                dbf     d0,loc_FA135C
                move.w  #LED___,(IO_DIAG_LED_1).w ; FF U8 => DX2
                move.w  #COUNTER_DELAY_150ms,d0 ; 0.15s delay
                subq.w  #1,d0

loc_FA137C:                             ; CODE XREF: START+1314↓j
                move.l  #COUNTER_DELAY_250ms,d1 ; 0.25s delay

loc_FA1382:                             ; CODE XREF: START:loc_FA138A↓j
                subq.l  #1,d1
                nop
                bra     *+4
; ---------------------------------------------------------------------------

loc_FA138A:                             ; CODE XREF: START+130E↑j
                bne.s   loc_FA1382
                dbf     d0,loc_FA137C
                moveq   #$FFFFFFFF,d0
                bsr     LED_show_hex_byte_D0
                move.w  #COUNTER_DELAY_500ms,d0 ; 0.5s delay
                subq.w  #1,d0

loc_FA139C:                             ; CODE XREF: START+1334↓j
                move.l  #COUNTER_DELAY_250ms,d1 ; 0.25s delay

loc_FA13A2:                             ; CODE XREF: START:loc_FA13AA↓j
                subq.l  #1,d1
                nop
                bra     *+4
; ---------------------------------------------------------------------------

loc_FA13AA:                             ; CODE XREF: START+132E↑j
                bne.s   loc_FA13A2
                dbf     d0,loc_FA139C
                move.w  #LED___,(IO_DIAG_LED_1).w ; FF U8 => DX2
                move.w  #COUNTER_DELAY_500ms,d0 ; 0.5s delay
                subq.w  #1,d0

loc_FA13BC:                             ; CODE XREF: START+1354↓j
                move.l  #COUNTER_DELAY_250ms,d1 ; 0.25s delay

loc_FA13C2:                             ; CODE XREF: START:loc_FA13CA↓j
                subq.l  #1,d1
                nop
                bra     *+4
; ---------------------------------------------------------------------------

loc_FA13CA:                             ; CODE XREF: START+134E↑j
                bne.s   loc_FA13C2
                dbf     d0,loc_FA13BC
                btst    #DIAG_DIPSW_FUNCTION_DIP8,(IO_DIAG_DIPSW).w ; DIP Switches, #0=0:Function button pressed, #1=1:enable measurement mode, #5=1:sound check enabled, #6=1:stop at test failure
                bne     loc_FA1300

loc_FA13DA:                             ; CODE XREF: START+136C↓j
                move.w  #BUTTON_DEBOUNCE_COUNTER,d0 ; counter for debouncing a button press

loc_FA13DE:                             ; CODE XREF: START+1370↓j
                btst    #DIAG_DIPSW_FUNCTION_DIP8,(IO_DIAG_DIPSW).w ; DIP Switches, #0=0:Function button pressed, #1=1:enable measurement mode, #5=1:sound check enabled, #6=1:stop at test failure
                beq.s   loc_FA13DA
                subq.w  #1,d0
                bne.s   loc_FA13DE

TEST_31_LOOP:                           ; CODE XREF: START+11C6↑j
                                        ; START+127E↑j
                move.w  #LED_31,(IO_DIAG_LED_1).w ; FF U8 => DX2
                move.b  #$31,(DIAG_SRAM_TEST_NUMBER).l ; '1'
                eori.b  #DIAG_LED_MASK_YELLOW,(IO_DIAG_LED).w ; Bit 6: 0:yellow LED on, 1:yellow LED off
                move.w  #DELAY_COUNTER,d0 ; short delay between tests

loc_FA1402:                             ; CODE XREF: START+138C↓j
                nop
                dbf     d0,loc_FA1402

TEST_40_LOOP:                           ; FF U8 => DX2
                move.w  #LED_40,(IO_DIAG_LED_1).w
                move.b  #$40,(DIAG_SRAM_TEST_NUMBER).l ; '@'
                eori.b  #DIAG_LED_MASK_YELLOW,(IO_DIAG_LED).w ; Bit 6: 0:yellow LED on, 1:yellow LED off
                move.w  #DELAY_COUNTER,d0 ; short delay between tests

loc_FA1420:                             ; CODE XREF: START+13AA↓j
                nop
                dbf     d0,loc_FA1420

TEST_41_SRAM_POWER2:                    ; FF U8 => DX2
                move.w  #LED_41,(IO_DIAG_LED_1).w
                move.b  #$41,(DIAG_SRAM_TEST_NUMBER).l ; 'A'
                eori.b  #DIAG_LED_MASK_YELLOW,(IO_DIAG_LED).w ; Bit 6: 0:yellow LED on, 1:yellow LED off
                moveq   #(RAM_BASE+2),d1

loc_FA143C:                             ; CODE XREF: START+13E6↓j
                movea.l d1,a1
                cmpi.l  #RAM_2kb,d1
                bge.s   loc_FA144C
                adda.l  #RAM_2kb,a1

loc_FA144C:                             ; CODE XREF: START+13CC↑j
                clr.w   (a1)
                tst.b   (IO_mfp_GPIP).w
                tst.w   (a1)
                bne.s   loc_FA14BC
                rol.l   #1,d1
                cmpi.l  #RAM_END_1MB,d1
                bne.s   loc_FA143C
                moveq   #(RAM_BASE+2),d1

loc_FA1462:                             ; CODE XREF: START+143E↓j
                movea.l d1,a1
                cmpi.l  #RAM_2kb,d1
                bge.s   loc_FA1472
                adda.l  #RAM_2kb,a1

loc_FA1472:                             ; CODE XREF: START+13F2↑j
                move.w  #$FFFF,(a1)
                tst.b   (IO_mfp_GPIP).w
                cmpi.w  #$FFFF,(a1)
                bne.s   loc_FA14BC
                moveq   #(RAM_BASE+2),d2

loc_FA1482:                             ; CODE XREF: START+142A↓j
                movea.l d2,a2
                cmpi.l  #RAM_2kb,d2
                bge.s   loc_FA1492
                adda.l  #RAM_2kb,a2

loc_FA1492:                             ; CODE XREF: START+1412↑j
                cmpa.l  a1,a2
                beq.s   loc_FA149A
                tst.w   (a2)
                bne.s   loc_FA14BC

loc_FA149A:                             ; CODE XREF: START+141C↑j
                rol.l   #1,d2
                cmpi.l  #RAM_END_1MB,d2
                bne.s   loc_FA1482
                clr.w   (a1)
                tst.b   (IO_mfp_GPIP).w
                tst.w   (a1)
                bne.s   loc_FA14BC
                rol.l   #1,d1
                cmpi.l  #RAM_END_1MB,d1
                bne.s   loc_FA1462
                bra     TEST_42_SRAM_WORDS_MIRRORED
; ---------------------------------------------------------------------------

loc_FA14BC:                             ; CODE XREF: START+13DC↑j
                                        ; START+1406↑j ...
                move.w  #LED_4_DOT_1,(IO_DIAG_LED_1).w ; FF U8 => DX2
                bclr    #DIAG_LED_BITS_YELLOW,(IO_DIAG_LED).w ; Bit 6: 0:yellow LED on, 1:yellow LED off
                btst    #DIAG_DIPSW_STOP_ON_ERROR,(IO_DIAG_DIPSW).w ; DIP Switches, #0=0:Function button pressed, #1=1:enable measurement mode, #5=1:sound check enabled, #6=1:stop at test failure

endless_loop_18:                        ; CODE XREF: START:endless_loop_18↓j
                bne.s   endless_loop_18
                move.w  #COUNTER_DELAY_1s,d0 ; 1s delay
                subq.w  #1,d0

loc_FA14D6:                             ; CODE XREF: START+146E↓j
                move.l  #COUNTER_DELAY_250ms,d1 ; 0.25s delay

loc_FA14DC:                             ; CODE XREF: START:loc_FA14E4↓j
                subq.l  #1,d1
                nop
                bra     *+4
; ---------------------------------------------------------------------------

loc_FA14E4:                             ; CODE XREF: START+1468↑j
                bne.s   loc_FA14DC
                dbf     d0,loc_FA14D6
                move.w  #LED___,(IO_DIAG_LED_1).w ; FF U8 => DX2
                move.w  #COUNTER_DELAY_150ms,d0 ; 0.15s delay
                subq.w  #1,d0

loc_FA14F6:                             ; CODE XREF: START+148E↓j
                move.l  #COUNTER_DELAY_250ms,d1 ; 0.25s delay

loc_FA14FC:                             ; CODE XREF: START:loc_FA1504↓j
                subq.l  #1,d1
                nop
                bra     *+4
; ---------------------------------------------------------------------------

loc_FA1504:                             ; CODE XREF: START+1488↑j
                bne.s   loc_FA14FC
                dbf     d0,loc_FA14F6
                move.l  a1,d0
                swap    d0
                asr.w   #8,d0
                bsr     LED_show_hex_byte_D0
                move.w  #COUNTER_DELAY_500ms,d0 ; 0.5s delay
                subq.w  #1,d0

loc_FA151A:                             ; CODE XREF: START+14B2↓j
                move.l  #COUNTER_DELAY_250ms,d1 ; 0.25s delay

loc_FA1520:                             ; CODE XREF: START:loc_FA1528↓j
                subq.l  #1,d1
                nop
                bra     *+4
; ---------------------------------------------------------------------------

loc_FA1528:                             ; CODE XREF: START+14AC↑j
                bne.s   loc_FA1520
                dbf     d0,loc_FA151A
                move.w  #LED___,(IO_DIAG_LED_1).w ; FF U8 => DX2
                move.w  #COUNTER_DELAY_150ms,d0 ; 0.15s delay
                subq.w  #1,d0

loc_FA153A:                             ; CODE XREF: START+14D2↓j
                move.l  #COUNTER_DELAY_250ms,d1 ; 0.25s delay

loc_FA1540:                             ; CODE XREF: START:loc_FA1548↓j
                subq.l  #1,d1
                nop
                bra     *+4
; ---------------------------------------------------------------------------

loc_FA1548:                             ; CODE XREF: START+14CC↑j
                bne.s   loc_FA1540
                dbf     d0,loc_FA153A
                move.l  a1,d0
                swap    d0
                bsr     LED_show_hex_byte_D0
                move.w  #COUNTER_DELAY_500ms,d0 ; 0.5s delay
                subq.w  #1,d0

loc_FA155C:                             ; CODE XREF: START+14F4↓j
                move.l  #COUNTER_DELAY_250ms,d1 ; 0.25s delay

loc_FA1562:                             ; CODE XREF: START:loc_FA156A↓j
                subq.l  #1,d1
                nop
                bra     *+4
; ---------------------------------------------------------------------------

loc_FA156A:                             ; CODE XREF: START+14EE↑j
                bne.s   loc_FA1562
                dbf     d0,loc_FA155C
                move.w  #LED___,(IO_DIAG_LED_1).w ; FF U8 => DX2
                move.w  #COUNTER_DELAY_150ms,d0 ; 0.15s delay
                subq.w  #1,d0

loc_FA157C:                             ; CODE XREF: START+1514↓j
                move.l  #COUNTER_DELAY_250ms,d1 ; 0.25s delay

loc_FA1582:                             ; CODE XREF: START:loc_FA158A↓j
                subq.l  #1,d1
                nop
                bra     *+4
; ---------------------------------------------------------------------------

loc_FA158A:                             ; CODE XREF: START+150E↑j
                bne.s   loc_FA1582
                dbf     d0,loc_FA157C
                move.l  a1,d0
                asr.w   #8,d0
                bsr     LED_show_hex_byte_D0
                move.w  #COUNTER_DELAY_500ms,d0 ; 0.5s delay
                subq.w  #1,d0

loc_FA159E:                             ; CODE XREF: START+1536↓j
                move.l  #COUNTER_DELAY_250ms,d1 ; 0.25s delay

loc_FA15A4:                             ; CODE XREF: START:loc_FA15AC↓j
                subq.l  #1,d1
                nop
                bra     *+4
; ---------------------------------------------------------------------------

loc_FA15AC:                             ; CODE XREF: START+1530↑j
                bne.s   loc_FA15A4
                dbf     d0,loc_FA159E
                move.w  #LED___,(IO_DIAG_LED_1).w ; FF U8 => DX2
                move.w  #COUNTER_DELAY_150ms,d0 ; 0.15s delay
                subq.w  #1,d0

loc_FA15BE:                             ; CODE XREF: START+1556↓j
                move.l  #COUNTER_DELAY_250ms,d1 ; 0.25s delay

loc_FA15C4:                             ; CODE XREF: START:loc_FA15CC↓j
                subq.l  #1,d1
                nop
                bra     *+4
; ---------------------------------------------------------------------------

loc_FA15CC:                             ; CODE XREF: START+1550↑j
                bne.s   loc_FA15C4
                dbf     d0,loc_FA15BE
                move.l  a1,d0
                bsr     LED_show_hex_byte_D0
                move.w  #COUNTER_DELAY_500ms,d0 ; 0.5s delay
                subq.w  #1,d0

loc_FA15DE:                             ; CODE XREF: START+1576↓j
                move.l  #COUNTER_DELAY_250ms,d1 ; 0.25s delay

loc_FA15E4:                             ; CODE XREF: START:loc_FA15EC↓j
                subq.l  #1,d1
                nop
                bra     *+4
; ---------------------------------------------------------------------------

loc_FA15EC:                             ; CODE XREF: START+1570↑j
                bne.s   loc_FA15E4
                dbf     d0,loc_FA15DE
                move.w  #LED_eq__,(IO_DIAG_LED_1).w ; FF U8 => DX2
                move.w  #COUNTER_DELAY_500ms,d0 ; 0.5s delay
                subq.w  #1,d0

loc_FA15FE:                             ; CODE XREF: START+1596↓j
                move.l  #COUNTER_DELAY_250ms,d1 ; 0.25s delay

loc_FA1604:                             ; CODE XREF: START:loc_FA160C↓j
                subq.l  #1,d1
                nop
                bra     *+4
; ---------------------------------------------------------------------------

loc_FA160C:                             ; CODE XREF: START+1590↑j
                bne.s   loc_FA1604
                dbf     d0,loc_FA15FE
                move.l  a2,d0
                swap    d0
                asr.w   #8,d0
                bsr     LED_show_hex_byte_D0
                move.w  #COUNTER_DELAY_500ms,d0 ; 0.5s delay
                subq.w  #1,d0

loc_FA1622:                             ; CODE XREF: START+15BA↓j
                move.l  #COUNTER_DELAY_250ms,d1 ; 0.25s delay

loc_FA1628:                             ; CODE XREF: START:loc_FA1630↓j
                subq.l  #1,d1
                nop
                bra     *+4
; ---------------------------------------------------------------------------

loc_FA1630:                             ; CODE XREF: START+15B4↑j
                bne.s   loc_FA1628
                dbf     d0,loc_FA1622
                move.w  #LED___,(IO_DIAG_LED_1).w ; FF U8 => DX2
                move.w  #COUNTER_DELAY_150ms,d0 ; 0.15s delay
                subq.w  #1,d0

loc_FA1642:                             ; CODE XREF: START+15DA↓j
                move.l  #COUNTER_DELAY_250ms,d1 ; 0.25s delay

loc_FA1648:                             ; CODE XREF: START:loc_FA1650↓j
                subq.l  #1,d1
                nop
                bra     *+4
; ---------------------------------------------------------------------------

loc_FA1650:                             ; CODE XREF: START+15D4↑j
                bne.s   loc_FA1648
                dbf     d0,loc_FA1642
                move.l  a2,d0
                swap    d0
                bsr     LED_show_hex_byte_D0
                move.w  #COUNTER_DELAY_500ms,d0 ; 0.5s delay
                subq.w  #1,d0

loc_FA1664:                             ; CODE XREF: START+15FC↓j
                move.l  #COUNTER_DELAY_250ms,d1 ; 0.25s delay

loc_FA166A:                             ; CODE XREF: START:loc_FA1672↓j
                subq.l  #1,d1
                nop
                bra     *+4
; ---------------------------------------------------------------------------

loc_FA1672:                             ; CODE XREF: START+15F6↑j
                bne.s   loc_FA166A
                dbf     d0,loc_FA1664
                move.w  #LED___,(IO_DIAG_LED_1).w ; FF U8 => DX2
                move.w  #COUNTER_DELAY_150ms,d0 ; 0.15s delay
                subq.w  #1,d0

loc_FA1684:                             ; CODE XREF: START+161C↓j
                move.l  #COUNTER_DELAY_250ms,d1 ; 0.25s delay

loc_FA168A:                             ; CODE XREF: START:loc_FA1692↓j
                subq.l  #1,d1
                nop
                bra     *+4
; ---------------------------------------------------------------------------

loc_FA1692:                             ; CODE XREF: START+1616↑j
                bne.s   loc_FA168A
                dbf     d0,loc_FA1684
                move.l  a2,d0
                asr.w   #8,d0
                bsr     LED_show_hex_byte_D0
                move.w  #COUNTER_DELAY_500ms,d0 ; 0.5s delay
                subq.w  #1,d0

loc_FA16A6:                             ; CODE XREF: START+163E↓j
                move.l  #COUNTER_DELAY_250ms,d1 ; 0.25s delay

loc_FA16AC:                             ; CODE XREF: START:loc_FA16B4↓j
                subq.l  #1,d1
                nop
                bra     *+4
; ---------------------------------------------------------------------------

loc_FA16B4:                             ; CODE XREF: START+1638↑j
                bne.s   loc_FA16AC
                dbf     d0,loc_FA16A6
                move.w  #LED___,(IO_DIAG_LED_1).w ; FF U8 => DX2
                move.w  #COUNTER_DELAY_150ms,d0 ; 0.15s delay
                subq.w  #1,d0

loc_FA16C6:                             ; CODE XREF: START+165E↓j
                move.l  #COUNTER_DELAY_250ms,d1 ; 0.25s delay

loc_FA16CC:                             ; CODE XREF: START:loc_FA16D4↓j
                subq.l  #1,d1
                nop
                bra     *+4
; ---------------------------------------------------------------------------

loc_FA16D4:                             ; CODE XREF: START+1658↑j
                bne.s   loc_FA16CC
                dbf     d0,loc_FA16C6
                move.l  a2,d0
                bsr     LED_show_hex_byte_D0
                move.w  #COUNTER_DELAY_500ms,d0 ; 0.5s delay
                subq.w  #1,d0

loc_FA16E6:                             ; CODE XREF: START+167E↓j
                move.l  #COUNTER_DELAY_250ms,d1 ; 0.25s delay

loc_FA16EC:                             ; CODE XREF: START:loc_FA16F4↓j
                subq.l  #1,d1
                nop
                bra     *+4
; ---------------------------------------------------------------------------

loc_FA16F4:                             ; CODE XREF: START+1678↑j
                bne.s   loc_FA16EC
                dbf     d0,loc_FA16E6
                move.w  #LED___,(IO_DIAG_LED_1).w ; FF U8 => DX2
                move.w  #COUNTER_DELAY_500ms,d0 ; 0.5s delay
                subq.w  #1,d0

loc_FA1706:                             ; CODE XREF: START+169E↓j
                move.l  #COUNTER_DELAY_250ms,d1 ; 0.25s delay

loc_FA170C:                             ; CODE XREF: START:loc_FA1714↓j
                subq.l  #1,d1
                nop
                bra     *+4
; ---------------------------------------------------------------------------

loc_FA1714:                             ; CODE XREF: START+1698↑j
                bne.s   loc_FA170C
                dbf     d0,loc_FA1706
                btst    #DIAG_DIPSW_FUNCTION_DIP8,(IO_DIAG_DIPSW).w ; DIP Switches, #0=0:Function button pressed, #1=1:enable measurement mode, #5=1:sound check enabled, #6=1:stop at test failure
                bne     loc_FA14BC

loc_FA1724:                             ; CODE XREF: START+16B6↓j
                move.w  #BUTTON_DEBOUNCE_COUNTER,d0 ; counter for debouncing a button press

loc_FA1728:                             ; CODE XREF: START+16BA↓j
                btst    #DIAG_DIPSW_FUNCTION_DIP8,(IO_DIAG_DIPSW).w ; DIP Switches, #0=0:Function button pressed, #1=1:enable measurement mode, #5=1:sound check enabled, #6=1:stop at test failure
                beq.s   loc_FA1724
                subq.w  #1,d0
                bne.s   loc_FA1728

TEST_42_SRAM_WORDS_MIRRORED:            ; CODE XREF: START+1440↑j
                move.w  #LED_42,(IO_DIAG_LED_1).w ; FF U8 => DX2
                move.b  #$42,(DIAG_SRAM_TEST_NUMBER).l ; 'B'
                eori.b  #DIAG_LED_MASK_YELLOW,(IO_DIAG_LED).w ; Bit 6: 0:yellow LED on, 1:yellow LED off
                movea.l #RAM_2kb,a0
                movea.l #RAM_END_1MB,a1

loc_FA1754:                             ; CODE XREF: START+171C↓j
                move.w  #$FFFF,(a0)
                tst.b   (IO_mfp_GPIP).w
                cmpi.w  #$FFFF,(a0)
                bne.s   loc_FA179A
                move.w  #$55AA,(a0)
                tst.b   (IO_mfp_GPIP).w
                cmpi.w  #$55AA,(a0)
                bne.s   loc_FA179A
                move.w  #$AA55,(a0)
                tst.b   (IO_mfp_GPIP).w
                cmpi.w  #$AA55,(a0)
                bne.s   loc_FA179A
                clr.w   (a0)
                tst.b   (IO_mfp_GPIP).w
                tst.w   (a0)+
                bne.s   loc_FA179A
                move.w  a0,d0
                bne.s   loc_FA1792
                eori.b  #DIAG_LED_MASK_YELLOW,(IO_DIAG_LED).w ; Bit 6: 0:yellow LED on, 1:yellow LED off

loc_FA1792:                             ; CODE XREF: START+1712↑j
                cmpa.l  a0,a1
                bne.s   loc_FA1754
                clr.w   d0
                bra.s   loc_FA179C
; ---------------------------------------------------------------------------

loc_FA179A:                             ; CODE XREF: START+16E8↑j
                                        ; START+16F6↑j ...
                moveq   #-1,d0

loc_FA179C:                             ; CODE XREF: START+1720↑j
                beq.s   TEST_44_SRAM_WRITE_DELAY_TEST

loc_FA179E:                             ; CODE XREF: START+1740↓j
                move.w  #LED_4_DOT_2,(IO_DIAG_LED_1).w ; FF U8 => DX2
                bclr    #DIAG_LED_BITS_YELLOW,(IO_DIAG_LED).w ; Bit 6: 0:yellow LED on, 1:yellow LED off
                btst    #DIAG_DIPSW_STOP_ON_ERROR,(IO_DIAG_DIPSW).w ; DIP Switches, #0=0:Function button pressed, #1=1:enable measurement mode, #5=1:sound check enabled, #6=1:stop at test failure

endless_loop_19:                        ; CODE XREF: START:endless_loop_19↓j
                bne.s   endless_loop_19
                btst    #DIAG_DIPSW_FUNCTION_DIP8,(IO_DIAG_DIPSW).w ; DIP Switches, #0=0:Function button pressed, #1=1:enable measurement mode, #5=1:sound check enabled, #6=1:stop at test failure
                bne.s   loc_FA179E

loc_FA17BA:                             ; CODE XREF: START+174C↓j
                move.w  #BUTTON_DEBOUNCE_COUNTER,d0 ; counter for debouncing a button press

loc_FA17BE:                             ; CODE XREF: START+1750↓j
                btst    #DIAG_DIPSW_FUNCTION_DIP8,(IO_DIAG_DIPSW).w ; DIP Switches, #0=0:Function button pressed, #1=1:enable measurement mode, #5=1:sound check enabled, #6=1:stop at test failure
                beq.s   loc_FA17BA
                subq.w  #1,d0
                bne.s   loc_FA17BE

TEST_44_SRAM_WRITE_DELAY_TEST:          ; CODE XREF: START:loc_FA179C↑j
                move.w  #LED_44,(IO_DIAG_LED_1).w ; FF U8 => DX2
                move.b  #$44,(DIAG_SRAM_TEST_NUMBER).l ; 'D'
                eori.b  #DIAG_LED_MASK_YELLOW,(IO_DIAG_LED).w ; Bit 6: 0:yellow LED on, 1:yellow LED off
                movea.l #RAM_2kb,a0
                movea.l #RAM_END_1MB,a1
                clr.w   d0

loc_FA17EC:                             ; CODE XREF: START+177A↓j
                move.w  d0,(a0)+
                addq.w  #3,d0
                cmpa.l  a0,a1
                bne.s   loc_FA17EC
                move.w  #4,d3

loc_FA17F8:                             ; CODE XREF: START+17A0↓j
                move.w  #COUNTER_DELAY_1s,d0 ; 1s delay
                subq.w  #1,d0

loc_FA17FE:                             ; CODE XREF: START+1796↓j
                move.l  #COUNTER_DELAY_250ms,d1 ; 0.25s delay

loc_FA1804:                             ; CODE XREF: START:loc_FA180C↓j
                subq.l  #1,d1
                nop
                bra     *+4
; ---------------------------------------------------------------------------

loc_FA180C:                             ; CODE XREF: START+1790↑j
                bne.s   loc_FA1804
                dbf     d0,loc_FA17FE
                eori.b  #DIAG_LED_MASK_YELLOW,(IO_DIAG_LED).w ; Bit 6: 0:yellow LED on, 1:yellow LED off
                dbf     d3,loc_FA17F8
                movea.l #RAM_2kb,a0
                movea.l #RAM_END_1MB,a1
                clr.w   d0

loc_FA182A:                             ; CODE XREF: START+17BA↓j
                cmp.w   (a0)+,d0
                bne.s   loc_FA1838
                addq.w  #3,d0
                cmpa.l  a0,a1
                bne.s   loc_FA182A
                bra     TEST_45_SRAM_TESTPATTERN_VRAM_5AA55AA5
; ---------------------------------------------------------------------------

loc_FA1838:                             ; CODE XREF: START+17B4↑j
                                        ; START+17DA↓j
                move.w  #LED_4_DOT_4,(IO_DIAG_LED_1).w ; FF U8 => DX2
                bclr    #DIAG_LED_BITS_YELLOW,(IO_DIAG_LED).w ; Bit 6: 0:yellow LED on, 1:yellow LED off
                btst    #DIAG_DIPSW_STOP_ON_ERROR,(IO_DIAG_DIPSW).w ; DIP Switches, #0=0:Function button pressed, #1=1:enable measurement mode, #5=1:sound check enabled, #6=1:stop at test failure

endless_loop_20:                        ; CODE XREF: START:endless_loop_20↓j
                bne.s   endless_loop_20
                btst    #DIAG_DIPSW_FUNCTION_DIP8,(IO_DIAG_DIPSW).w ; DIP Switches, #0=0:Function button pressed, #1=1:enable measurement mode, #5=1:sound check enabled, #6=1:stop at test failure
                bne.s   loc_FA1838

loc_FA1854:                             ; CODE XREF: START+17E6↓j
                move.w  #BUTTON_DEBOUNCE_COUNTER,d0 ; counter for debouncing a button press

loc_FA1858:                             ; CODE XREF: START+17EA↓j
                btst    #DIAG_DIPSW_FUNCTION_DIP8,(IO_DIAG_DIPSW).w ; DIP Switches, #0=0:Function button pressed, #1=1:enable measurement mode, #5=1:sound check enabled, #6=1:stop at test failure
                beq.s   loc_FA1854
                subq.w  #1,d0
                bne.s   loc_FA1858

TEST_45_SRAM_TESTPATTERN_VRAM_5AA55AA5: ; CODE XREF: START+17BC↑j
                move.w  #LED_45,(IO_DIAG_LED_1).w ; FF U8 => DX2
                move.b  #$45,(DIAG_SRAM_TEST_NUMBER).l ; 'E'
                eori.b  #DIAG_LED_MASK_YELLOW,(IO_DIAG_LED).w ; Bit 6: 0:yellow LED on, 1:yellow LED off
                lea     (RAM_video_buffer).l,a0
                move.l  #$5AA55AA5,d1
                move.l  d1,d2
                move.l  d1,d3
                move.l  d1,d4
                move.w  #SCREEN_SIZE_IN_16BYTES,d0

loc_FA188E:                             ; CODE XREF: START+181E↓j
                move.l  d1,(a0)+
                move.l  d2,(a0)+
                move.l  d3,(a0)+
                move.l  d4,(a0)+
                dbf     d0,loc_FA188E
                movea.l #RAM_video_buffer_end,a0
                movea.l #RAM_END_1MB,a1

loc_FA18A6:                             ; CODE XREF: START+186E↓j
                move.w  #$FFFF,(a0)
                tst.b   (IO_mfp_GPIP).w
                cmpi.w  #$FFFF,(a0)
                bne.s   loc_FA18EC
                move.w  #$55AA,(a0)
                tst.b   (IO_mfp_GPIP).w
                cmpi.w  #$55AA,(a0)
                bne.s   loc_FA18EC
                move.w  #$AA55,(a0)
                tst.b   (IO_mfp_GPIP).w
                cmpi.w  #$AA55,(a0)
                bne.s   loc_FA18EC
                clr.w   (a0)
                tst.b   (IO_mfp_GPIP).w
                tst.w   (a0)+
                bne.s   loc_FA18EC
                move.w  a0,d0
                bne.s   loc_FA18E4
                eori.b  #DIAG_LED_MASK_YELLOW,(IO_DIAG_LED).w ; Bit 6: 0:yellow LED on, 1:yellow LED off

loc_FA18E4:                             ; CODE XREF: START+1864↑j
                cmpa.l  a0,a1
                bne.s   loc_FA18A6
                clr.w   d0
                bra.s   loc_FA18EE
; ---------------------------------------------------------------------------

loc_FA18EC:                             ; CODE XREF: START+183A↑j
                                        ; START+1848↑j ...
                moveq   #-1,d0

loc_FA18EE:                             ; CODE XREF: START+1872↑j
                beq.s   TEST_46_SRAM_TESTPATTERN_VRAM_FFFFFFFF

loc_FA18F0:                             ; CODE XREF: START+1892↓j
                move.w  #LED_4_DOT_5,(IO_DIAG_LED_1).w ; FF U8 => DX2
                bclr    #DIAG_LED_BITS_YELLOW,(IO_DIAG_LED).w ; Bit 6: 0:yellow LED on, 1:yellow LED off
                btst    #DIAG_DIPSW_STOP_ON_ERROR,(IO_DIAG_DIPSW).w ; DIP Switches, #0=0:Function button pressed, #1=1:enable measurement mode, #5=1:sound check enabled, #6=1:stop at test failure

endless_loop_21:                        ; CODE XREF: START:endless_loop_21↓j
                bne.s   endless_loop_21
                btst    #DIAG_DIPSW_FUNCTION_DIP8,(IO_DIAG_DIPSW).w ; DIP Switches, #0=0:Function button pressed, #1=1:enable measurement mode, #5=1:sound check enabled, #6=1:stop at test failure
                bne.s   loc_FA18F0

loc_FA190C:                             ; CODE XREF: START+189E↓j
                move.w  #BUTTON_DEBOUNCE_COUNTER,d0 ; counter for debouncing a button press

loc_FA1910:                             ; CODE XREF: START+18A2↓j
                btst    #DIAG_DIPSW_FUNCTION_DIP8,(IO_DIAG_DIPSW).w ; DIP Switches, #0=0:Function button pressed, #1=1:enable measurement mode, #5=1:sound check enabled, #6=1:stop at test failure
                beq.s   loc_FA190C
                subq.w  #1,d0
                bne.s   loc_FA1910

TEST_46_SRAM_TESTPATTERN_VRAM_FFFFFFFF: ; CODE XREF: START:loc_FA18EE↑j
                move.w  #LED_46,(IO_DIAG_LED_1).w ; FF U8 => DX2
                move.b  #$46,(DIAG_SRAM_TEST_NUMBER).l ; 'F'
                eori.b  #DIAG_LED_MASK_YELLOW,(IO_DIAG_LED).w ; Bit 6: 0:yellow LED on, 1:yellow LED off
                lea     (RAM_video_buffer).l,a0
                moveq   #$FFFFFFFF,d1
                move.l  d1,d2
                move.l  d1,d3
                move.l  d1,d4
                move.w  #SCREEN_SIZE_IN_16BYTES,d0

loc_FA1942:                             ; CODE XREF: START+18D2↓j
                move.l  d1,(a0)+
                move.l  d2,(a0)+
                move.l  d3,(a0)+
                move.l  d4,(a0)+
                dbf     d0,loc_FA1942
                movea.l #RAM_video_buffer_end,a0
                movea.l #RAM_END_1MB,a1

loc_FA195A:                             ; CODE XREF: START+1922↓j
                move.w  #$FFFF,(a0)
                tst.b   (IO_mfp_GPIP).w
                cmpi.w  #$FFFF,(a0)
                bne.s   loc_FA19A0
                move.w  #$55AA,(a0)
                tst.b   (IO_mfp_GPIP).w
                cmpi.w  #$55AA,(a0)
                bne.s   loc_FA19A0
                move.w  #$AA55,(a0)
                tst.b   (IO_mfp_GPIP).w
                cmpi.w  #$AA55,(a0)
                bne.s   loc_FA19A0
                clr.w   (a0)
                tst.b   (IO_mfp_GPIP).w
                tst.w   (a0)+
                bne.s   loc_FA19A0
                move.w  a0,d0
                bne.s   loc_FA1998
                eori.b  #DIAG_LED_MASK_YELLOW,(IO_DIAG_LED).w ; Bit 6: 0:yellow LED on, 1:yellow LED off

loc_FA1998:                             ; CODE XREF: START+1918↑j
                cmpa.l  a0,a1
                bne.s   loc_FA195A
                clr.w   d0
                bra.s   loc_FA19A2
; ---------------------------------------------------------------------------

loc_FA19A0:                             ; CODE XREF: START+18EE↑j
                                        ; START+18FC↑j ...
                moveq   #-1,d0

loc_FA19A2:                             ; CODE XREF: START+1926↑j
                beq.s   TEST_47_REFRESH_CONTROLLER_ON

loc_FA19A4:                             ; CODE XREF: START+1946↓j
                move.w  #LED_4_DOT_6,(IO_DIAG_LED_1).w ; FF U8 => DX2
                bclr    #DIAG_LED_BITS_YELLOW,(IO_DIAG_LED).w ; Bit 6: 0:yellow LED on, 1:yellow LED off
                btst    #DIAG_DIPSW_STOP_ON_ERROR,(IO_DIAG_DIPSW).w ; DIP Switches, #0=0:Function button pressed, #1=1:enable measurement mode, #5=1:sound check enabled, #6=1:stop at test failure

endless_loop_22:                        ; CODE XREF: START:endless_loop_22↓j
                bne.s   endless_loop_22
                btst    #DIAG_DIPSW_FUNCTION_DIP8,(IO_DIAG_DIPSW).w ; DIP Switches, #0=0:Function button pressed, #1=1:enable measurement mode, #5=1:sound check enabled, #6=1:stop at test failure
                bne.s   loc_FA19A4

loc_FA19C0:                             ; CODE XREF: START+1952↓j
                move.w  #BUTTON_DEBOUNCE_COUNTER,d0 ; counter for debouncing a button press

loc_FA19C4:                             ; CODE XREF: START+1956↓j
                btst    #DIAG_DIPSW_FUNCTION_DIP8,(IO_DIAG_DIPSW).w ; DIP Switches, #0=0:Function button pressed, #1=1:enable measurement mode, #5=1:sound check enabled, #6=1:stop at test failure
                beq.s   loc_FA19C0
                subq.w  #1,d0
                bne.s   loc_FA19C4

TEST_47_REFRESH_CONTROLLER_ON:          ; CODE XREF: START:loc_FA19A2↑j
                move.w  #LED_47,(IO_DIAG_LED_1).w ; FF U8 => DX2
                move.b  #$47,(DIAG_SRAM_TEST_NUMBER).l ; 'G'
                eori.b  #DIAG_LED_MASK_YELLOW,(IO_DIAG_LED).w ; Bit 6: 0:yellow LED on, 1:yellow LED off
                move.b  #$10,(IO_video_lcd_controller).w ; 0x10: REFRESH_MACHINE output (turns on refresh controller)
                move.w  #COUNTER_DELAY_100ms,d0 ; 0.1s delay
                subq.w  #1,d0

loc_FA19F0:                             ; CODE XREF: START+1988↓j
                move.l  #COUNTER_DELAY_250ms,d1 ; 0.25s delay

loc_FA19F6:                             ; CODE XREF: START:loc_FA19FE↓j
                subq.l  #1,d1
                nop
                bra     *+4
; ---------------------------------------------------------------------------

loc_FA19FE:                             ; CODE XREF: START+1982↑j
                bne.s   loc_FA19F6
                dbf     d0,loc_FA19F0

TEST_48_SRAM_TESTPATTERN:               ; FF U8 => DX2
                move.w  #LED_48,(IO_DIAG_LED_1).w
                move.b  #$48,(DIAG_SRAM_TEST_NUMBER).l ; 'H'
                eori.b  #DIAG_LED_MASK_YELLOW,(IO_DIAG_LED).w ; Bit 6: 0:yellow LED on, 1:yellow LED off
                movea.l #RAM_2kb,a0
                movea.l #RAM_END_1MB,a1

loc_FA1A24:                             ; CODE XREF: START+19EC↓j
                move.w  #$FFFF,(a0)
                tst.b   (IO_mfp_GPIP).w
                cmpi.w  #$FFFF,(a0)
                bne.s   loc_FA1A6A
                move.w  #$55AA,(a0)
                tst.b   (IO_mfp_GPIP).w
                cmpi.w  #$55AA,(a0)
                bne.s   loc_FA1A6A
                move.w  #$AA55,(a0)
                tst.b   (IO_mfp_GPIP).w
                cmpi.w  #$AA55,(a0)
                bne.s   loc_FA1A6A
                clr.w   (a0)
                tst.b   (IO_mfp_GPIP).w
                tst.w   (a0)+
                bne.s   loc_FA1A6A
                move.w  a0,d0
                bne.s   loc_FA1A62
                eori.b  #DIAG_LED_MASK_YELLOW,(IO_DIAG_LED).w ; Bit 6: 0:yellow LED on, 1:yellow LED off

loc_FA1A62:                             ; CODE XREF: START+19E2↑j
                cmpa.l  a0,a1
                bne.s   loc_FA1A24
                clr.w   d0
                bra.s   loc_FA1A6C
; ---------------------------------------------------------------------------

loc_FA1A6A:                             ; CODE XREF: START+19B8↑j
                                        ; START+19C6↑j ...
                moveq   #-1,d0

loc_FA1A6C:                             ; CODE XREF: START+19F0↑j
                beq.s   TEST_49_SHADOW_VIDEO_ON

loc_FA1A6E:                             ; CODE XREF: START+1A10↓j
                move.w  #LED_4_DOT_8,(IO_DIAG_LED_1).w ; FF U8 => DX2
                bclr    #DIAG_LED_BITS_YELLOW,(IO_DIAG_LED).w ; Bit 6: 0:yellow LED on, 1:yellow LED off
                btst    #DIAG_DIPSW_STOP_ON_ERROR,(IO_DIAG_DIPSW).w ; DIP Switches, #0=0:Function button pressed, #1=1:enable measurement mode, #5=1:sound check enabled, #6=1:stop at test failure

endless_loop_23:                        ; CODE XREF: START:endless_loop_23↓j
                bne.s   endless_loop_23
                btst    #DIAG_DIPSW_FUNCTION_DIP8,(IO_DIAG_DIPSW).w ; DIP Switches, #0=0:Function button pressed, #1=1:enable measurement mode, #5=1:sound check enabled, #6=1:stop at test failure
                bne.s   loc_FA1A6E

loc_FA1A8A:                             ; CODE XREF: START+1A1C↓j
                move.w  #BUTTON_DEBOUNCE_COUNTER,d0 ; counter for debouncing a button press

loc_FA1A8E:                             ; CODE XREF: START+1A20↓j
                btst    #DIAG_DIPSW_FUNCTION_DIP8,(IO_DIAG_DIPSW).w ; DIP Switches, #0=0:Function button pressed, #1=1:enable measurement mode, #5=1:sound check enabled, #6=1:stop at test failure
                beq.s   loc_FA1A8A
                subq.w  #1,d0
                bne.s   loc_FA1A8E

TEST_49_SHADOW_VIDEO_ON:                ; CODE XREF: START:loc_FA1A6C↑j
                move.w  #LED_49,(IO_DIAG_LED_1).w ; FF U8 => DX2
                move.b  #$49,(DIAG_SRAM_TEST_NUMBER).l ; 'I'
                eori.b  #DIAG_LED_MASK_YELLOW,(IO_DIAG_LED).w ; Bit 6: 0:yellow LED on, 1:yellow LED off
                move.b  #1,(IO_shifter_shadow_video).w ; 1:enable shadow controller video transfer, 0:disable
                move.w  #COUNTER_DELAY_100ms,d0 ; 0.1s delay
                subq.w  #1,d0

loc_FA1ABA:                             ; CODE XREF: START+1A52↓j
                move.l  #COUNTER_DELAY_250ms,d1 ; 0.25s delay

loc_FA1AC0:                             ; CODE XREF: START:loc_FA1AC8↓j
                subq.l  #1,d1
                nop
                bra     *+4
; ---------------------------------------------------------------------------

loc_FA1AC8:                             ; CODE XREF: START+1A4C↑j
                bne.s   loc_FA1AC0
                dbf     d0,loc_FA1ABA

TEST_4A_SRAM_WRITE_DELAY_TEST:          ; FF U8 => DX2
                move.w  #LED_4A,(IO_DIAG_LED_1).w
                move.b  #$4A,(DIAG_SRAM_TEST_NUMBER).l ; 'J'
                eori.b  #DIAG_LED_MASK_YELLOW,(IO_DIAG_LED).w ; Bit 6: 0:yellow LED on, 1:yellow LED off
                movea.l #RAM_2kb,a0
                movea.l #RAM_END_1MB,a1
                clr.w   d0

loc_FA1AF0:                             ; CODE XREF: START+1A7E↓j
                move.w  d0,(a0)+
                addq.w  #3,d0
                cmpa.l  a0,a1
                bne.s   loc_FA1AF0
                move.w  #4,d3

loc_FA1AFC:                             ; CODE XREF: START+1AA4↓j
                move.w  #COUNTER_DELAY_1s,d0 ; 1s delay
                subq.w  #1,d0

loc_FA1B02:                             ; CODE XREF: START+1A9A↓j
                move.l  #COUNTER_DELAY_250ms,d1 ; 0.25s delay

loc_FA1B08:                             ; CODE XREF: START:loc_FA1B10↓j
                subq.l  #1,d1
                nop
                bra     *+4
; ---------------------------------------------------------------------------

loc_FA1B10:                             ; CODE XREF: START+1A94↑j
                bne.s   loc_FA1B08
                dbf     d0,loc_FA1B02
                eori.b  #DIAG_LED_MASK_YELLOW,(IO_DIAG_LED).w ; Bit 6: 0:yellow LED on, 1:yellow LED off
                dbf     d3,loc_FA1AFC
                movea.l #RAM_2kb,a0
                movea.l #RAM_END_1MB,a1
                clr.w   d0

loc_FA1B2E:                             ; CODE XREF: START+1ABE↓j
                cmp.w   (a0)+,d0
                bne.s   loc_FA1B3C
                addq.w  #3,d0
                cmpa.l  a0,a1
                bne.s   loc_FA1B2E
                bra     TEST_4b_SHADOW_VIDEO_OFF
; ---------------------------------------------------------------------------

loc_FA1B3C:                             ; CODE XREF: START+1AB8↑j
                                        ; START+1ADE↓j
                move.w  #LED_4_DOT_A,(IO_DIAG_LED_1).w ; FF U8 => DX2
                bclr    #DIAG_LED_BITS_YELLOW,(IO_DIAG_LED).w ; Bit 6: 0:yellow LED on, 1:yellow LED off
                btst    #DIAG_DIPSW_STOP_ON_ERROR,(IO_DIAG_DIPSW).w ; DIP Switches, #0=0:Function button pressed, #1=1:enable measurement mode, #5=1:sound check enabled, #6=1:stop at test failure

endless_loop_24:                        ; CODE XREF: START:endless_loop_24↓j
                bne.s   endless_loop_24
                btst    #DIAG_DIPSW_FUNCTION_DIP8,(IO_DIAG_DIPSW).w ; DIP Switches, #0=0:Function button pressed, #1=1:enable measurement mode, #5=1:sound check enabled, #6=1:stop at test failure
                bne.s   loc_FA1B3C

loc_FA1B58:                             ; CODE XREF: START+1AEA↓j
                move.w  #BUTTON_DEBOUNCE_COUNTER,d0 ; counter for debouncing a button press

loc_FA1B5C:                             ; CODE XREF: START+1AEE↓j
                btst    #DIAG_DIPSW_FUNCTION_DIP8,(IO_DIAG_DIPSW).w ; DIP Switches, #0=0:Function button pressed, #1=1:enable measurement mode, #5=1:sound check enabled, #6=1:stop at test failure
                beq.s   loc_FA1B58
                subq.w  #1,d0
                bne.s   loc_FA1B5C

TEST_4b_SHADOW_VIDEO_OFF:               ; CODE XREF: START+1AC0↑j
                move.w  #LED_4b,(IO_DIAG_LED_1).w ; FF U8 => DX2
                move.b  #$4B,(DIAG_SRAM_TEST_NUMBER).l ; 'K'
                eori.b  #DIAG_LED_MASK_YELLOW,(IO_DIAG_LED).w ; Bit 6: 0:yellow LED on, 1:yellow LED off
                move.b  #0,(IO_shifter_shadow_video).w ; 1:enable shadow controller video transfer, 0:disable
                move.w  #COUNTER_DELAY_100ms,d0 ; 0.1s delay
                subq.w  #1,d0

loc_FA1B88:                             ; CODE XREF: START+1B20↓j
                move.l  #COUNTER_DELAY_250ms,d1 ; 0.25s delay

loc_FA1B8E:                             ; CODE XREF: START:loc_FA1B96↓j
                subq.l  #1,d1
                nop
                bra     *+4
; ---------------------------------------------------------------------------

loc_FA1B96:                             ; CODE XREF: START+1B1A↑j
                bne.s   loc_FA1B8E
                dbf     d0,loc_FA1B88

TEST_4c_REFRESH_CONTROLLER_OFF:         ; FF U8 => DX2
                move.w  #LED_4C,(IO_DIAG_LED_1).w
                move.b  #$4C,(DIAG_SRAM_TEST_NUMBER).l ; 'L'
                eori.b  #DIAG_LED_MASK_YELLOW,(IO_DIAG_LED).w ; Bit 6: 0:yellow LED on, 1:yellow LED off
                move.b  #0,(IO_video_lcd_controller).w ; 0x10: REFRESH_MACHINE output (turns on refresh controller)
                move.w  #COUNTER_DELAY_100ms,d0 ; 0.1s delay
                subq.w  #1,d0

loc_FA1BBC:                             ; CODE XREF: START+1B54↓j
                move.l  #COUNTER_DELAY_250ms,d1 ; 0.25s delay

loc_FA1BC2:                             ; CODE XREF: START:loc_FA1BCA↓j
                subq.l  #1,d1
                nop
                bra     *+4
; ---------------------------------------------------------------------------

loc_FA1BCA:                             ; CODE XREF: START+1B4E↑j
                bne.s   loc_FA1BC2
                dbf     d0,loc_FA1BBC

TEST_60_CHECK_VBL_TRIGGER:              ; FF U8 => DX2
                move.w  #LED_60,(IO_DIAG_LED_1).w
                move.b  #$60,(DIAG_SRAM_TEST_NUMBER).l ; '`'
                eori.b  #DIAG_LED_MASK_YELLOW,(IO_DIAG_LED).w ; Bit 6: 0:yellow LED on, 1:yellow LED off
                clr.w   (DIAG_SRAM_VBL_or_TIMER_A_COUNTER).l
                move.l  #TEST_VBL,(VBL_VECT).w
                move    #$2300,sr       ; allow VBL IRQs
                move.w  #COUNTER_DELAY_200ms,d0 ; 0.2s delay
                subq.w  #1,d0

loc_FA1BFC:                             ; CODE XREF: START+1B94↓j
                move.l  #COUNTER_DELAY_250ms,d1 ; 0.25s delay

loc_FA1C02:                             ; CODE XREF: START:loc_FA1C0A↓j
                subq.l  #1,d1
                nop
                bra     *+4
; ---------------------------------------------------------------------------

loc_FA1C0A:                             ; CODE XREF: START+1B8E↑j
                bne.s   loc_FA1C02
                dbf     d0,loc_FA1BFC
                move    #$2700,sr
                move.w  (DIAG_SRAM_VBL_or_TIMER_A_COUNTER).l,d0
                cmpi.w  #5,d0
                bgt.s   loc_FA1C4C

loc_FA1C20:                             ; CODE XREF: START+1BC2↓j
                move.w  #LED_6_DOT_0,(IO_DIAG_LED_1).w ; FF U8 => DX2
                bclr    #DIAG_LED_BITS_YELLOW,(IO_DIAG_LED).w ; Bit 6: 0:yellow LED on, 1:yellow LED off
                btst    #DIAG_DIPSW_STOP_ON_ERROR,(IO_DIAG_DIPSW).w ; DIP Switches, #0=0:Function button pressed, #1=1:enable measurement mode, #5=1:sound check enabled, #6=1:stop at test failure

endless_loop_25:                        ; CODE XREF: START:endless_loop_25↓j
                bne.s   endless_loop_25
                btst    #DIAG_DIPSW_FUNCTION_DIP8,(IO_DIAG_DIPSW).w ; DIP Switches, #0=0:Function button pressed, #1=1:enable measurement mode, #5=1:sound check enabled, #6=1:stop at test failure
                bne.s   loc_FA1C20

loc_FA1C3C:                             ; CODE XREF: START+1BCE↓j
                move.w  #BUTTON_DEBOUNCE_COUNTER,d0 ; counter for debouncing a button press

loc_FA1C40:                             ; CODE XREF: START+1BD2↓j
                btst    #DIAG_DIPSW_FUNCTION_DIP8,(IO_DIAG_DIPSW).w ; DIP Switches, #0=0:Function button pressed, #1=1:enable measurement mode, #5=1:sound check enabled, #6=1:stop at test failure
                beq.s   loc_FA1C3C
                subq.w  #1,d0
                bne.s   loc_FA1C40

loc_FA1C4C:                             ; CODE XREF: START+1BA6↑j
                move.l  #VBL_EXCEPTION,(VBL_VECT).w
                bra.s   TEST_61_CHECK_HBL_TRIGGER
; End of function START


; =============== S U B R O U T I N E =======================================


proc            TEST_VBL()              ; DATA XREF: START+1B72↑o
                                        ; START+1C06↓o
                addq.w  #1,(DIAG_SRAM_VBL_or_TIMER_A_COUNTER).l
                rte
; End of function TEST_VBL

; ---------------------------------------------------------------------------
; START OF FUNCTION CHUNK FOR START

TEST_61_CHECK_HBL_TRIGGER:              ; CODE XREF: START+1BDC↑j
                move.w  #LED_61,(IO_DIAG_LED_1).w ; FF U8 => DX2
                move.b  #$61,(DIAG_SRAM_TEST_NUMBER).l ; 'a'
                eori.b  #DIAG_LED_MASK_YELLOW,(IO_DIAG_LED).w ; Bit 6: 0:yellow LED on, 1:yellow LED off
                clr.w   (DIAG_SRAM_VBL_or_TIMER_A_COUNTER).l
                clr.w   (DIAG_SRAM_HBL_COUNTER).l
                move.l  #TEST_VBL,(VBL_VECT).w
                move.l  #TEST_HBL,(HBL_VECT).w
                move    #$2100,sr       ; allow HBL,VBL IRQs
                move.w  #COUNTER_DELAY_200ms,d0 ; 0.2s delay
                subq.w  #1,d0

loc_FA1C98:                             ; CODE XREF: START+1C30↓j
                move.l  #COUNTER_DELAY_250ms,d1 ; 0.25s delay

loc_FA1C9E:                             ; CODE XREF: START:loc_FA1CA6↓j
                subq.l  #1,d1
                nop
                bra     *+4
; ---------------------------------------------------------------------------

loc_FA1CA6:                             ; CODE XREF: START+1C2A↑j
                bne.s   loc_FA1C9E
                dbf     d0,loc_FA1C98
                move.w  (DIAG_SRAM_VBL_or_TIMER_A_COUNTER).l,d0
                cmpi.w  #5,d0
                ble.s   loc_FA1CC4
                move.w  (DIAG_SRAM_HBL_COUNTER).l,d0
                cmpi.w  #1000,d0
                bgt.s   loc_FA1CF4

loc_FA1CC4:                             ; CODE XREF: START+1C3E↑j
                move    #$2700,sr

loc_FA1CC8:                             ; CODE XREF: START+1C6A↓j
                move.w  #LED_6_DOT_1,(IO_DIAG_LED_1).w ; FF U8 => DX2
                bclr    #DIAG_LED_BITS_YELLOW,(IO_DIAG_LED).w ; Bit 6: 0:yellow LED on, 1:yellow LED off
                btst    #DIAG_DIPSW_STOP_ON_ERROR,(IO_DIAG_DIPSW).w ; DIP Switches, #0=0:Function button pressed, #1=1:enable measurement mode, #5=1:sound check enabled, #6=1:stop at test failure

endless_loop_26:                        ; CODE XREF: START:endless_loop_26↓j
                bne.s   endless_loop_26
                btst    #DIAG_DIPSW_FUNCTION_DIP8,(IO_DIAG_DIPSW).w ; DIP Switches, #0=0:Function button pressed, #1=1:enable measurement mode, #5=1:sound check enabled, #6=1:stop at test failure
                bne.s   loc_FA1CC8

loc_FA1CE4:                             ; CODE XREF: START+1C76↓j
                move.w  #BUTTON_DEBOUNCE_COUNTER,d0 ; counter for debouncing a button press

loc_FA1CE8:                             ; CODE XREF: START+1C7A↓j
                btst    #DIAG_DIPSW_FUNCTION_DIP8,(IO_DIAG_DIPSW).w ; DIP Switches, #0=0:Function button pressed, #1=1:enable measurement mode, #5=1:sound check enabled, #6=1:stop at test failure
                beq.s   loc_FA1CE4
                subq.w  #1,d0
                bne.s   loc_FA1CE8

loc_FA1CF4:                             ; CODE XREF: START+1C4A↑j
                move    #$2700,sr
                move.l  #VBL_EXCEPTION,(VBL_VECT).w
                move.l  #HBL_EXCEPTION,(HBL_VECT).w
                bra.s   TEST_62_MFP_TIMER_A
; END OF FUNCTION CHUNK FOR START

; =============== S U B R O U T I N E =======================================


proc            TEST_HBL()              ; DATA XREF: START+1C0E↑o
                addq.w  #1,(DIAG_SRAM_HBL_COUNTER).l
                rte
; End of function TEST_HBL

; ---------------------------------------------------------------------------
; START OF FUNCTION CHUNK FOR START

TEST_62_MFP_TIMER_A:                    ; CODE XREF: START+1C90↑j
                move.w  #LED_62,(IO_DIAG_LED_1).w ; FF U8 => DX2
                move.b  #$62,(DIAG_SRAM_TEST_NUMBER).l ; 'b'
                eori.b  #DIAG_LED_MASK_YELLOW,(IO_DIAG_LED).w ; Bit 6: 0:yellow LED on, 1:yellow LED off
                clr.w   (DIAG_SRAM_VBL_or_TIMER_A_COUNTER).l
                move.l  #MFP_TIMER_A,(TIMER_A_VECT).w
                move.b  #$48,(IO_mfp_VR).w ; 'H' ; $100=Vector Base Offet, Software End-interrupt mode
                move.b  #%101,(IO_mfp_TACR).w ; Delay mode, divide by 64
                move.b  #192,(IO_mfp_TADR).w ; 200Hz Timer
                move.b  #%100000,(IO_mfp_IERA).w ; Timer A IRQ enable
                move.b  #%100000,(IO_mfp_IMRA).w ; Timer A IRQ enable
                move    #$2500,sr       ; enable MFP IRQs
                move.w  #COUNTER_DELAY_100ms,d0 ; 0.1s delay
                subq.w  #1,d0

loc_FA1D5C:                             ; CODE XREF: START+1CF4↓j
                move.l  #COUNTER_DELAY_250ms,d1 ; 0.25s delay

loc_FA1D62:                             ; CODE XREF: START:loc_FA1D6A↓j
                subq.l  #1,d1
                nop
                bra     *+4
; ---------------------------------------------------------------------------

loc_FA1D6A:                             ; CODE XREF: START+1CEE↑j
                bne.s   loc_FA1D62
                dbf     d0,loc_FA1D5C
                move    #$2700,sr
                move.w  (DIAG_SRAM_VBL_or_TIMER_A_COUNTER).l,d0
                cmpi.w  #18,d0          ; 200Hz should trigger 20 +/- 10% tolerance
                ble.s   loc_FA1D88
                cmpi.w  #22,d0
                blt     loc_FA1E74      ; disable MFP interrupts

loc_FA1D88:                             ; CODE XREF: START+1D06↑j
                move.w  d0,d4

loc_FA1D8A:                             ; CODE XREF: START+1DE8↓j
                move.w  #LED_6_DOT_2,(IO_DIAG_LED_1).w ; FF U8 => DX2
                bclr    #DIAG_LED_BITS_YELLOW,(IO_DIAG_LED).w ; Bit 6: 0:yellow LED on, 1:yellow LED off
                btst    #DIAG_DIPSW_STOP_ON_ERROR,(IO_DIAG_DIPSW).w ; DIP Switches, #0=0:Function button pressed, #1=1:enable measurement mode, #5=1:sound check enabled, #6=1:stop at test failure

endless_loop_27:                        ; CODE XREF: START:endless_loop_27↓j
                bne.s   endless_loop_27
                move.w  #COUNTER_DELAY_1s,d0 ; 1s delay
                subq.w  #1,d0

loc_FA1DA4:                             ; CODE XREF: START+1D3C↓j
                move.l  #COUNTER_DELAY_250ms,d1 ; 0.25s delay

loc_FA1DAA:                             ; CODE XREF: START:loc_FA1DB2↓j
                subq.l  #1,d1
                nop
                bra     *+4
; ---------------------------------------------------------------------------

loc_FA1DB2:                             ; CODE XREF: START+1D36↑j
                bne.s   loc_FA1DAA
                dbf     d0,loc_FA1DA4
                move.w  #LED___,(IO_DIAG_LED_1).w ; FF U8 => DX2
                move.w  #COUNTER_DELAY_150ms,d0 ; 0.15s delay
                subq.w  #1,d0

loc_FA1DC4:                             ; CODE XREF: START+1D5C↓j
                move.l  #COUNTER_DELAY_250ms,d1 ; 0.25s delay

loc_FA1DCA:                             ; CODE XREF: START:loc_FA1DD2↓j
                subq.l  #1,d1
                nop
                bra     *+4
; ---------------------------------------------------------------------------

loc_FA1DD2:                             ; CODE XREF: START+1D56↑j
                bne.s   loc_FA1DCA
                dbf     d0,loc_FA1DC4
                move.l  d4,d0
                asr.w   #8,d0
                bsr     LED_show_hex_byte_D0
                move.w  #COUNTER_DELAY_500ms,d0 ; 0.5s delay
                subq.w  #1,d0

loc_FA1DE6:                             ; CODE XREF: START+1D7E↓j
                move.l  #COUNTER_DELAY_250ms,d1 ; 0.25s delay

loc_FA1DEC:                             ; CODE XREF: START:loc_FA1DF4↓j
                subq.l  #1,d1
                nop
                bra     *+4
; ---------------------------------------------------------------------------

loc_FA1DF4:                             ; CODE XREF: START+1D78↑j
                bne.s   loc_FA1DEC
                dbf     d0,loc_FA1DE6
                move.w  #LED___,(IO_DIAG_LED_1).w ; FF U8 => DX2
                move.w  #COUNTER_DELAY_150ms,d0 ; 0.15s delay
                subq.w  #1,d0

loc_FA1E06:                             ; CODE XREF: START+1D9E↓j
                move.l  #COUNTER_DELAY_250ms,d1 ; 0.25s delay

loc_FA1E0C:                             ; CODE XREF: START:loc_FA1E14↓j
                subq.l  #1,d1
                nop
                bra     *+4
; ---------------------------------------------------------------------------

loc_FA1E14:                             ; CODE XREF: START+1D98↑j
                bne.s   loc_FA1E0C
                dbf     d0,loc_FA1E06
                move.l  d4,d0
                bsr     LED_show_hex_byte_D0
                move.w  #COUNTER_DELAY_500ms,d0 ; 0.5s delay
                subq.w  #1,d0

loc_FA1E26:                             ; CODE XREF: START+1DBE↓j
                move.l  #COUNTER_DELAY_250ms,d1 ; 0.25s delay

loc_FA1E2C:                             ; CODE XREF: START:loc_FA1E34↓j
                subq.l  #1,d1
                nop
                bra     *+4
; ---------------------------------------------------------------------------

loc_FA1E34:                             ; CODE XREF: START+1DB8↑j
                bne.s   loc_FA1E2C
                dbf     d0,loc_FA1E26
                move.w  #LED___,(IO_DIAG_LED_1).w ; FF U8 => DX2
                move.w  #COUNTER_DELAY_500ms,d0 ; 0.5s delay
                subq.w  #1,d0

loc_FA1E46:                             ; CODE XREF: START+1DDE↓j
                move.l  #COUNTER_DELAY_250ms,d1 ; 0.25s delay

loc_FA1E4C:                             ; CODE XREF: START:loc_FA1E54↓j
                subq.l  #1,d1
                nop
                bra     *+4
; ---------------------------------------------------------------------------

loc_FA1E54:                             ; CODE XREF: START+1DD8↑j
                bne.s   loc_FA1E4C
                dbf     d0,loc_FA1E46
                btst    #DIAG_DIPSW_FUNCTION_DIP8,(IO_DIAG_DIPSW).w ; DIP Switches, #0=0:Function button pressed, #1=1:enable measurement mode, #5=1:sound check enabled, #6=1:stop at test failure
                bne     loc_FA1D8A

loc_FA1E64:                             ; CODE XREF: START+1DF6↓j
                move.w  #BUTTON_DEBOUNCE_COUNTER,d0 ; counter for debouncing a button press

loc_FA1E68:                             ; CODE XREF: START+1DFA↓j
                btst    #DIAG_DIPSW_FUNCTION_DIP8,(IO_DIAG_DIPSW).w ; DIP Switches, #0=0:Function button pressed, #1=1:enable measurement mode, #5=1:sound check enabled, #6=1:stop at test failure
                beq.s   loc_FA1E64
                subq.w  #1,d0
                bne.s   loc_FA1E68

loc_FA1E74:                             ; CODE XREF: START+1D0C↑j
                move.b  #0,(IO_mfp_IERA).w ; disable MFP interrupts
                move.b  #0,(IO_mfp_IMRA).w
                move.l  #TIMER_A_EXCEPTION,(TIMER_A_VECT).w
                bra.s   TEST_68_BLITTER_HALFTONE_REGS
; END OF FUNCTION CHUNK FOR START

; =============== S U B R O U T I N E =======================================


proc            MFP_TIMER_A()           ; DATA XREF: START+1CB4↑o
                addq.w  #1,(DIAG_SRAM_VBL_or_TIMER_A_COUNTER).l
                move.b  #0,(IO_mfp_ISRA).w
                rte
; End of function MFP_TIMER_A

; ---------------------------------------------------------------------------
; START OF FUNCTION CHUNK FOR START

TEST_68_BLITTER_HALFTONE_REGS:          ; CODE XREF: START+1E10↑j
                move.w  #LED_68,(IO_DIAG_LED_1).w ; FF U8 => DX2
                move.b  #$68,(DIAG_SRAM_TEST_NUMBER).l ; 'h'
                eori.b  #DIAG_LED_MASK_YELLOW,(IO_DIAG_LED).w ; Bit 6: 0:yellow LED on, 1:yellow LED off
                movea.l #IO_BLITTER_halftone,a0 ; test 16 halftone words in the blitter
                movea.l #IO_blitter_srcxinc,a1 ; source x increment

loc_FA1EB8:                             ; CODE XREF: START+1E80↓j
                move.w  #$FFFF,(a0)
                tst.b   (IO_mfp_GPIP).w
                cmpi.w  #$FFFF,(a0)
                bne.s   loc_FA1EFE
                move.w  #$55AA,(a0)
                tst.b   (IO_mfp_GPIP).w
                cmpi.w  #$55AA,(a0)
                bne.s   loc_FA1EFE
                move.w  #$AA55,(a0)
                tst.b   (IO_mfp_GPIP).w
                cmpi.w  #$AA55,(a0)
                bne.s   loc_FA1EFE
                clr.w   (a0)
                tst.b   (IO_mfp_GPIP).w
                tst.w   (a0)+
                bne.s   loc_FA1EFE
                move.w  a0,d0
                bne.s   loc_FA1EF6
                eori.b  #DIAG_LED_MASK_YELLOW,(IO_DIAG_LED).w ; Bit 6: 0:yellow LED on, 1:yellow LED off

loc_FA1EF6:                             ; CODE XREF: START+1E76↑j
                cmpa.l  a0,a1
                bne.s   loc_FA1EB8
                clr.w   d0
                bra.s   loc_FA1F00
; ---------------------------------------------------------------------------

loc_FA1EFE:                             ; CODE XREF: START+1E4C↑j
                                        ; START+1E5A↑j ...
                moveq   #-1,d0

loc_FA1F00:                             ; CODE XREF: START+1E84↑j
                bne     loc_FA1F98
                lea     (IO_BLITTER_halftone).w,a0
                move.w  #4,d0

loc_FA1F0C:                             ; CODE XREF: START+1E9C↓j
                move.w  #$55AA,(a0)+
                move.w  #$AA55,(a0)+
                dbf     d0,loc_FA1F0C
                lea     (IO_BLITTER_halftone).w,a0
                move.w  #4,d0

loc_FA1F20:                             ; CODE XREF: START+1EB8↓j
                cmpi.w  #$55AA,(a0)+
                bne     loc_FA1F98
                cmpi.w  #$AA55,(a0)+
                bne     loc_FA1F98
                dbf     d0,loc_FA1F20
                lea     (IO_BLITTER_halftone).w,a0
                move.w  #4,d0

loc_FA1F3C:                             ; CODE XREF: START+1ECC↓j
                move.w  #$FFFF,(a0)+
                move.w  #0,(a0)+
                dbf     d0,loc_FA1F3C
                lea     (IO_BLITTER_halftone).w,a0
                move.w  #4,d0

loc_FA1F50:                             ; CODE XREF: START+1EE8↓j
                cmpi.w  #$FFFF,(a0)+
                bne     loc_FA1F98
                cmpi.w  #0,(a0)+
                bne     loc_FA1F98
                dbf     d0,loc_FA1F50
                lea     (IO_BLITTER_halftone).w,a0
                move.w  #4,d0

loc_FA1F6C:                             ; CODE XREF: START+1EFC↓j
                move.w  #0,(a0)+
                move.w  #$FFFF,(a0)+
                dbf     d0,loc_FA1F6C
                lea     (IO_BLITTER_halftone).w,a0
                move.w  #4,d0

loc_FA1F80:                             ; CODE XREF: START+1F18↓j
                cmpi.w  #0,(a0)+
                bne     loc_FA1F98
                cmpi.w  #$FFFF,(a0)+
                bne     loc_FA1F98
                dbf     d0,loc_FA1F80
                bra     TEST_69_BLITTER_HOG_MODE
; ---------------------------------------------------------------------------

loc_FA1F98:                             ; CODE XREF: START:loc_FA1F00↑j
                                        ; START+1EAC↑j ...
                move.w  #LED_6_DOT_8,(IO_DIAG_LED_1).w ; FF U8 => DX2
                bclr    #DIAG_LED_BITS_YELLOW,(IO_DIAG_LED).w ; Bit 6: 0:yellow LED on, 1:yellow LED off
                btst    #DIAG_DIPSW_STOP_ON_ERROR,(IO_DIAG_DIPSW).w ; DIP Switches, #0=0:Function button pressed, #1=1:enable measurement mode, #5=1:sound check enabled, #6=1:stop at test failure

endless_loop_28:                        ; CODE XREF: START:endless_loop_28↓j
                bne.s   endless_loop_28
                btst    #DIAG_DIPSW_FUNCTION_DIP8,(IO_DIAG_DIPSW).w ; DIP Switches, #0=0:Function button pressed, #1=1:enable measurement mode, #5=1:sound check enabled, #6=1:stop at test failure
                bne.s   loc_FA1F98

loc_FA1FB4:                             ; CODE XREF: START+1F46↓j
                move.w  #BUTTON_DEBOUNCE_COUNTER,d0 ; counter for debouncing a button press

loc_FA1FB8:                             ; CODE XREF: START+1F4A↓j
                btst    #DIAG_DIPSW_FUNCTION_DIP8,(IO_DIAG_DIPSW).w ; DIP Switches, #0=0:Function button pressed, #1=1:enable measurement mode, #5=1:sound check enabled, #6=1:stop at test failure
                beq.s   loc_FA1FB4
                subq.w  #1,d0
                bne.s   loc_FA1FB8

TEST_69_BLITTER_HOG_MODE:               ; CODE XREF: START+1F1C↑j
                move.w  #LED_69,(IO_DIAG_LED_1).w ; FF U8 => DX2
                move.b  #$69,(DIAG_SRAM_TEST_NUMBER).l ; 'i'
                eori.b  #DIAG_LED_MASK_YELLOW,(IO_DIAG_LED).w ; Bit 6: 0:yellow LED on, 1:yellow LED off
                lea     (blitter_clear_destination).l,a0 ; SrcXinc
                movea.l #IO_blitter_srcxinc,a1 ; source x increment
                move.w  #14,d0

loc_FA1FE8:                             ; CODE XREF: START+1F72↓j
                move.w  (a0)+,(a1)+
                dbf     d0,loc_FA1FE8
                movea.l #IO_blitter_linenum,a0 ; line number/smudge/HOG/busy
                bset    #6,(a0)         ; HOG bit
                bset    #7,(a0)         ; BUSY flag
                move.w  #99,d3          ; run 100 times

loc_FA2000:                             ; CODE XREF: START+1FAC↓j
                lea     (blitter_defect_test).l,a0 ; SrcXinc
                movea.l #IO_blitter_srcxinc,a1 ; source x increment
                move.w  #14,d0

loc_FA2010:                             ; CODE XREF: START+1F9A↓j
                move.w  (a0)+,(a1)+
                dbf     d0,loc_FA2010
                movea.l #IO_blitter_linenum,a0 ; line number/smudge/HOG/busy
                bset    #6,(a0)         ; HOG bit
                bset    #7,(a0)         ; BUSY flag
                dbf     d3,loc_FA2000

TEST_6A_BLITTER_STANDARD_MODE:          ; FF U8 => DX2
                move.w  #LED_6A,(IO_DIAG_LED_1).w
                move.b  #$6A,(DIAG_SRAM_TEST_NUMBER).l ; 'j'
                eori.b  #DIAG_LED_MASK_YELLOW,(IO_DIAG_LED).w ; Bit 6: 0:yellow LED on, 1:yellow LED off
                move.w  #99,d3          ; run 100 times

loc_FA2040:                             ; CODE XREF: START+1FEC↓j
                lea     (blitter_defect_test).l,a0 ; SrcXinc
                movea.l #IO_blitter_srcxinc,a1 ; source x increment
                move.w  #14,d0

loc_FA2050:                             ; CODE XREF: START+1FDA↓j
                move.w  (a0)+,(a1)+
                dbf     d0,loc_FA2050
                movea.l #IO_blitter_linenum,a0 ; line number/smudge/HOG/busy

loc_FA205C:                             ; CODE XREF: START+1FEA↓j
                bset    #7,(a0)         ; BUSY flag
                nop
                bne.s   loc_FA205C      ; BUSY flag
                dbf     d3,loc_FA2040

TEST_6b_BLITTER_VIDEORAM_CLEARED:       ; FF U8 => DX2
                move.w  #LED_6b,(IO_DIAG_LED_1).w
                move.b  #$6B,(DIAG_SRAM_TEST_NUMBER).l ; 'k'
                eori.b  #DIAG_LED_MASK_YELLOW,(IO_DIAG_LED).w ; Bit 6: 0:yellow LED on, 1:yellow LED off
                movea.l #RAM_video_buffer,a0
                move.w  #BLITTER_TEST_WORDS,d0

loc_FA2086:                             ; CODE XREF: START+2012↓j
                tst.w   (a0)+
                bne.s   loc_FA2092
                dbf     d0,loc_FA2086
                bra     loc_FA213A
; ---------------------------------------------------------------------------

loc_FA2092:                             ; CODE XREF: START+2010↑j
                                        ; START+20AE↓j
                move.w  #LED_6_DOT_b,(IO_DIAG_LED_1).w ; FF U8 => DX2
                bclr    #DIAG_LED_BITS_YELLOW,(IO_DIAG_LED).w ; Bit 6: 0:yellow LED on, 1:yellow LED off
                btst    #DIAG_DIPSW_STOP_ON_ERROR,(IO_DIAG_DIPSW).w ; DIP Switches, #0=0:Function button pressed, #1=1:enable measurement mode, #5=1:sound check enabled, #6=1:stop at test failure

endless_loop_29:                        ; CODE XREF: START:endless_loop_29↓j
                bne.s   endless_loop_29
                move.w  #COUNTER_DELAY_1s,d0 ; 1s delay
                subq.w  #1,d0

loc_FA20AC:                             ; CODE XREF: START+2044↓j
                move.l  #COUNTER_DELAY_250ms,d1 ; 0.25s delay

loc_FA20B2:                             ; CODE XREF: START:loc_FA20BA↓j
                subq.l  #1,d1
                nop
                bra     *+4
; ---------------------------------------------------------------------------

loc_FA20BA:                             ; CODE XREF: START+203E↑j
                bne.s   loc_FA20B2
                dbf     d0,loc_FA20AC
                move.w  #LED___,(IO_DIAG_LED_1).w ; FF U8 => DX2
                move.w  #COUNTER_DELAY_150ms,d0 ; 0.15s delay
                subq.w  #1,d0

loc_FA20CC:                             ; CODE XREF: START+2064↓j
                move.l  #COUNTER_DELAY_250ms,d1 ; 0.25s delay

loc_FA20D2:                             ; CODE XREF: START:loc_FA20DA↓j
                subq.l  #1,d1
                nop
                bra     *+4
; ---------------------------------------------------------------------------

loc_FA20DA:                             ; CODE XREF: START+205E↑j
                bne.s   loc_FA20D2
                dbf     d0,loc_FA20CC
                moveq   #0,d0
                bsr     LED_show_hex_byte_D0
                move.w  #COUNTER_DELAY_500ms,d0 ; 0.5s delay
                subq.w  #1,d0

loc_FA20EC:                             ; CODE XREF: START+2084↓j
                move.l  #COUNTER_DELAY_250ms,d1 ; 0.25s delay

loc_FA20F2:                             ; CODE XREF: START:loc_FA20FA↓j
                subq.l  #1,d1
                nop
                bra     *+4
; ---------------------------------------------------------------------------

loc_FA20FA:                             ; CODE XREF: START+207E↑j
                bne.s   loc_FA20F2
                dbf     d0,loc_FA20EC
                move.w  #LED___,(IO_DIAG_LED_1).w ; FF U8 => DX2
                move.w  #COUNTER_DELAY_500ms,d0 ; 0.5s delay
                subq.w  #1,d0

loc_FA210C:                             ; CODE XREF: START+20A4↓j
                move.l  #COUNTER_DELAY_250ms,d1 ; 0.25s delay

loc_FA2112:                             ; CODE XREF: START:loc_FA211A↓j
                subq.l  #1,d1
                nop
                bra     *+4
; ---------------------------------------------------------------------------

loc_FA211A:                             ; CODE XREF: START+209E↑j
                bne.s   loc_FA2112
                dbf     d0,loc_FA210C
                btst    #DIAG_DIPSW_FUNCTION_DIP8,(IO_DIAG_DIPSW).w ; DIP Switches, #0=0:Function button pressed, #1=1:enable measurement mode, #5=1:sound check enabled, #6=1:stop at test failure
                bne     loc_FA2092

loc_FA212A:                             ; CODE XREF: START+20BC↓j
                move.w  #BUTTON_DEBOUNCE_COUNTER,d0 ; counter for debouncing a button press

loc_FA212E:                             ; CODE XREF: START+20C0↓j
                btst    #DIAG_DIPSW_FUNCTION_DIP8,(IO_DIAG_DIPSW).w ; DIP Switches, #0=0:Function button pressed, #1=1:enable measurement mode, #5=1:sound check enabled, #6=1:stop at test failure
                beq.s   loc_FA212A
                subq.w  #1,d0
                bne.s   loc_FA212E

loc_FA213A:                             ; CODE XREF: START+2016↑j
                lea     (blitter_invert_copy).l,a0 ; SrcXinc
                movea.l #IO_blitter_srcxinc,a1 ; source x increment
                move.w  #14,d0

loc_FA214A:                             ; CODE XREF: START+20D4↓j
                move.w  (a0)+,(a1)+
                dbf     d0,loc_FA214A
                movea.l #IO_blitter_linenum,a0 ; line number/smudge/HOG/busy

loc_FA2156:                             ; CODE XREF: START+20E4↓j
                bset    #7,(a0)         ; BUSY flag
                nop
                bne.s   loc_FA2156      ; BUSY flag
                movea.l #RAM_video_buffer,a0
                move.w  #BLITTER_TEST_WORDS,d0

loc_FA2168:                             ; CODE XREF: START+20F6↓j
                cmpi.w  #$FFFF,(a0)+
                bne.s   loc_FA2176
                dbf     d0,loc_FA2168
                bra     TEST_6c_LOOP
; ---------------------------------------------------------------------------

loc_FA2176:                             ; CODE XREF: START+20F4↑j
                                        ; START+2192↓j
                move.w  #LED_6_DOT_b,(IO_DIAG_LED_1).w ; FF U8 => DX2
                bclr    #DIAG_LED_BITS_YELLOW,(IO_DIAG_LED).w ; Bit 6: 0:yellow LED on, 1:yellow LED off
                btst    #DIAG_DIPSW_STOP_ON_ERROR,(IO_DIAG_DIPSW).w ; DIP Switches, #0=0:Function button pressed, #1=1:enable measurement mode, #5=1:sound check enabled, #6=1:stop at test failure

endless_loop_30:                        ; CODE XREF: START:endless_loop_30↓j
                bne.s   endless_loop_30
                move.w  #COUNTER_DELAY_1s,d0 ; 1s delay
                subq.w  #1,d0

loc_FA2190:                             ; CODE XREF: START+2128↓j
                move.l  #COUNTER_DELAY_250ms,d1 ; 0.25s delay

loc_FA2196:                             ; CODE XREF: START:loc_FA219E↓j
                subq.l  #1,d1
                nop
                bra     *+4
; ---------------------------------------------------------------------------

loc_FA219E:                             ; CODE XREF: START+2122↑j
                bne.s   loc_FA2196
                dbf     d0,loc_FA2190
                move.w  #LED___,(IO_DIAG_LED_1).w ; FF U8 => DX2
                move.w  #COUNTER_DELAY_150ms,d0 ; 0.15s delay
                subq.w  #1,d0

loc_FA21B0:                             ; CODE XREF: START+2148↓j
                move.l  #COUNTER_DELAY_250ms,d1 ; 0.25s delay

loc_FA21B6:                             ; CODE XREF: START:loc_FA21BE↓j
                subq.l  #1,d1
                nop
                bra     *+4
; ---------------------------------------------------------------------------

loc_FA21BE:                             ; CODE XREF: START+2142↑j
                bne.s   loc_FA21B6
                dbf     d0,loc_FA21B0
                moveq   #1,d0
                bsr     LED_show_hex_byte_D0
                move.w  #COUNTER_DELAY_500ms,d0 ; 0.5s delay
                subq.w  #1,d0

loc_FA21D0:                             ; CODE XREF: START+2168↓j
                move.l  #COUNTER_DELAY_250ms,d1 ; 0.25s delay

loc_FA21D6:                             ; CODE XREF: START:loc_FA21DE↓j
                subq.l  #1,d1
                nop
                bra     *+4
; ---------------------------------------------------------------------------

loc_FA21DE:                             ; CODE XREF: START+2162↑j
                bne.s   loc_FA21D6
                dbf     d0,loc_FA21D0
                move.w  #LED___,(IO_DIAG_LED_1).w ; FF U8 => DX2
                move.w  #COUNTER_DELAY_500ms,d0 ; 0.5s delay
                subq.w  #1,d0

loc_FA21F0:                             ; CODE XREF: START+2188↓j
                move.l  #COUNTER_DELAY_250ms,d1 ; 0.25s delay

loc_FA21F6:                             ; CODE XREF: START:loc_FA21FE↓j
                subq.l  #1,d1
                nop
                bra     *+4
; ---------------------------------------------------------------------------

loc_FA21FE:                             ; CODE XREF: START+2182↑j
                bne.s   loc_FA21F6
                dbf     d0,loc_FA21F0
                btst    #DIAG_DIPSW_FUNCTION_DIP8,(IO_DIAG_DIPSW).w ; DIP Switches, #0=0:Function button pressed, #1=1:enable measurement mode, #5=1:sound check enabled, #6=1:stop at test failure
                bne     loc_FA2176

loc_FA220E:                             ; CODE XREF: START+21A0↓j
                move.w  #BUTTON_DEBOUNCE_COUNTER,d0 ; counter for debouncing a button press

loc_FA2212:                             ; CODE XREF: START+21A4↓j
                btst    #DIAG_DIPSW_FUNCTION_DIP8,(IO_DIAG_DIPSW).w ; DIP Switches, #0=0:Function button pressed, #1=1:enable measurement mode, #5=1:sound check enabled, #6=1:stop at test failure
                beq.s   loc_FA220E
                subq.w  #1,d0
                bne.s   loc_FA2212

TEST_6c_LOOP:                           ; CODE XREF: START+20FA↑j
                move.w  #LED_6C,(IO_DIAG_LED_1).w ; FF U8 => DX2
                move.b  #$6C,(DIAG_SRAM_TEST_NUMBER).l ; 'l'
                eori.b  #DIAG_LED_MASK_YELLOW,(IO_DIAG_LED).w ; Bit 6: 0:yellow LED on, 1:yellow LED off
                move.w  #DELAY_COUNTER,d0 ; short delay between tests

loc_FA2236:                             ; CODE XREF: START+21C0↓j
                nop
                dbf     d0,loc_FA2236

TEST_6d_LOOP:                           ; FF U8 => DX2
                move.w  #LED_6D,(IO_DIAG_LED_1).w
                move.b  #$6D,(DIAG_SRAM_TEST_NUMBER).l ; 'm'
                eori.b  #DIAG_LED_MASK_YELLOW,(IO_DIAG_LED).w ; Bit 6: 0:yellow LED on, 1:yellow LED off
                move.w  #DELAY_COUNTER,d0 ; short delay between tests

loc_FA2254:                             ; CODE XREF: START+21DE↓j
                nop
                dbf     d0,loc_FA2254

TEST_70_DMA_TRANSFER:                   ; FF U8 => DX2
                move.w  #LED_70,(IO_DIAG_LED_1).w
                move.b  #$70,(DIAG_SRAM_TEST_NUMBER).l ; 'p'
                eori.b  #DIAG_LED_MASK_YELLOW,(IO_DIAG_LED).w ; Bit 6: 0:yellow LED on, 1:yellow LED off
                move.b  #0,(IO_dma_ptr_low).w
                move.b  #0,(IO_dma_ptr_mid).w
                move.b  #1,(IO_dma_ptr_high).w
                move.w  #$90,(IO_dma_mode_control).w ; Read DMA
                tst.b   (IO_mfp_GPIP).w
                tst.b   (IO_mfp_GPIP).w
                move.w  #$190,(IO_dma_mode_control).w ; Write DMA
                tst.b   (IO_mfp_GPIP).w
                tst.b   (IO_mfp_GPIP).w
                move.w  #1,(IO_dma_sector_count).w
                tst.b   (IO_mfp_GPIP).w
                tst.b   (IO_mfp_GPIP).w
                clr.l   d0
                move.b  (IO_dma_ptr_high).w,d0
                ror.l   #8,d0
                move.b  (IO_dma_ptr_mid).w,d0
                ror.l   #8,d0
                move.b  (IO_dma_ptr_low).w,d0
                cmpi.l  #(RAM_video_buffer+$20),d0
                beq.s   TEST_78_RTC_1s_CLOCK

loc_FA22C4:                             ; CODE XREF: START+2266↓j
                move.w  #LED_7_DOT_0,(IO_DIAG_LED_1).w ; FF U8 => DX2
                bclr    #DIAG_LED_BITS_YELLOW,(IO_DIAG_LED).w ; Bit 6: 0:yellow LED on, 1:yellow LED off
                btst    #DIAG_DIPSW_STOP_ON_ERROR,(IO_DIAG_DIPSW).w ; DIP Switches, #0=0:Function button pressed, #1=1:enable measurement mode, #5=1:sound check enabled, #6=1:stop at test failure

endless_loop_31:                        ; CODE XREF: START:endless_loop_31↓j
                bne.s   endless_loop_31
                btst    #DIAG_DIPSW_FUNCTION_DIP8,(IO_DIAG_DIPSW).w ; DIP Switches, #0=0:Function button pressed, #1=1:enable measurement mode, #5=1:sound check enabled, #6=1:stop at test failure
                bne.s   loc_FA22C4

loc_FA22E0:                             ; CODE XREF: START+2272↓j
                move.w  #BUTTON_DEBOUNCE_COUNTER,d0 ; counter for debouncing a button press

loc_FA22E4:                             ; CODE XREF: START+2276↓j
                btst    #DIAG_DIPSW_FUNCTION_DIP8,(IO_DIAG_DIPSW).w ; DIP Switches, #0=0:Function button pressed, #1=1:enable measurement mode, #5=1:sound check enabled, #6=1:stop at test failure
                beq.s   loc_FA22E0
                subq.w  #1,d0
                bne.s   loc_FA22E4

TEST_78_RTC_1s_CLOCK:                   ; CODE XREF: START+224A↑j
                move.w  #LED_78,(IO_DIAG_LED_1).w ; FF U8 => DX2
                move.b  #$78,(DIAG_SRAM_TEST_NUMBER).l ; 'x'
                eori.b  #DIAG_LED_MASK_YELLOW,(IO_DIAG_LED).w ; Bit 6: 0:yellow LED on, 1:yellow LED off
                move.b  #1,(IO_rtc_mode_reg).w ; BANK 1
                tst.b   (IO_mfp_GPIP).w
                tst.b   (IO_mfp_GPIP).w
                tst.b   (IO_mfp_GPIP).w
                tst.b   (IO_mfp_GPIP).w
                move.b  #0,(IO_rtc_1s_counter).w ; Clock output select: "Z" (High impedance)
                tst.b   (IO_mfp_GPIP).w
                tst.b   (IO_mfp_GPIP).w
                tst.b   (IO_mfp_GPIP).w
                tst.b   (IO_mfp_GPIP).w
                move.b  #0,(IO_rtc_mode_reg).w ; BANK 0
                tst.b   (IO_mfp_GPIP).w
                tst.b   (IO_mfp_GPIP).w
                tst.b   (IO_mfp_GPIP).w
                tst.b   (IO_mfp_GPIP).w
                move.b  #%1111,(IO_rtc_reset_controller).w ; 0:Alarm RESET, 1:Timer RESET, 2:/16Hz ON, 3:/1Hz ON
                tst.b   (IO_mfp_GPIP).w
                tst.b   (IO_mfp_GPIP).w
                tst.b   (IO_mfp_GPIP).w
                tst.b   (IO_mfp_GPIP).w
                move.b  #%1100,(IO_rtc_reset_controller).w ; all reset and off
                lea     (rtc_test_values_plus_12).l,a0
                lea     (IO_rtc_1s_counter).w,a1
                move.w  #12,d0

loc_FA2370:                             ; CODE XREF: START+22FE↓j
                move.b  (a0),(a1)
                subq.w  #1,a0
                addq.w  #2,a1
                dbf     d0,loc_FA2370
                move.b  #8,(IO_rtc_mode_reg).w ; 0:Bank1/0, 1:x, 2:Alarm enable, 3:Timer enable
                move.w  #COUNTER_DELAY_1s,d0 ; 1s delay
                subq.w  #1,d0

loc_FA2386:                             ; CODE XREF: START+231E↓j
                move.l  #COUNTER_DELAY_250ms,d1 ; 0.25s delay

loc_FA238C:                             ; CODE XREF: START:loc_FA2394↓j
                subq.l  #1,d1
                nop
                bra     *+4
; ---------------------------------------------------------------------------

loc_FA2394:                             ; CODE XREF: START+2318↑j
                bne.s   loc_FA238C
                dbf     d0,loc_FA2386
                eori.b  #DIAG_LED_MASK_YELLOW,(IO_DIAG_LED).w ; Bit 6: 0:yellow LED on, 1:yellow LED off
                move.w  #COUNTER_DELAY_300ms,d0 ; 0.3s delay
                subq.w  #1,d0

loc_FA23A6:                             ; CODE XREF: START+233E↓j
                move.l  #COUNTER_DELAY_250ms,d1 ; 0.25s delay

loc_FA23AC:                             ; CODE XREF: START:loc_FA23B4↓j
                subq.l  #1,d1
                nop
                bra     *+4
; ---------------------------------------------------------------------------

loc_FA23B4:                             ; CODE XREF: START+2338↑j
                bne.s   loc_FA23AC
                dbf     d0,loc_FA23A6
                move.b  (IO_rtc_1s_counter).w,d0 ; Seconds have to have advanced by at least 1
                andi.b  #$F,d0
                bne.s   TEST_79_LOOP

loc_FA23C4:                             ; CODE XREF: START+2366↓j
                move.w  #LED_7_DOT_8,(IO_DIAG_LED_1).w ; FF U8 => DX2
                bclr    #DIAG_LED_BITS_YELLOW,(IO_DIAG_LED).w ; Bit 6: 0:yellow LED on, 1:yellow LED off
                btst    #DIAG_DIPSW_STOP_ON_ERROR,(IO_DIAG_DIPSW).w ; DIP Switches, #0=0:Function button pressed, #1=1:enable measurement mode, #5=1:sound check enabled, #6=1:stop at test failure

endless_loop_32:                        ; CODE XREF: START:endless_loop_32↓j
                bne.s   endless_loop_32
                btst    #DIAG_DIPSW_FUNCTION_DIP8,(IO_DIAG_DIPSW).w ; DIP Switches, #0=0:Function button pressed, #1=1:enable measurement mode, #5=1:sound check enabled, #6=1:stop at test failure
                bne.s   loc_FA23C4

loc_FA23E0:                             ; CODE XREF: START+2372↓j
                move.w  #BUTTON_DEBOUNCE_COUNTER,d0 ; counter for debouncing a button press

loc_FA23E4:                             ; CODE XREF: START+2376↓j
                btst    #DIAG_DIPSW_FUNCTION_DIP8,(IO_DIAG_DIPSW).w ; DIP Switches, #0=0:Function button pressed, #1=1:enable measurement mode, #5=1:sound check enabled, #6=1:stop at test failure
                beq.s   loc_FA23E0
                subq.w  #1,d0
                bne.s   loc_FA23E4

TEST_79_LOOP:                           ; CODE XREF: START+234A↑j
                move.w  #LED_79,(IO_DIAG_LED_1).w ; FF U8 => DX2
                move.b  #$79,(DIAG_SRAM_TEST_NUMBER).l ; 'y'
                eori.b  #DIAG_LED_MASK_YELLOW,(IO_DIAG_LED).w ; Bit 6: 0:yellow LED on, 1:yellow LED off
                move.w  #DELAY_COUNTER,d0 ; short delay between tests

loc_FA2408:                             ; CODE XREF: START+2392↓j
                nop
                dbf     d0,loc_FA2408

TEST_7A_RTC_16Hz_ALARM:                 ; FF U8 => DX2
                move.w  #LED_7A,(IO_DIAG_LED_1).w
                move.b  #$7A,(DIAG_SRAM_TEST_NUMBER).l ; 'z'
                eori.b  #DIAG_LED_MASK_YELLOW,(IO_DIAG_LED).w ; Bit 6: 0:yellow LED on, 1:yellow LED off
                move.b  #%1000,(IO_rtc_reset_controller).w ; 16Hz Alarm on

loc_FA2428:                             ; CODE XREF: START+247A↓j
                move.w  #$F000,d0

loc_FA242C:                             ; CODE XREF: START+23C0↓j
                btst    #IO_CONFIG_DIP_RTC_ALARM,(IO_CONFIG_DIP+1).w ; 0: RTC Alarm triggered /(RTC_ALARM)
                beq     loc_FA24E2      ; => yes
                subq.w  #1,d0
                bne.s   loc_FA242C

loc_FA243A:                             ; CODE XREF: START+2456↓j
                move.w  #LED_7_DOT_A,(IO_DIAG_LED_1).w ; FF U8 => DX2
                bclr    #DIAG_LED_BITS_YELLOW,(IO_DIAG_LED).w ; Bit 6: 0:yellow LED on, 1:yellow LED off
                btst    #DIAG_DIPSW_STOP_ON_ERROR,(IO_DIAG_DIPSW).w ; DIP Switches, #0=0:Function button pressed, #1=1:enable measurement mode, #5=1:sound check enabled, #6=1:stop at test failure

endless_loop_33:                        ; CODE XREF: START:endless_loop_33↓j
                bne.s   endless_loop_33
                move.w  #COUNTER_DELAY_1s,d0 ; 1s delay
                subq.w  #1,d0

loc_FA2454:                             ; CODE XREF: START+23EC↓j
                move.l  #COUNTER_DELAY_250ms,d1 ; 0.25s delay

loc_FA245A:                             ; CODE XREF: START:loc_FA2462↓j
                subq.l  #1,d1
                nop
                bra     *+4
; ---------------------------------------------------------------------------

loc_FA2462:                             ; CODE XREF: START+23E6↑j
                bne.s   loc_FA245A
                dbf     d0,loc_FA2454
                move.w  #LED___,(IO_DIAG_LED_1).w ; FF U8 => DX2
                move.w  #COUNTER_DELAY_150ms,d0 ; 0.15s delay
                subq.w  #1,d0

loc_FA2474:                             ; CODE XREF: START+240C↓j
                move.l  #COUNTER_DELAY_250ms,d1 ; 0.25s delay

loc_FA247A:                             ; CODE XREF: START:loc_FA2482↓j
                subq.l  #1,d1
                nop
                bra     *+4
; ---------------------------------------------------------------------------

loc_FA2482:                             ; CODE XREF: START+2406↑j
                bne.s   loc_FA247A
                dbf     d0,loc_FA2474
                moveq   #1,d0
                bsr     LED_show_hex_byte_D0
                move.w  #COUNTER_DELAY_500ms,d0 ; 0.5s delay
                subq.w  #1,d0

loc_FA2494:                             ; CODE XREF: START+242C↓j
                move.l  #COUNTER_DELAY_250ms,d1 ; 0.25s delay

loc_FA249A:                             ; CODE XREF: START:loc_FA24A2↓j
                subq.l  #1,d1
                nop
                bra     *+4
; ---------------------------------------------------------------------------

loc_FA24A2:                             ; CODE XREF: START+2426↑j
                bne.s   loc_FA249A
                dbf     d0,loc_FA2494
                move.w  #LED___,(IO_DIAG_LED_1).w ; FF U8 => DX2
                move.w  #COUNTER_DELAY_500ms,d0 ; 0.5s delay
                subq.w  #1,d0

loc_FA24B4:                             ; CODE XREF: START+244C↓j
                move.l  #COUNTER_DELAY_250ms,d1 ; 0.25s delay

loc_FA24BA:                             ; CODE XREF: START:loc_FA24C2↓j
                subq.l  #1,d1
                nop
                bra     *+4
; ---------------------------------------------------------------------------

loc_FA24C2:                             ; CODE XREF: START+2446↑j
                bne.s   loc_FA24BA
                dbf     d0,loc_FA24B4
                btst    #DIAG_DIPSW_FUNCTION_DIP8,(IO_DIAG_DIPSW).w ; DIP Switches, #0=0:Function button pressed, #1=1:enable measurement mode, #5=1:sound check enabled, #6=1:stop at test failure
                bne     loc_FA243A

loc_FA24D2:                             ; CODE XREF: START+2464↓j
                move.w  #BUTTON_DEBOUNCE_COUNTER,d0 ; counter for debouncing a button press

loc_FA24D6:                             ; CODE XREF: START+2468↓j
                btst    #DIAG_DIPSW_FUNCTION_DIP8,(IO_DIAG_DIPSW).w ; DIP Switches, #0=0:Function button pressed, #1=1:enable measurement mode, #5=1:sound check enabled, #6=1:stop at test failure
                beq.s   loc_FA24D2
                subq.w  #1,d0
                bne.s   loc_FA24D6

loc_FA24E2:                             ; CODE XREF: START+23BA↑j
                btst    #7,(IO_mfp_GPIP).w
                beq     loc_FA259E
                btst    #IO_CONFIG_DIP_RTC_ALARM,(IO_CONFIG_DIP+1).w ; 0: RTC Alarm triggered /(RTC_ALARM)
                bne     loc_FA2428

loc_FA24F6:                             ; CODE XREF: START+2512↓j
                move.w  #LED_7_DOT_A,(IO_DIAG_LED_1).w ; FF U8 => DX2
                bclr    #DIAG_LED_BITS_YELLOW,(IO_DIAG_LED).w ; Bit 6: 0:yellow LED on, 1:yellow LED off
                btst    #DIAG_DIPSW_STOP_ON_ERROR,(IO_DIAG_DIPSW).w ; DIP Switches, #0=0:Function button pressed, #1=1:enable measurement mode, #5=1:sound check enabled, #6=1:stop at test failure

endless_loop_34:                        ; CODE XREF: START:endless_loop_34↓j
                bne.s   endless_loop_34
                move.w  #COUNTER_DELAY_1s,d0 ; 1s delay
                subq.w  #1,d0

loc_FA2510:                             ; CODE XREF: START+24A8↓j
                move.l  #COUNTER_DELAY_250ms,d1 ; 0.25s delay

loc_FA2516:                             ; CODE XREF: START:loc_FA251E↓j
                subq.l  #1,d1
                nop
                bra     *+4
; ---------------------------------------------------------------------------

loc_FA251E:                             ; CODE XREF: START+24A2↑j
                bne.s   loc_FA2516
                dbf     d0,loc_FA2510
                move.w  #LED___,(IO_DIAG_LED_1).w ; FF U8 => DX2
                move.w  #COUNTER_DELAY_150ms,d0 ; 0.15s delay
                subq.w  #1,d0

loc_FA2530:                             ; CODE XREF: START+24C8↓j
                move.l  #COUNTER_DELAY_250ms,d1 ; 0.25s delay

loc_FA2536:                             ; CODE XREF: START:loc_FA253E↓j
                subq.l  #1,d1
                nop
                bra     *+4
; ---------------------------------------------------------------------------

loc_FA253E:                             ; CODE XREF: START+24C2↑j
                bne.s   loc_FA2536
                dbf     d0,loc_FA2530
                moveq   #2,d0
                bsr     LED_show_hex_byte_D0
                move.w  #COUNTER_DELAY_500ms,d0 ; 0.5s delay
                subq.w  #1,d0

loc_FA2550:                             ; CODE XREF: START+24E8↓j
                move.l  #COUNTER_DELAY_250ms,d1 ; 0.25s delay

loc_FA2556:                             ; CODE XREF: START:loc_FA255E↓j
                subq.l  #1,d1
                nop
                bra     *+4
; ---------------------------------------------------------------------------

loc_FA255E:                             ; CODE XREF: START+24E2↑j
                bne.s   loc_FA2556
                dbf     d0,loc_FA2550
                move.w  #LED___,(IO_DIAG_LED_1).w ; FF U8 => DX2
                move.w  #COUNTER_DELAY_500ms,d0 ; 0.5s delay
                subq.w  #1,d0

loc_FA2570:                             ; CODE XREF: START+2508↓j
                move.l  #COUNTER_DELAY_250ms,d1 ; 0.25s delay

loc_FA2576:                             ; CODE XREF: START:loc_FA257E↓j
                subq.l  #1,d1
                nop
                bra     *+4
; ---------------------------------------------------------------------------

loc_FA257E:                             ; CODE XREF: START+2502↑j
                bne.s   loc_FA2576
                dbf     d0,loc_FA2570
                btst    #DIAG_DIPSW_FUNCTION_DIP8,(IO_DIAG_DIPSW).w ; DIP Switches, #0=0:Function button pressed, #1=1:enable measurement mode, #5=1:sound check enabled, #6=1:stop at test failure
                bne     loc_FA24F6

loc_FA258E:                             ; CODE XREF: START+2520↓j
                move.w  #BUTTON_DEBOUNCE_COUNTER,d0 ; counter for debouncing a button press

loc_FA2592:                             ; CODE XREF: START+2524↓j
                btst    #DIAG_DIPSW_FUNCTION_DIP8,(IO_DIAG_DIPSW).w ; DIP Switches, #0=0:Function button pressed, #1=1:enable measurement mode, #5=1:sound check enabled, #6=1:stop at test failure
                beq.s   loc_FA258E
                subq.w  #1,d0
                bne.s   loc_FA2592

loc_FA259E:                             ; CODE XREF: START+2470↑j
                move.w  #$F000,d0

loc_FA25A2:                             ; CODE XREF: START+2536↓j
                btst    #IO_CONFIG_DIP_RTC_ALARM,(IO_CONFIG_DIP+1).w ; 0: RTC Alarm triggered /(RTC_ALARM)
                bne     loc_FA2658      ; all reset and off
                subq.w  #1,d0
                bne.s   loc_FA25A2

loc_FA25B0:                             ; CODE XREF: START+25CC↓j
                move.w  #LED_7_DOT_A,(IO_DIAG_LED_1).w ; FF U8 => DX2
                bclr    #DIAG_LED_BITS_YELLOW,(IO_DIAG_LED).w ; Bit 6: 0:yellow LED on, 1:yellow LED off
                btst    #DIAG_DIPSW_STOP_ON_ERROR,(IO_DIAG_DIPSW).w ; DIP Switches, #0=0:Function button pressed, #1=1:enable measurement mode, #5=1:sound check enabled, #6=1:stop at test failure

endless_loop_35:                        ; CODE XREF: START:endless_loop_35↓j
                bne.s   endless_loop_35
                move.w  #COUNTER_DELAY_1s,d0 ; 1s delay
                subq.w  #1,d0

loc_FA25CA:                             ; CODE XREF: START+2562↓j
                move.l  #COUNTER_DELAY_250ms,d1 ; 0.25s delay

loc_FA25D0:                             ; CODE XREF: START:loc_FA25D8↓j
                subq.l  #1,d1
                nop
                bra     *+4
; ---------------------------------------------------------------------------

loc_FA25D8:                             ; CODE XREF: START+255C↑j
                bne.s   loc_FA25D0
                dbf     d0,loc_FA25CA
                move.w  #LED___,(IO_DIAG_LED_1).w ; FF U8 => DX2
                move.w  #COUNTER_DELAY_150ms,d0 ; 0.15s delay
                subq.w  #1,d0

loc_FA25EA:                             ; CODE XREF: START+2582↓j
                move.l  #COUNTER_DELAY_250ms,d1 ; 0.25s delay

loc_FA25F0:                             ; CODE XREF: START:loc_FA25F8↓j
                subq.l  #1,d1
                nop
                bra     *+4
; ---------------------------------------------------------------------------

loc_FA25F8:                             ; CODE XREF: START+257C↑j
                bne.s   loc_FA25F0
                dbf     d0,loc_FA25EA
                moveq   #3,d0
                bsr     LED_show_hex_byte_D0
                move.w  #COUNTER_DELAY_500ms,d0 ; 0.5s delay
                subq.w  #1,d0

loc_FA260A:                             ; CODE XREF: START+25A2↓j
                move.l  #COUNTER_DELAY_250ms,d1 ; 0.25s delay

loc_FA2610:                             ; CODE XREF: START:loc_FA2618↓j
                subq.l  #1,d1
                nop
                bra     *+4
; ---------------------------------------------------------------------------

loc_FA2618:                             ; CODE XREF: START+259C↑j
                bne.s   loc_FA2610
                dbf     d0,loc_FA260A
                move.w  #LED___,(IO_DIAG_LED_1).w ; FF U8 => DX2
                move.w  #COUNTER_DELAY_500ms,d0 ; 0.5s delay
                subq.w  #1,d0

loc_FA262A:                             ; CODE XREF: START+25C2↓j
                move.l  #COUNTER_DELAY_250ms,d1 ; 0.25s delay

loc_FA2630:                             ; CODE XREF: START:loc_FA2638↓j
                subq.l  #1,d1
                nop
                bra     *+4
; ---------------------------------------------------------------------------

loc_FA2638:                             ; CODE XREF: START+25BC↑j
                bne.s   loc_FA2630
                dbf     d0,loc_FA262A
                btst    #DIAG_DIPSW_FUNCTION_DIP8,(IO_DIAG_DIPSW).w ; DIP Switches, #0=0:Function button pressed, #1=1:enable measurement mode, #5=1:sound check enabled, #6=1:stop at test failure
                bne     loc_FA25B0

loc_FA2648:                             ; CODE XREF: START+25DA↓j
                move.w  #BUTTON_DEBOUNCE_COUNTER,d0 ; counter for debouncing a button press

loc_FA264C:                             ; CODE XREF: START+25DE↓j
                btst    #DIAG_DIPSW_FUNCTION_DIP8,(IO_DIAG_DIPSW).w ; DIP Switches, #0=0:Function button pressed, #1=1:enable measurement mode, #5=1:sound check enabled, #6=1:stop at test failure
                beq.s   loc_FA2648
                subq.w  #1,d0
                bne.s   loc_FA264C

loc_FA2658:                             ; CODE XREF: START+2530↑j
                move.b  #%1100,(IO_rtc_reset_controller).w ; all reset and off

TEST_SOUND_CHANNEL_B:                   ; DIP Switches, #0=0:Function button pressed, #1=1:enable measurement mode, #5=1:sound check enabled, #6=1:stop at test failure
                btst    #DIAG_DIPSW_TEST_SOUND,(IO_DIAG_DIPSW).w
                beq.s   TEST_LOOP_DONE
                lea     (snd_test_channel_B).l,a0 ; Channel B Freq High = 1 => ~488Hz

loc_FA266C:                             ; CODE XREF: START+260A↓j
                                        ; START+262C↓j
                move.b  (a0)+,d0
                btst    #7,d0           ; End of list?
                bne.s   TEST_LOOP_DONE
                btst    #4,d0           ; Delay?
                bne.s   loc_FA2684
                move.b  d0,(IO_snd_reg_select).w
                move.b  (a0)+,(IO_snd_reg_read).w
                bra.s   loc_FA266C
; ---------------------------------------------------------------------------

loc_FA2684:                             ; CODE XREF: START+2600↑j
                clr.w   d0
                move.b  (a0)+,d0
                mulu.w  #COUNTER_DELAY_10ms,d0 ; 10ms delay
                move.w  d0,d0
                subq.w  #1,d0

loc_FA2690:                             ; CODE XREF: START+2628↓j
                move.l  #COUNTER_DELAY_250ms,d1 ; 0.25s delay

loc_FA2696:                             ; CODE XREF: START:loc_FA269E↓j
                subq.l  #1,d1
                nop
                bra     *+4
; ---------------------------------------------------------------------------

loc_FA269E:                             ; CODE XREF: START+2622↑j
                bne.s   loc_FA2696
                dbf     d0,loc_FA2690
                bra.s   loc_FA266C
; ---------------------------------------------------------------------------

TEST_LOOP_DONE:                         ; CODE XREF: START+25EC↑j
                                        ; START+25FA↑j
                btst    #DIAG_DIPSW_MEASUREMENT_MODE,(IO_DIAG_DIPSW).w ; DIP Switches, #0=0:Function button pressed, #1=1:enable measurement mode, #5=1:sound check enabled, #6=1:stop at test failure
                beq     START

; -1: Enable a 16386 Hz RTC alarm signal to allow measurement (wait for function button)

TEST_n1_16384Hz:                        ; BANK 1
                bset    #0,(IO_rtc_mode_reg).w
                move.b  #1,(IO_rtc_1s_counter).w ; Clock output select: 16384 Hz
                bset    #DIAG_LED_BITS_YELLOW,(IO_DIAG_LED).w ; Bit 6: 0:yellow LED on, 1:yellow LED off
                move.w  #LED_neg_1,(IO_DIAG_LED_1).w ; FF U8 => DX2

loc_FA26C8:                             ; CODE XREF: START+2656↓j
                btst    #DIAG_DIPSW_FUNCTION_DIP8,(IO_DIAG_DIPSW).w ; DIP Switches, #0=0:Function button pressed, #1=1:enable measurement mode, #5=1:sound check enabled, #6=1:stop at test failure
                bne.s   loc_FA26C8

loc_FA26D0:                             ; CODE XREF: START+2662↓j
                move.w  #BUTTON_DEBOUNCE_COUNTER,d0 ; counter for debouncing a button press

loc_FA26D4:                             ; CODE XREF: START+2666↓j
                btst    #DIAG_DIPSW_FUNCTION_DIP8,(IO_DIAG_DIPSW).w ; DIP Switches, #0=0:Function button pressed, #1=1:enable measurement mode, #5=1:sound check enabled, #6=1:stop at test failure
                beq.s   loc_FA26D0
                subq.w  #1,d0
                bne.s   loc_FA26D4
                move.b  #0,(IO_rtc_1s_counter).w ; Clock output select: "Z" (High impedance)
                bclr    #0,(IO_rtc_mode_reg).w ; BANK 0

; -2: <8.8V test to allow measurement (wait for function button)

TEST_n2_voltage:                        ; FF U8 => DX2
                move.w  #LED_neg_2,(IO_DIAG_LED_1).w

loc_FA26F2:                             ; CODE XREF: START+2696↓j
                btst    #IO_CONFIG_DIP_SOURCE_LOW,(IO_CONFIG_DIP+1).w ; 0: "Common Source” voltage level below 8.8V /(SOURCE_LOW)
                beq.s   loc_FA2702
                bset    #DIAG_LED_BITS_YELLOW,(IO_DIAG_LED).w ; Bit 6: 0:yellow LED on, 1:yellow LED off
                bra.s   loc_FA2708
; ---------------------------------------------------------------------------

loc_FA2702:                             ; CODE XREF: START+2680↑j
                bclr    #DIAG_LED_BITS_YELLOW,(IO_DIAG_LED).w ; Bit 6: 0:yellow LED on, 1:yellow LED off

loc_FA2708:                             ; CODE XREF: START+2688↑j
                btst    #DIAG_DIPSW_FUNCTION_DIP8,(IO_DIAG_DIPSW).w ; DIP Switches, #0=0:Function button pressed, #1=1:enable measurement mode, #5=1:sound check enabled, #6=1:stop at test failure
                bne.s   loc_FA26F2

loc_FA2710:                             ; CODE XREF: START+269E↓j
                btst    #DIAG_DIPSW_FUNCTION_DIP8,(IO_DIAG_DIPSW).w ; DIP Switches, #0=0:Function button pressed, #1=1:enable measurement mode, #5=1:sound check enabled, #6=1:stop at test failure
                bne.s   loc_FA2710

loc_FA2718:                             ; CODE XREF: START+26AA↓j
                move.w  #BUTTON_DEBOUNCE_COUNTER,d0 ; counter for debouncing a button press

loc_FA271C:                             ; CODE XREF: START+26AE↓j
                btst    #DIAG_DIPSW_FUNCTION_DIP8,(IO_DIAG_DIPSW).w ; DIP Switches, #0=0:Function button pressed, #1=1:enable measurement mode, #5=1:sound check enabled, #6=1:stop at test failure
                beq.s   loc_FA2718
                subq.w  #1,d0
                bne.s   loc_FA271C
                btst    #IO_CONFIG_DIP_SOURCE_LOW,(IO_CONFIG_DIP+1).w ; 0: "Common Source” voltage level below 8.8V /(SOURCE_LOW)
                beq.s   TEST_n3_voltage

loc_FA2730:                             ; CODE XREF: START+26D2↓j
                move.w  #LED_b_DOT_1,(IO_DIAG_LED_1).w ; FF U8 => DX2
                bclr    #DIAG_LED_BITS_YELLOW,(IO_DIAG_LED).w ; Bit 6: 0:yellow LED on, 1:yellow LED off
                btst    #DIAG_DIPSW_STOP_ON_ERROR,(IO_DIAG_DIPSW).w ; DIP Switches, #0=0:Function button pressed, #1=1:enable measurement mode, #5=1:sound check enabled, #6=1:stop at test failure

endless_loop_36:                        ; CODE XREF: START:endless_loop_36↓j
                bne.s   endless_loop_36
                btst    #DIAG_DIPSW_FUNCTION_DIP8,(IO_DIAG_DIPSW).w ; DIP Switches, #0=0:Function button pressed, #1=1:enable measurement mode, #5=1:sound check enabled, #6=1:stop at test failure
                bne.s   loc_FA2730

loc_FA274C:                             ; CODE XREF: START+26DE↓j
                move.w  #BUTTON_DEBOUNCE_COUNTER,d0 ; counter for debouncing a button press

loc_FA2750:                             ; CODE XREF: START+26E2↓j
                btst    #DIAG_DIPSW_FUNCTION_DIP8,(IO_DIAG_DIPSW).w ; DIP Switches, #0=0:Function button pressed, #1=1:enable measurement mode, #5=1:sound check enabled, #6=1:stop at test failure
                beq.s   loc_FA274C
                subq.w  #1,d0
                bne.s   loc_FA2750

; -3: >=8.8V test to allow measurement (wait for function button)

TEST_n3_voltage:                        ; CODE XREF: START+26B6↑j
                move.w  #LED_neg_3,(IO_DIAG_LED_1).w ; FF U8 => DX2

loc_FA2762:                             ; CODE XREF: START+2706↓j
                btst    #IO_CONFIG_DIP_SOURCE_LOW,(IO_CONFIG_DIP+1).w ; 0: "Common Source” voltage level below 8.8V /(SOURCE_LOW)
                beq.s   loc_FA2772
                bset    #DIAG_LED_BITS_YELLOW,(IO_DIAG_LED).w ; Bit 6: 0:yellow LED on, 1:yellow LED off
                bra.s   loc_FA2778
; ---------------------------------------------------------------------------

loc_FA2772:                             ; CODE XREF: START+26F0↑j
                bclr    #DIAG_LED_BITS_YELLOW,(IO_DIAG_LED).w ; Bit 6: 0:yellow LED on, 1:yellow LED off

loc_FA2778:                             ; CODE XREF: START+26F8↑j
                btst    #DIAG_DIPSW_FUNCTION_DIP8,(IO_DIAG_DIPSW).w ; DIP Switches, #0=0:Function button pressed, #1=1:enable measurement mode, #5=1:sound check enabled, #6=1:stop at test failure
                bne.s   loc_FA2762

loc_FA2780:                             ; CODE XREF: START+270E↓j
                btst    #DIAG_DIPSW_FUNCTION_DIP8,(IO_DIAG_DIPSW).w ; DIP Switches, #0=0:Function button pressed, #1=1:enable measurement mode, #5=1:sound check enabled, #6=1:stop at test failure
                bne.s   loc_FA2780

loc_FA2788:                             ; CODE XREF: START+271A↓j
                move.w  #BUTTON_DEBOUNCE_COUNTER,d0 ; counter for debouncing a button press

loc_FA278C:                             ; CODE XREF: START+271E↓j
                btst    #DIAG_DIPSW_FUNCTION_DIP8,(IO_DIAG_DIPSW).w ; DIP Switches, #0=0:Function button pressed, #1=1:enable measurement mode, #5=1:sound check enabled, #6=1:stop at test failure
                beq.s   loc_FA2788
                subq.w  #1,d0
                bne.s   loc_FA278C
                btst    #IO_CONFIG_DIP_SOURCE_LOW,(IO_CONFIG_DIP+1).w ; 0: "Common Source” voltage level below 8.8V /(SOURCE_LOW)
                bne.s   TEST_n4_LOOP

loc_FA27A0:                             ; CODE XREF: START+2742↓j
                move.w  #LED_b_DOT_3,(IO_DIAG_LED_1).w ; FF U8 => DX2
                bclr    #DIAG_LED_BITS_YELLOW,(IO_DIAG_LED).w ; Bit 6: 0:yellow LED on, 1:yellow LED off
                btst    #DIAG_DIPSW_STOP_ON_ERROR,(IO_DIAG_DIPSW).w ; DIP Switches, #0=0:Function button pressed, #1=1:enable measurement mode, #5=1:sound check enabled, #6=1:stop at test failure

endless_loop_37:                        ; CODE XREF: START:endless_loop_37↓j
                bne.s   endless_loop_37
                btst    #DIAG_DIPSW_FUNCTION_DIP8,(IO_DIAG_DIPSW).w ; DIP Switches, #0=0:Function button pressed, #1=1:enable measurement mode, #5=1:sound check enabled, #6=1:stop at test failure
                bne.s   loc_FA27A0

loc_FA27BC:                             ; CODE XREF: START+274E↓j
                move.w  #BUTTON_DEBOUNCE_COUNTER,d0 ; counter for debouncing a button press

loc_FA27C0:                             ; CODE XREF: START+2752↓j
                btst    #DIAG_DIPSW_FUNCTION_DIP8,(IO_DIAG_DIPSW).w ; DIP Switches, #0=0:Function button pressed, #1=1:enable measurement mode, #5=1:sound check enabled, #6=1:stop at test failure
                beq.s   loc_FA27BC
                subq.w  #1,d0
                bne.s   loc_FA27C0

TEST_n4_LOOP:                           ; CODE XREF: START+2726↑j
                move.w  #LED_neg_4,(IO_DIAG_LED_1).w ; FF U8 => DX2

; -4: wait for function button

loc_FA27D2:                             ; CODE XREF: START+2760↓j
                btst    #DIAG_DIPSW_FUNCTION_DIP8,(IO_DIAG_DIPSW).w ; DIP Switches, #0=0:Function button pressed, #1=1:enable measurement mode, #5=1:sound check enabled, #6=1:stop at test failure
                bne.s   loc_FA27D2

loc_FA27DA:                             ; CODE XREF: START+276C↓j
                move.w  #BUTTON_DEBOUNCE_COUNTER,d0 ; counter for debouncing a button press

loc_FA27DE:                             ; CODE XREF: START+2770↓j
                btst    #DIAG_DIPSW_FUNCTION_DIP8,(IO_DIAG_DIPSW).w ; DIP Switches, #0=0:Function button pressed, #1=1:enable measurement mode, #5=1:sound check enabled, #6=1:stop at test failure
                beq.s   loc_FA27DA
                subq.w  #1,d0
                bne.s   loc_FA27DE

; -5: wait for function button

TEST_n5_LOOP:                           ; FF U8 => DX2
                move.w  #LED_neg_5,(IO_DIAG_LED_1).w

loc_FA27F0:                             ; CODE XREF: START+277E↓j
                btst    #DIAG_DIPSW_FUNCTION_DIP8,(IO_DIAG_DIPSW).w ; DIP Switches, #0=0:Function button pressed, #1=1:enable measurement mode, #5=1:sound check enabled, #6=1:stop at test failure
                bne.s   loc_FA27F0

loc_FA27F8:                             ; CODE XREF: START+278A↓j
                move.w  #BUTTON_DEBOUNCE_COUNTER,d0 ; counter for debouncing a button press

loc_FA27FC:                             ; CODE XREF: START+278E↓j
                btst    #DIAG_DIPSW_FUNCTION_DIP8,(IO_DIAG_DIPSW).w ; DIP Switches, #0=0:Function button pressed, #1=1:enable measurement mode, #5=1:sound check enabled, #6=1:stop at test failure
                beq.s   loc_FA27F8
                subq.w  #1,d0
                bne.s   loc_FA27FC

; --: all Tests done => endless loop
                move.w  #LED_neg_neg,(IO_DIAG_LED_1).w ; FF U8 => DX2

TEST_nn_all_done_endless_loop:          ; CODE XREF: START:TEST_nn_all_done_endless_loop↓j
                jmp     TEST_nn_all_done_endless_loop
; ---------------------------------------------------------------------------

LED_display_version_number:             ; CODE XREF: START+98↑j
                                        ; START+2824↓j
                move.b  #LED_8_DOT_U,(IO_DIAG_LED_1).w ; LED 1 'U'
                lea     (BCD2LED).l,a3
                move.b  0(a3),d0        ; '0'
                andi.b  #$7F,d0         ; enable the '.'
                move.b  d0,(IO_DIAG_LED_2).w ; LED 2 '0'
                move.w  #COUNTER_DELAY_1s,d0 ; 1s delay
                subq.w  #1,d0

loc_FA2832:                             ; CODE XREF: START+27CA↓j
                move.l  #COUNTER_DELAY_250ms,d1 ; 0.25s delay

loc_FA2838:                             ; CODE XREF: START:loc_FA2840↓j
                subq.l  #1,d1
                nop
                bra     *+4
; ---------------------------------------------------------------------------

loc_FA2840:                             ; CODE XREF: START+27C4↑j
                bne.s   loc_FA2838
                dbf     d0,loc_FA2832
                move.b  6(a3),(IO_DIAG_LED_1).w ; LED 1 '6'
                move.b  5(a3),(IO_DIAG_LED_2).w ; LED 2 '5'
                move.w  #COUNTER_DELAY_1s,d0 ; 1s delay
                subq.w  #1,d0

loc_FA2858:                             ; CODE XREF: START+27F0↓j
                move.l  #COUNTER_DELAY_250ms,d1 ; 0.25s delay

loc_FA285E:                             ; CODE XREF: START:loc_FA2866↓j
                subq.l  #1,d1
                nop
                bra     *+4
; ---------------------------------------------------------------------------

loc_FA2866:                             ; CODE XREF: START+27EA↑j
                bne.s   loc_FA285E
                dbf     d0,loc_FA2858
; Rotate animation:
                move.w  #LED_uline_uline,d3 ; LED '⎺⎺'

loc_FA2870:                             ; CODE XREF: START+2822↓j
                move.w  d3,(IO_DIAG_LED_1).w ; FF U8 => DX2
                eori.b  #DIAG_LED_MASK_YELLOW,(IO_DIAG_LED).w ; Bit 6: 0:yellow LED on, 1:yellow LED off
                move.w  #COUNTER_DELAY_150ms,d0 ; 0.15s delay
                subq.w  #1,d0

loc_FA2880:                             ; CODE XREF: START+2818↓j
                move.l  #COUNTER_DELAY_250ms,d1 ; 0.25s delay

loc_FA2886:                             ; CODE XREF: START:loc_FA288E↓j
                subq.l  #1,d1
                nop
                bra     *+4
; ---------------------------------------------------------------------------

loc_FA288E:                             ; CODE XREF: START+2812↑j
                bne.s   loc_FA2886
                dbf     d0,loc_FA2880
                rol.w   #1,d3
                cmpi.w  #LED_uline_uline,d3 ; LED '⎺⎺'
                bne.s   loc_FA2870
                bra     LED_display_version_number ; LED 1 'U'
; END OF FUNCTION CHUNK FOR START

; =============== S U B R O U T I N E =======================================


proc            LED_show_hex_byte_stack()

arg_0           =  4

                lea     (BCD2LED).l,a0
                move.w  arg_0(sp),d0
                asr.w   #4,d0
                andi.w  #$F,d0
                move.b  (a0,d0.w),(IO_DIAG_LED_1).w ; LED 1 hexdigit
                move.w  arg_0(sp),d0
                andi.w  #$F,d0
                move.b  (a0,d0.w),(IO_DIAG_LED_2).w ; LED 2 hexdigit
                rts
; End of function LED_show_hex_byte_stack


; =============== S U B R O U T I N E =======================================

; A0 = mem, D1 bitmask, D2 = add

proc            check_mem_bitmask_16bit()
                                        ; CODE XREF: check_register_set_16bit+12↓p
                clr.w   d0

loc_FA28C8:                             ; CODE XREF: check_mem_bitmask_16bit+14↓j
                move.w  d0,(a0)
                tst.b   (IO_mfp_GPIP).w
                move.w  (a0),d3
                and.w   d1,d3
                cmp.w   d0,d3
                bne.s   loc_FA28E2
                add.w   d2,d0
                and.w   d1,d0
                bne.s   loc_FA28C8
                clr.w   d0
                move.w  d0,(a0)
                rts
; ---------------------------------------------------------------------------

loc_FA28E2:                             ; CODE XREF: check_mem_bitmask_16bit+E↑j
                move.w  d0,d4
                moveq   #-1,d0
                rts
; End of function check_mem_bitmask_16bit


; =============== S U B R O U T I N E =======================================


proc            check_register_set_16bit() ; CODE XREF: START+CA8↑p
                                        ; check_register_set_16bit+1C↓j
                move.l  a0,-(sp)
                move.b  CHECK_REGISTERSET_16BIT.bitmask(a0),d1 ; this should be move.w
                move.b  CHECK_REGISTERSET_16BIT.bitmask+1(a0),d2 ; this should be move.w and a different offset
                movea.l CHECK_REGISTERSET_16BIT(a0),a0
                cmpa.w  #0,a0
                beq.s   loc_FA2906
                bsr.s   check_mem_bitmask_16bit ; A0 = mem, D1 bitmask, D2 = add
                tst.w   d0
                bne.s   loc_FA290C
                movea.l (sp)+,a0
                addq.w  #sizeof(CHECK_REGISTERSET_16BIT),a0
                bra.s   check_register_set_16bit
; ---------------------------------------------------------------------------

loc_FA2906:                             ; CODE XREF: check_register_set_16bit+10↑j
                addq.w  #4,sp
                clr.w   d0
                rts
; ---------------------------------------------------------------------------

loc_FA290C:                             ; CODE XREF: check_register_set_16bit+16↑j
                addq.w  #4,sp
                rts
; End of function check_register_set_16bit


; =============== S U B R O U T I N E =======================================

; A0:mem, D1:test bitmask, D2:value offset, => D0<0:error, D4:defect bit

proc            check_mem_bitmask_8bit() ; CODE XREF: START+6FE↑p
                                        ; START+C38↑p ...
                clr.w   d0

loc_FA2912:                             ; CODE XREF: check_mem_bitmask_8bit+20↓j
                move.b  d0,(a0)
                tst.b   (IO_mfp_GPIP).w
                tst.b   (IO_mfp_GPIP).w
                tst.b   (IO_mfp_GPIP).w
                tst.b   (IO_mfp_GPIP).w
                move.b  (a0),d3
                and.b   d1,d3           ; only check bitmask
                cmp.b   d0,d3
                bne.s   loc_FA2938
                add.b   d2,d0           ; add offset to value
                and.b   d1,d0
                bne.s   loc_FA2912
                clr.w   d0
                move.b  d0,(a0)
                rts
; ---------------------------------------------------------------------------

loc_FA2938:                             ; CODE XREF: check_mem_bitmask_8bit+1A↑j
                move.b  d0,d4
                moveq   #-1,d0
                rts
; End of function check_mem_bitmask_8bit


; =============== S U B R O U T I N E =======================================


proc            check_register_set_8bit() ; CODE XREF: START+B2C↑p
                                        ; START+B78↑p ...
                move.l  a0,-(sp)
                move.b  CHECK_REGISTERSET_8BIT.bitmask(a0),d1 ; test bitmask
                move.b  CHECK_REGISTERSET_8BIT.value_offset(a0),d2 ; offset added to the value
                movea.l CHECK_REGISTERSET_8BIT(a0),a0
                cmpa.w  #0,a0
                beq.s   loc_FA295C
                bsr.s   check_mem_bitmask_8bit ; A0:mem, D1:test bitmask, D2:value offset, => D0<0:error, D4:defect bit
                tst.w   d0
                bne.s   loc_FA2962
                movea.l (sp)+,a0
                addq.w  #sizeof(CHECK_REGISTERSET_8BIT),a0 ; next register
                bra.s   check_register_set_8bit
; ---------------------------------------------------------------------------

loc_FA295C:                             ; CODE XREF: check_register_set_8bit+10↑j
                addq.w  #4,sp
                clr.w   d0
                rts
; ---------------------------------------------------------------------------

loc_FA2962:                             ; CODE XREF: check_register_set_8bit+16↑j
                addq.w  #4,sp
                rts
; End of function check_register_set_8bit


; =============== S U B R O U T I N E =======================================

; A0 = mem, D1 bitmask, D2 = add

proc            check_mem_bitmask_8bit_slow_unused()
                                        ; CODE XREF: check_register_set_8bit_slow_unused+12↓p
                clr.w   d0

loc_FA2968:                             ; CODE XREF: check_mem_bitmask_8bit_slow_unused+54↓j
                move.b  d0,(a0)
                movem.l d0-d1,-(sp)
                move.w  #COUNTER_DELAY_1ms,d0 ; 1ms delay
                subq.w  #1,d0

loc_FA2974:                             ; CODE XREF: check_mem_bitmask_8bit_slow_unused+1E↓j
                move.l  #COUNTER_DELAY_250ms,d1 ; 0.25s delay

loc_FA297A:                             ; CODE XREF: check_mem_bitmask_8bit_slow_unused:loc_FA2982↓j
                subq.l  #1,d1
                nop
                bra     *+4
; ---------------------------------------------------------------------------

loc_FA2982:                             ; CODE XREF: check_mem_bitmask_8bit_slow_unused+18↑j
                bne.s   loc_FA297A
                dbf     d0,loc_FA2974
                movem.l (sp)+,d0-d1
                move.b  (a0),d3
                and.b   d1,d3
                cmp.b   d0,d3
                bne.s   loc_FA29C2
                movem.l d0-d1,-(sp)
                move.w  #COUNTER_DELAY_1ms,d0 ; 1ms delay
                subq.w  #1,d0

loc_FA299E:                             ; CODE XREF: check_mem_bitmask_8bit_slow_unused+48↓j
                move.l  #COUNTER_DELAY_250ms,d1 ; 0.25s delay

loc_FA29A4:                             ; CODE XREF: check_mem_bitmask_8bit_slow_unused:loc_FA29AC↓j
                subq.l  #1,d1
                nop
                bra     *+4
; ---------------------------------------------------------------------------

loc_FA29AC:                             ; CODE XREF: check_mem_bitmask_8bit_slow_unused+42↑j
                bne.s   loc_FA29A4
                dbf     d0,loc_FA299E
                movem.l (sp)+,d0-d1
                add.b   d2,d0
                and.b   d1,d0
                bne.s   loc_FA2968
                clr.w   d0
                move.b  d0,(a0)
                rts
; ---------------------------------------------------------------------------

loc_FA29C2:                             ; CODE XREF: check_mem_bitmask_8bit_slow_unused+2C↑j
                move.b  d0,d4
                moveq   #-1,d0
                rts
; End of function check_mem_bitmask_8bit_slow_unused


; =============== S U B R O U T I N E =======================================


proc            check_register_set_8bit_slow_unused()
                                        ; CODE XREF: check_register_set_8bit_slow_unused+1C↓j
                move.l  a0,-(sp)
                move.b  CHECK_REGISTERSET_8BIT.bitmask(a0),d1 ; test bitmask
                move.b  CHECK_REGISTERSET_8BIT.value_offset(a0),d2 ; offset added to the value
                movea.l CHECK_REGISTERSET_8BIT(a0),a0
                cmpa.w  #0,a0
                beq.s   loc_FA29E6
                bsr.s   check_mem_bitmask_8bit_slow_unused ; A0 = mem, D1 bitmask, D2 = add
                tst.w   d0
                bne.s   loc_FA29EC
                movea.l (sp)+,a0
                addq.w  #sizeof(CHECK_REGISTERSET_8BIT),a0
                bra.s   check_register_set_8bit_slow_unused
; ---------------------------------------------------------------------------

loc_FA29E6:                             ; CODE XREF: check_register_set_8bit_slow_unused+10↑j
                addq.w  #4,sp
                clr.w   d0
                rts
; ---------------------------------------------------------------------------

loc_FA29EC:                             ; CODE XREF: check_register_set_8bit_slow_unused+16↑j
                addq.w  #4,sp
                rts
; End of function check_register_set_8bit_slow_unused


; =============== S U B R O U T I N E =======================================

; Attributes: noreturn

proc            EXCEPTION_VECTORS()     ; DATA XREF: START+32↑o
                                        ; START+AE8↑o
                move.w  #LED_0_DOT_2_DOT,d4 ; LED '0.2.'
                bra     VECTOR_ENTRY_UE ; LED 'U.E.'
; ---------------------------------------------------------------------------
                move.w  #LED_0_DOT_3_DOT,d4 ; LED '0.3.'
                bra     VECTOR_ENTRY_UE ; LED 'U.E.'
; ---------------------------------------------------------------------------
                move.w  #LED_0_DOT_4_DOT,d4 ; LED '0.4.'
                bra     VECTOR_ENTRY_UE ; LED 'U.E.'
; ---------------------------------------------------------------------------
                move.w  #LED_0_DOT_5_DOT,d4 ; LED '0.5.'
                bra     VECTOR_ENTRY_UE ; LED 'U.E.'
; ---------------------------------------------------------------------------
                move.w  #LED_0_DOT_6_DOT,d4 ; LED '0.6.'
                bra     VECTOR_ENTRY_UE ; LED 'U.E.'
; ---------------------------------------------------------------------------
                move.w  #LED_0_DOT_7_DOT,d4 ; LED '0.7.'
                bra     VECTOR_ENTRY_UE ; LED 'U.E.'
; ---------------------------------------------------------------------------
                move.w  #LED_0_DOT_8_DOT,d4 ; LED '0.8.'
                bra     VECTOR_ENTRY_UE ; LED 'U.E.'
; ---------------------------------------------------------------------------
                move.w  #LED_0_DOT_9_DOT,d4 ; LED '0.9.'
                bra     VECTOR_ENTRY_UE ; LED 'U.E.'
; ---------------------------------------------------------------------------
                move.w  #LED_0_DOT_A_DOT,d4 ; LED '0.A.'
                bra     VECTOR_ENTRY_UE ; LED 'U.E.'
; ---------------------------------------------------------------------------
                move.w  #LED_0_DOT_b_DOT,d4 ; LED '0.b.'
                bra     VECTOR_ENTRY_UE ; LED 'U.E.'
; ---------------------------------------------------------------------------
                move.w  #LED_0_DOT_C_DOT,d4 ; LED '0.C.'
                bra     VECTOR_ENTRY_UE ; LED 'U.E.'
; ---------------------------------------------------------------------------
                move.w  #LED_0_DOT_D_DOT,d4 ; LED '0.D.'
                bra     VECTOR_ENTRY_UE ; LED 'U.E.'
; ---------------------------------------------------------------------------
                move.w  #LED_0_DOT_E_DOT,d4 ; LED '0.E.'
                bra     VECTOR_ENTRY_UE ; LED 'U.E.'
; ---------------------------------------------------------------------------
                move.w  #LED_0_DOT_F_DOT,d4 ; LED '0.F.'
                bra     VECTOR_ENTRY_UE ; LED 'U.E.'
; ---------------------------------------------------------------------------
                move.w  #LED_1_DOT_0_DOT,d4 ; LED '1.0.'
                bra     VECTOR_ENTRY_UE ; LED 'U.E.'
; ---------------------------------------------------------------------------
                move.w  #LED_1_DOT_1_DOT,d4 ; LED '1.1.'
                bra     VECTOR_ENTRY_UE ; LED 'U.E.'
; ---------------------------------------------------------------------------
                move.w  #LED_1_DOT_2_DOT,d4 ; LED '1.2.'
                bra     VECTOR_ENTRY_UE ; LED 'U.E.'
; ---------------------------------------------------------------------------
                move.w  #LED_1_DOT_3_DOT,d4 ; LED '1.3.'
                bra     VECTOR_ENTRY_UE ; LED 'U.E.'
; ---------------------------------------------------------------------------
                move.w  #LED_1_DOT_4_DOT,d4 ; LED '1.4.'
                bra     VECTOR_ENTRY_UE ; LED 'U.E.'
; ---------------------------------------------------------------------------
                move.w  #LED_1_DOT_5_DOT,d4 ; LED '1.5.'
                bra     VECTOR_ENTRY_UE ; LED 'U.E.'
; ---------------------------------------------------------------------------
                move.w  #LED_1_DOT_6_DOT,d4 ; LED '1.6.'
                bra     VECTOR_ENTRY_UE ; LED 'U.E.'
; ---------------------------------------------------------------------------
                move.w  #LED_1_DOT_7_DOT,d4 ; LED '1.7.'
                bra     VECTOR_ENTRY_UE ; LED 'U.E.'
; ---------------------------------------------------------------------------
                move.w  #LED_1_DOT_8_DOT,d4 ; LED '1.8.'
                bra     VECTOR_ENTRY_UE ; LED 'U.E.'
; ---------------------------------------------------------------------------
                move.w  #LED_1_DOT_9_DOT,d4 ; LED '1.9.'
                bra     VECTOR_ENTRY_UE ; LED 'U.E.'
; ---------------------------------------------------------------------------

HBL_EXCEPTION:                          ; DATA XREF: START+1C88↑o
                move.w  #LED_1_DOT_A_DOT,d4 ; LED '1.A.'
                bra     VECTOR_ENTRY_UE ; LED 'U.E.'
; ---------------------------------------------------------------------------
                move.w  #LED_1_DOT_b_DOT,d4 ; LED '1.b.'
                bra     VECTOR_ENTRY_UE ; LED 'U.E.'
; ---------------------------------------------------------------------------

VBL_EXCEPTION:                          ; DATA XREF: START:loc_FA1C4C↑o
                                        ; START+1C80↑o
                move.w  #LED_1_DOT_C_DOT,d4 ; LED '1.C.'
                bra     VECTOR_ENTRY_UE ; LED 'U.E.'
; ---------------------------------------------------------------------------
                move.w  #LED_1_DOT_D_DOT,d4 ; LED '1.D.'
                bra     VECTOR_ENTRY_UE ; LED 'U.E.'
; ---------------------------------------------------------------------------
                move.w  #LED_1_DOT_E_DOT,d4 ; LED '1.E.'
                bra     VECTOR_ENTRY_UE ; LED 'U.E.'
; ---------------------------------------------------------------------------
                move.w  #LED_1_DOT_F_DOT,d4 ; LED '1.F.'
                bra     VECTOR_ENTRY_UE ; LED 'U.E.'
; ---------------------------------------------------------------------------
                move.w  #LED_2_DOT_0_DOT,d4 ; LED '2.0.'
                bra     VECTOR_ENTRY_UE ; LED 'U.E.'
; ---------------------------------------------------------------------------
                move.w  #LED_2_DOT_1_DOT,d4 ; LED '2.1.'
                bra     VECTOR_ENTRY_UE ; LED 'U.E.'
; ---------------------------------------------------------------------------
                move.w  #LED_2_DOT_2_DOT,d4 ; LED '2.2.'
                bra     VECTOR_ENTRY_UE ; LED 'U.E.'
; ---------------------------------------------------------------------------
                move.w  #LED_2_DOT_3_DOT,d4 ; LED '2.3.'
                bra     VECTOR_ENTRY_UE ; LED 'U.E.'
; ---------------------------------------------------------------------------
                move.w  #LED_2_DOT_4_DOT,d4 ; LED '2.4.'
                bra     VECTOR_ENTRY_UE ; LED 'U.E.'
; ---------------------------------------------------------------------------
                move.w  #LED_2_DOT_5_DOT,d4 ; LED '2.5.'
                bra     VECTOR_ENTRY_UE ; LED 'U.E.'
; ---------------------------------------------------------------------------
                move.w  #LED_2_DOT_6_DOT,d4 ; LED '2.6.'
                bra     VECTOR_ENTRY_UE ; LED 'U.E.'
; ---------------------------------------------------------------------------
                move.w  #LED_2_DOT_7_DOT,d4 ; LED '2.7.'
                bra     VECTOR_ENTRY_UE ; LED 'U.E.'
; ---------------------------------------------------------------------------
                move.w  #LED_2_DOT_8_DOT,d4 ; LED '2.8.'
                bra     VECTOR_ENTRY_UE ; LED 'U.E.'
; ---------------------------------------------------------------------------
                move.w  #LED_2_DOT_9_DOT,d4 ; LED '2.9.'
                bra     VECTOR_ENTRY_UE ; LED 'U.E.'
; ---------------------------------------------------------------------------
                move.w  #LED_2_DOT_A_DOT,d4 ; LED '2.A.'
                bra     VECTOR_ENTRY_UE ; LED 'U.E.'
; ---------------------------------------------------------------------------
                move.w  #LED_2_DOT_b_DOT,d4 ; LED '2.b.'
                bra     VECTOR_ENTRY_UE ; LED 'U.E.'
; ---------------------------------------------------------------------------
                move.w  #LED_2_DOT_C_DOT,d4 ; LED '2.C.'
                bra     VECTOR_ENTRY_UE ; LED 'U.E.'
; ---------------------------------------------------------------------------
                move.w  #LED_2_DOT_D_DOT,d4 ; LED '2.D.'
                bra     VECTOR_ENTRY_UE ; LED 'U.E.'
; ---------------------------------------------------------------------------
                move.w  #LED_2_DOT_E_DOT,d4 ; LED '2.E.'
                bra     VECTOR_ENTRY_UE ; LED 'U.E.'
; ---------------------------------------------------------------------------
                move.w  #LED_2_DOT_F_DOT,d4 ; LED '2.F.'
                bra     VECTOR_ENTRY_UE ; LED 'U.E.'
; ---------------------------------------------------------------------------
                move.w  #LED_3_DOT_0_DOT,d4 ; LED '3.0.'
                bra     VECTOR_ENTRY_UE ; LED 'U.E.'
; ---------------------------------------------------------------------------
                move.w  #LED_3_DOT_1_DOT,d4 ; LED '3.1.'
                bra     VECTOR_ENTRY_UE ; LED 'U.E.'
; ---------------------------------------------------------------------------
                move.w  #LED_3_DOT_2_DOT,d4 ; LED '3.2.'
                bra     VECTOR_ENTRY_UE ; LED 'U.E.'
; ---------------------------------------------------------------------------
                move.w  #LED_3_DOT_3_DOT,d4 ; LED '3.3.'
                bra     VECTOR_ENTRY_UE ; LED 'U.E.'
; ---------------------------------------------------------------------------
                move.w  #LED_3_DOT_4_DOT,d4 ; LED '3.4.'
                bra     VECTOR_ENTRY_UE ; LED 'U.E.'
; ---------------------------------------------------------------------------
                move.w  #LED_3_DOT_5_DOT,d4 ; LED '3.5.'
                bra     VECTOR_ENTRY_UE ; LED 'U.E.'
; ---------------------------------------------------------------------------
                move.w  #LED_3_DOT_6_DOT,d4 ; LED '3.6.'
                bra     VECTOR_ENTRY_UE ; LED 'U.E.'
; ---------------------------------------------------------------------------
                move.w  #LED_3_DOT_7_DOT,d4 ; LED '3.7.'
                bra     VECTOR_ENTRY_UE ; LED 'U.E.'
; ---------------------------------------------------------------------------
                move.w  #LED_3_DOT_8_DOT,d4 ; LED '3.8.'
                bra     VECTOR_ENTRY_UE ; LED 'U.E.'
; ---------------------------------------------------------------------------
                move.w  #LED_3_DOT_9_DOT,d4 ; LED '3.9.'
                bra     VECTOR_ENTRY_UE ; LED 'U.E.'
; ---------------------------------------------------------------------------
                move.w  #LED_3_DOT_A_DOT,d4 ; LED '3.A.'
                bra     VECTOR_ENTRY_UE ; LED 'U.E.'
; ---------------------------------------------------------------------------
                move.w  #LED_3_DOT_b_DOT,d4 ; LED '3.b.'
                bra     VECTOR_ENTRY_UE ; LED 'U.E.'
; ---------------------------------------------------------------------------
                move.w  #LED_3_DOT_C_DOT,d4 ; LED '3.C.'
                bra     VECTOR_ENTRY_UE ; LED 'U.E.'
; ---------------------------------------------------------------------------
                move.w  #LED_3_DOT_D_DOT,d4 ; LED '3.D.'
                bra     VECTOR_ENTRY_UE ; LED 'U.E.'
; ---------------------------------------------------------------------------
                move.w  #LED_3_DOT_E_DOT,d4 ; LED '3.E.'
                bra     VECTOR_ENTRY_UE ; LED 'U.E.'
; ---------------------------------------------------------------------------
                move.w  #LED_3_DOT_F_DOT,d4 ; LED '3.F.'
                bra     VECTOR_ENTRY_UE ; LED 'U.E.'
; ---------------------------------------------------------------------------
                move.w  #LED_4_DOT_0_DOT,d4 ; LED '4.0.'
                bra     VECTOR_ENTRY_UE ; LED 'U.E.'
; ---------------------------------------------------------------------------
                move.w  #LED_4_DOT_1_DOT,d4 ; LED '4.1.'
                bra     VECTOR_ENTRY_UE ; LED 'U.E.'
; ---------------------------------------------------------------------------
                move.w  #LED_4_DOT_2_DOT,d4 ; LED '4.2.'
                bra     VECTOR_ENTRY_UE ; LED 'U.E.'
; ---------------------------------------------------------------------------
                move.w  #LED_4_DOT_3_DOT,d4 ; LED '4.3.'
                bra     VECTOR_ENTRY_UE ; LED 'U.E.'
; ---------------------------------------------------------------------------
                move.w  #LED_4_DOT_4_DOT,d4 ; LED '4.4.'
                bra     VECTOR_ENTRY_UE ; LED 'U.E.'
; ---------------------------------------------------------------------------
                move.w  #LED_4_DOT_5_DOT,d4 ; LED '4.5.'
                bra     VECTOR_ENTRY_UE ; LED 'U.E.'
; ---------------------------------------------------------------------------
                move.w  #LED_4_DOT_6_DOT,d4 ; LED '4.6.'
                bra     VECTOR_ENTRY_UE ; LED 'U.E.'
; ---------------------------------------------------------------------------
                move.w  #LED_4_DOT_7_DOT,d4 ; LED '4.7.'
                bra     VECTOR_ENTRY_UE ; LED 'U.E.'
; ---------------------------------------------------------------------------
                move.w  #LED_4_DOT_8_DOT,d4 ; LED '4.8.'
                bra     VECTOR_ENTRY_UE ; LED 'U.E.'
; ---------------------------------------------------------------------------
                move.w  #LED_4_DOT_9_DOT,d4 ; LED '4.9.'
                bra     VECTOR_ENTRY_UE ; LED 'U.E.'
; ---------------------------------------------------------------------------
                move.w  #LED_4_DOT_A_DOT,d4 ; LED '4.A.'
                bra     VECTOR_ENTRY_UE ; LED 'U.E.'
; ---------------------------------------------------------------------------
                move.w  #LED_4_DOT_b_DOT,d4 ; LED '4.b.'
                bra     VECTOR_ENTRY_UE ; LED 'U.E.'
; ---------------------------------------------------------------------------
                move.w  #LED_4_DOT_C_DOT,d4 ; LED '4.C.'
                bra     VECTOR_ENTRY_UE ; LED 'U.E.'
; ---------------------------------------------------------------------------

TIMER_A_EXCEPTION:                      ; DATA XREF: START+1E08↑o
                move.w  #LED_4_DOT_D_DOT,d4 ; LED '4.D.'
                bra     VECTOR_ENTRY_UE ; LED 'U.E.'
; ---------------------------------------------------------------------------
                move.w  #LED_4_DOT_E_DOT,d4 ; LED '4.E.'
                bra     VECTOR_ENTRY_UE ; LED 'U.E.'
; ---------------------------------------------------------------------------
                move.w  #LED_4_DOT_F_DOT,d4 ; LED '4.F.'
                bra     VECTOR_ENTRY_UE ; LED 'U.E.'
; ---------------------------------------------------------------------------
                move.w  #LED_5_DOT_0_DOT,d4 ; LED '5.0.'
                bra     VECTOR_ENTRY_UE ; LED 'U.E.'
; ---------------------------------------------------------------------------
                move.w  #LED_5_DOT_1_DOT,d4 ; LED '5.1.'
                bra     VECTOR_ENTRY_UE ; LED 'U.E.'
; ---------------------------------------------------------------------------
                move.w  #LED_5_DOT_2_DOT,d4 ; LED '5.2.'
                bra     VECTOR_ENTRY_UE ; LED 'U.E.'
; ---------------------------------------------------------------------------
                move.w  #LED_5_DOT_3_DOT,d4 ; LED '5.3.'
                bra     VECTOR_ENTRY_UE ; LED 'U.E.'
; ---------------------------------------------------------------------------
                move.w  #LED_5_DOT_4_DOT,d4 ; LED '5.4.'
                bra     VECTOR_ENTRY_UE ; LED 'U.E.'
; ---------------------------------------------------------------------------
                move.w  #LED_5_DOT_5_DOT,d4 ; LED '5.5.'
                bra     VECTOR_ENTRY_UE ; LED 'U.E.'
; ---------------------------------------------------------------------------
                move.w  #LED_5_DOT_6_DOT,d4 ; LED '5.6.'
                bra     VECTOR_ENTRY_UE ; LED 'U.E.'
; ---------------------------------------------------------------------------
                move.w  #LED_5_DOT_7_DOT,d4 ; LED '5.7.'
                bra     VECTOR_ENTRY_UE ; LED 'U.E.'
; ---------------------------------------------------------------------------
                move.w  #LED_5_DOT_8_DOT,d4 ; LED '5.8.'
                bra     VECTOR_ENTRY_UE ; LED 'U.E.'
; ---------------------------------------------------------------------------
                move.w  #LED_5_DOT_9_DOT,d4 ; LED '5.9.'
                bra     VECTOR_ENTRY_UE ; LED 'U.E.'
; ---------------------------------------------------------------------------
                move.w  #LED_5_DOT_A_DOT,d4 ; LED '5.A.'
                bra     VECTOR_ENTRY_UE ; LED 'U.E.'
; ---------------------------------------------------------------------------
                move.w  #LED_5_DOT_b_DOT,d4 ; LED '5.b.'
                bra     VECTOR_ENTRY_UE ; LED 'U.E.'
; ---------------------------------------------------------------------------
                move.w  #LED_5_DOT_C_DOT,d4 ; LED '5.C.'
                bra     VECTOR_ENTRY_UE ; LED 'U.E.'
; ---------------------------------------------------------------------------
                move.w  #LED_5_DOT_D_DOT,d4 ; LED '5.D.'
                bra     VECTOR_ENTRY_UE ; LED 'U.E.'
; ---------------------------------------------------------------------------
                move.w  #LED_5_DOT_E_DOT,d4 ; LED '5.E.'
                bra     VECTOR_ENTRY_UE ; LED 'U.E.'
; ---------------------------------------------------------------------------
                move.w  #LED_5_DOT_F_DOT,d4 ; LED '5.F.'
                bra     VECTOR_ENTRY_UE ; LED 'U.E.'
; ---------------------------------------------------------------------------
                move.w  #LED_6_DOT_0_DOT,d4 ; LED '6.0.'
                bra     VECTOR_ENTRY_UE ; LED 'U.E.'
; ---------------------------------------------------------------------------
                move.w  #LED_6_DOT_1_DOT,d4 ; LED '6.1.'
                bra     VECTOR_ENTRY_UE ; LED 'U.E.'
; ---------------------------------------------------------------------------
                move.w  #LED_6_DOT_2_DOT,d4 ; LED '6.2.'
                bra     VECTOR_ENTRY_UE ; LED 'U.E.'
; ---------------------------------------------------------------------------
                move.w  #LED_6_DOT_3_DOT,d4 ; LED '6.3.'
                bra     VECTOR_ENTRY_UE ; LED 'U.E.'
; ---------------------------------------------------------------------------
                move.w  #LED_6_DOT_4_DOT,d4 ; LED '6.4.'
                bra     VECTOR_ENTRY_UE ; LED 'U.E.'
; ---------------------------------------------------------------------------
                move.w  #LED_6_DOT_5_DOT,d4 ; LED '6.5.'
                bra     VECTOR_ENTRY_UE ; LED 'U.E.'
; ---------------------------------------------------------------------------
                move.w  #LED_6_DOT_6_DOT,d4 ; LED '6.6.'
                bra     VECTOR_ENTRY_UE ; LED 'U.E.'
; ---------------------------------------------------------------------------
                move.w  #LED_6_DOT_7_DOT,d4 ; LED '6.7.'
                bra     VECTOR_ENTRY_UE ; LED 'U.E.'
; ---------------------------------------------------------------------------
                move.w  #LED_6_DOT_8_DOT,d4 ; LED '6.8.'
                bra     VECTOR_ENTRY_UE ; LED 'U.E.'
; ---------------------------------------------------------------------------
                move.w  #LED_6_DOT_9_DOT,d4 ; LED '6.9.'
                bra     VECTOR_ENTRY_UE ; LED 'U.E.'
; ---------------------------------------------------------------------------
                move.w  #LED_6_DOT_A_DOT,d4 ; LED '6.A.'
                bra     VECTOR_ENTRY_UE ; LED 'U.E.'
; ---------------------------------------------------------------------------
                move.w  #LED_6_DOT_b_DOT,d4 ; LED '6.b.'
                bra     VECTOR_ENTRY_UE ; LED 'U.E.'
; ---------------------------------------------------------------------------
                move.w  #LED_6_DOT_C_DOT,d4 ; LED '6.C.'
                bra     VECTOR_ENTRY_UE ; LED 'U.E.'
; ---------------------------------------------------------------------------
                move.w  #LED_6_DOT_D_DOT,d4 ; LED '6.D.'
                bra     VECTOR_ENTRY_UE ; LED 'U.E.'
; ---------------------------------------------------------------------------
                move.w  #LED_6_DOT_E_DOT,d4 ; LED '6.E.'
                bra     VECTOR_ENTRY_UE ; LED 'U.E.'
; ---------------------------------------------------------------------------
                move.w  #LED_6_DOT_F_DOT,d4 ; LED '6.F.'
                bra     VECTOR_ENTRY_UE ; LED 'U.E.'
; ---------------------------------------------------------------------------
                move.w  #LED_7_DOT_0_DOT,d4 ; LED '7.0.'
                bra     VECTOR_ENTRY_UE ; LED 'U.E.'
; ---------------------------------------------------------------------------
                move.w  #LED_7_DOT_1_DOT,d4 ; LED '7.1.'
                bra     VECTOR_ENTRY_UE ; LED 'U.E.'
; ---------------------------------------------------------------------------
                move.w  #LED_7_DOT_2_DOT,d4 ; LED '7.2.'
                bra     VECTOR_ENTRY_UE ; LED 'U.E.'
; ---------------------------------------------------------------------------
                move.w  #LED_7_DOT_3_DOT,d4 ; LED '7.3.'
                bra     VECTOR_ENTRY_UE ; LED 'U.E.'
; ---------------------------------------------------------------------------
                move.w  #LED_7_DOT_4_DOT,d4 ; LED '7.4.'
                bra     VECTOR_ENTRY_UE ; LED 'U.E.'
; ---------------------------------------------------------------------------
                move.w  #LED_7_DOT_5_DOT,d4 ; LED '7.5.'
                bra     VECTOR_ENTRY_UE ; LED 'U.E.'
; ---------------------------------------------------------------------------
                move.w  #LED_7_DOT_6_DOT,d4 ; LED '7.6.'
                bra     VECTOR_ENTRY_UE ; LED 'U.E.'
; ---------------------------------------------------------------------------
                move.w  #LED_7_DOT_7_DOT,d4 ; LED '7.7.'
                bra     VECTOR_ENTRY_UE ; LED 'U.E.'
; ---------------------------------------------------------------------------
                move.w  #LED_7_DOT_8_DOT,d4 ; LED '7.8.'
                bra     VECTOR_ENTRY_UE ; LED 'U.E.'
; ---------------------------------------------------------------------------
                move.w  #LED_7_DOT_9_DOT,d4 ; LED '7.9.'
                bra     VECTOR_ENTRY_UE ; LED 'U.E.'
; ---------------------------------------------------------------------------
                move.w  #LED_7_DOT_A_DOT,d4 ; LED '7.A.'
                bra     VECTOR_ENTRY_UE ; LED 'U.E.'
; ---------------------------------------------------------------------------
                move.w  #LED_7_DOT_b_DOT,d4 ; LED '7.b.'
                bra     VECTOR_ENTRY_UE ; LED 'U.E.'
; ---------------------------------------------------------------------------
                move.w  #LED_7_DOT_C_DOT,d4 ; LED '7.C.'
                bra     VECTOR_ENTRY_UE ; LED 'U.E.'
; ---------------------------------------------------------------------------
                move.w  #LED_7_DOT_D_DOT,d4 ; LED '7.D.'
                bra     VECTOR_ENTRY_UE ; LED 'U.E.'
; ---------------------------------------------------------------------------
                move.w  #LED_7_DOT_E_DOT,d4 ; LED '7.E.'
                bra     VECTOR_ENTRY_UE ; LED 'U.E.'
; ---------------------------------------------------------------------------
                move.w  #LED_7_DOT_F_DOT,d4 ; LED '7.F.'
                bra     VECTOR_ENTRY_UE ; LED 'U.E.'
; ---------------------------------------------------------------------------
                move.w  #LED_8_DOT_0_DOT,d4 ; LED '8.0.'
                bra     VECTOR_ENTRY_UE ; LED 'U.E.'
; ---------------------------------------------------------------------------
                move.w  #LED_8_DOT_1_DOT,d4 ; LED '8.1.'
                bra     VECTOR_ENTRY_UE ; LED 'U.E.'
; ---------------------------------------------------------------------------
                move.w  #LED_8_DOT_2_DOT,d4 ; LED '8.2.'
                bra     VECTOR_ENTRY_UE ; LED 'U.E.'
; ---------------------------------------------------------------------------
                move.w  #LED_8_DOT_3_DOT,d4 ; LED '8.3.'
                bra     VECTOR_ENTRY_UE ; LED 'U.E.'
; ---------------------------------------------------------------------------
                move.w  #LED_8_DOT_4_DOT,d4 ; LED '8.4.'
                bra     VECTOR_ENTRY_UE ; LED 'U.E.'
; ---------------------------------------------------------------------------
                move.w  #LED_8_DOT_5_DOT,d4 ; LED '8.5.'
                bra     VECTOR_ENTRY_UE ; LED 'U.E.'
; ---------------------------------------------------------------------------
                move.w  #LED_8_DOT_6_DOT,d4 ; LED '8.6.'
                bra     VECTOR_ENTRY_UE ; LED 'U.E.'
; ---------------------------------------------------------------------------
                move.w  #LED_8_DOT_7_DOT,d4 ; LED '8.7.'
                bra     VECTOR_ENTRY_UE ; LED 'U.E.'
; ---------------------------------------------------------------------------
                move.w  #LED_8_DOT_8_DOT,d4 ; LED '8.8.'
                bra     VECTOR_ENTRY_UE ; LED 'U.E.'
; ---------------------------------------------------------------------------
                move.w  #LED_8_DOT_9_DOT,d4 ; LED '8.9.'
                bra     VECTOR_ENTRY_UE ; LED 'U.E.'
; ---------------------------------------------------------------------------
                move.w  #LED_8_DOT_A_DOT,d4 ; LED '8.A.'
                bra     VECTOR_ENTRY_UE ; LED 'U.E.'
; ---------------------------------------------------------------------------
                move.w  #LED_8_DOT_b_DOT,d4 ; LED '8.b.'
                bra     VECTOR_ENTRY_UE ; LED 'U.E.'
; ---------------------------------------------------------------------------
                move.w  #LED_8_DOT_C_DOT,d4 ; LED '8.C.'
                bra     VECTOR_ENTRY_UE ; LED 'U.E.'
; ---------------------------------------------------------------------------
                move.w  #LED_8_DOT_D_DOT,d4 ; LED '8.D.'
                bra     VECTOR_ENTRY_UE ; LED 'U.E.'
; ---------------------------------------------------------------------------
                move.w  #LED_8_DOT_E_DOT,d4 ; LED '8.E.'
                bra     VECTOR_ENTRY_UE ; LED 'U.E.'
; ---------------------------------------------------------------------------
                move.w  #LED_8_DOT_F_DOT,d4 ; LED '8.F.'
                bra     VECTOR_ENTRY_UE ; LED 'U.E.'
; ---------------------------------------------------------------------------
                move.w  #LED_9_DOT_0_DOT,d4 ; LED '9.0.'
                bra     VECTOR_ENTRY_UE ; LED 'U.E.'
; ---------------------------------------------------------------------------
                move.w  #LED_9_DOT_1_DOT,d4 ; LED '9.1.'
                bra     VECTOR_ENTRY_UE ; LED 'U.E.'
; ---------------------------------------------------------------------------
                move.w  #LED_9_DOT_2_DOT,d4 ; LED '9.2.'
                bra     VECTOR_ENTRY_UE ; LED 'U.E.'
; ---------------------------------------------------------------------------
                move.w  #LED_9_DOT_3_DOT,d4 ; LED '9.3.'
                bra     VECTOR_ENTRY_UE ; LED 'U.E.'
; ---------------------------------------------------------------------------
                move.w  #LED_9_DOT_4_DOT,d4 ; LED '9.4.'
                bra     VECTOR_ENTRY_UE ; LED 'U.E.'
; ---------------------------------------------------------------------------
                move.w  #LED_9_DOT_5_DOT,d4 ; LED '9.5.'
                bra     VECTOR_ENTRY_UE ; LED 'U.E.'
; ---------------------------------------------------------------------------
                move.w  #LED_9_DOT_6_DOT,d4 ; LED '9.6.'
                bra     VECTOR_ENTRY_UE ; LED 'U.E.'
; ---------------------------------------------------------------------------
                move.w  #LED_9_DOT_7_DOT,d4 ; LED '9.7.'
                bra     VECTOR_ENTRY_UE ; LED 'U.E.'
; ---------------------------------------------------------------------------
                move.w  #LED_9_DOT_8_DOT,d4 ; LED '9.8.'
                bra     VECTOR_ENTRY_UE ; LED 'U.E.'
; ---------------------------------------------------------------------------
                move.w  #LED_9_DOT_9_DOT,d4 ; LED '9.9.'
                bra     VECTOR_ENTRY_UE ; LED 'U.E.'
; ---------------------------------------------------------------------------
                move.w  #LED_9_DOT_A_DOT,d4 ; LED '9.A.'
                bra     VECTOR_ENTRY_UE ; LED 'U.E.'
; ---------------------------------------------------------------------------
                move.w  #LED_9_DOT_b_DOT,d4 ; LED '9.b.'
                bra     VECTOR_ENTRY_UE ; LED 'U.E.'
; ---------------------------------------------------------------------------
                move.w  #LED_9_DOT_C_DOT,d4 ; LED '9.C.'
                bra     VECTOR_ENTRY_UE ; LED 'U.E.'
; ---------------------------------------------------------------------------
                move.w  #LED_9_DOT_D_DOT,d4 ; LED '9.D.'
                bra     VECTOR_ENTRY_UE ; LED 'U.E.'
; ---------------------------------------------------------------------------
                move.w  #LED_9_DOT_E_DOT,d4 ; LED '9.E.'
                bra     VECTOR_ENTRY_UE ; LED 'U.E.'
; ---------------------------------------------------------------------------
                move.w  #LED_9_DOT_F_DOT,d4 ; LED '9.F.'
                bra     VECTOR_ENTRY_UE ; LED 'U.E.'
; ---------------------------------------------------------------------------
                move.w  #LED_A_DOT_0_DOT,d4 ; LED 'A.0.'
                bra     VECTOR_ENTRY_UE ; LED 'U.E.'
; ---------------------------------------------------------------------------
                move.w  #LED_A_DOT_1_DOT,d4 ; LED 'A.1.'
                bra     VECTOR_ENTRY_UE ; LED 'U.E.'
; ---------------------------------------------------------------------------
                move.w  #LED_A_DOT_2_DOT,d4 ; LED 'A.2.'
                bra     VECTOR_ENTRY_UE ; LED 'U.E.'
; ---------------------------------------------------------------------------
                move.w  #LED_A_DOT_3_DOT,d4 ; LED 'A.3.'
                bra     VECTOR_ENTRY_UE ; LED 'U.E.'
; ---------------------------------------------------------------------------
                move.w  #LED_A_DOT_4_DOT,d4 ; LED 'A.4.'
                bra     VECTOR_ENTRY_UE ; LED 'U.E.'
; ---------------------------------------------------------------------------
                move.w  #LED_A_DOT_5_DOT,d4 ; LED 'A.5.'
                bra     VECTOR_ENTRY_UE ; LED 'U.E.'
; ---------------------------------------------------------------------------
                move.w  #LED_A_DOT_6_DOT,d4 ; LED 'A.6.'
                bra     VECTOR_ENTRY_UE ; LED 'U.E.'
; ---------------------------------------------------------------------------
                move.w  #LED_A_DOT_7_DOT,d4 ; LED 'A.7.'
                bra     VECTOR_ENTRY_UE ; LED 'U.E.'
; ---------------------------------------------------------------------------
                move.w  #LED_A_DOT_8_DOT,d4 ; LED 'A.8.'
                bra     VECTOR_ENTRY_UE ; LED 'U.E.'
; ---------------------------------------------------------------------------
                move.w  #LED_A_DOT_9_DOT,d4 ; LED 'A.9.'
                bra     VECTOR_ENTRY_UE ; LED 'U.E.'
; ---------------------------------------------------------------------------
                move.w  #LED_A_DOT_A_DOT,d4 ; LED 'A.A.'
                bra     VECTOR_ENTRY_UE ; LED 'U.E.'
; ---------------------------------------------------------------------------
                move.w  #LED_A_DOT_b_DOT,d4 ; LED 'A.b.'
                bra     VECTOR_ENTRY_UE ; LED 'U.E.'
; ---------------------------------------------------------------------------
                move.w  #LED_A_DOT_C_DOT,d4 ; LED 'A.C.'
                bra     VECTOR_ENTRY_UE ; LED 'U.E.'
; ---------------------------------------------------------------------------
                move.w  #LED_A_DOT_D_DOT,d4 ; LED 'A.D.'
                bra     VECTOR_ENTRY_UE ; LED 'U.E.'
; ---------------------------------------------------------------------------
                move.w  #LED_A_DOT_E_DOT,d4 ; LED 'A.E.'
                bra     VECTOR_ENTRY_UE ; LED 'U.E.'
; ---------------------------------------------------------------------------
                move.w  #LED_A_DOT_F_DOT,d4 ; LED 'A.F.'
                bra     VECTOR_ENTRY_UE ; LED 'U.E.'
; ---------------------------------------------------------------------------
                move.w  #LED_b_DOT_0_DOT,d4 ; LED 'b.0.'
                bra     VECTOR_ENTRY_UE ; LED 'U.E.'
; ---------------------------------------------------------------------------
                move.w  #LED_b_DOT_1_DOT,d4 ; LED 'b.1.'
                bra     VECTOR_ENTRY_UE ; LED 'U.E.'
; ---------------------------------------------------------------------------
                move.w  #LED_b_DOT_2_DOT,d4 ; LED 'b.2.'
                bra     VECTOR_ENTRY_UE ; LED 'U.E.'
; ---------------------------------------------------------------------------
                move.w  #LED_b_DOT_3_DOT,d4 ; LED 'b.3.'
                bra     VECTOR_ENTRY_UE ; LED 'U.E.'
; ---------------------------------------------------------------------------
                move.w  #LED_b_DOT_4_DOT,d4 ; LED 'b.4.'
                bra     VECTOR_ENTRY_UE ; LED 'U.E.'
; ---------------------------------------------------------------------------
                move.w  #LED_b_DOT_5_DOT,d4 ; LED 'b.5.'
                bra     VECTOR_ENTRY_UE ; LED 'U.E.'
; ---------------------------------------------------------------------------
                move.w  #LED_b_DOT_6_DOT,d4 ; LED 'b.6.'
                bra     VECTOR_ENTRY_UE ; LED 'U.E.'
; ---------------------------------------------------------------------------
                move.w  #LED_b_DOT_7_DOT,d4 ; LED 'b.7.'
                bra     VECTOR_ENTRY_UE ; LED 'U.E.'
; ---------------------------------------------------------------------------
                move.w  #LED_b_DOT_8_DOT,d4 ; LED 'b.8.'
                bra     VECTOR_ENTRY_UE ; LED 'U.E.'
; ---------------------------------------------------------------------------
                move.w  #LED_b_DOT_9_DOT,d4 ; LED 'b.9.'
                bra     VECTOR_ENTRY_UE ; LED 'U.E.'
; ---------------------------------------------------------------------------
                move.w  #LED_b_DOT_A_DOT,d4 ; LED 'b.A.'
                bra     VECTOR_ENTRY_UE ; LED 'U.E.'
; ---------------------------------------------------------------------------
                move.w  #LED_b_DOT_b_DOT,d4 ; LED 'b.b.'
                bra     VECTOR_ENTRY_UE ; LED 'U.E.'
; ---------------------------------------------------------------------------
                move.w  #LED_b_DOT_C_DOT,d4 ; LED 'b.C.'
                bra     VECTOR_ENTRY_UE ; LED 'U.E.'
; ---------------------------------------------------------------------------
                move.w  #LED_b_DOT_D_DOT,d4 ; LED 'b.D.'
                bra     VECTOR_ENTRY_UE ; LED 'U.E.'
; ---------------------------------------------------------------------------
                move.w  #LED_b_DOT_E_DOT,d4 ; LED 'b.E.'
                bra     VECTOR_ENTRY_UE ; LED 'U.E.'
; ---------------------------------------------------------------------------
                move.w  #LED_b_DOT_F_DOT,d4 ; LED 'b.F.'
                bra     VECTOR_ENTRY_UE ; LED 'U.E.'
; ---------------------------------------------------------------------------
                move.w  #LED_C_DOT_0_DOT,d4 ; LED 'C.0.'
                bra     VECTOR_ENTRY_UE ; LED 'U.E.'
; ---------------------------------------------------------------------------
                move.w  #LED_C_DOT_1_DOT,d4 ; LED 'C.1.'
                bra     VECTOR_ENTRY_UE ; LED 'U.E.'
; ---------------------------------------------------------------------------
                move.w  #LED_C_DOT_2_DOT,d4 ; LED 'C.2.'
                bra     VECTOR_ENTRY_UE ; LED 'U.E.'
; ---------------------------------------------------------------------------
                move.w  #LED_C_DOT_3_DOT,d4 ; LED 'C.3.'
                bra     VECTOR_ENTRY_UE ; LED 'U.E.'
; ---------------------------------------------------------------------------
                move.w  #LED_C_DOT_4_DOT,d4 ; LED 'C.4.'
                bra     VECTOR_ENTRY_UE ; LED 'U.E.'
; ---------------------------------------------------------------------------
                move.w  #LED_C_DOT_5_DOT,d4 ; LED 'C.5.'
                bra     VECTOR_ENTRY_UE ; LED 'U.E.'
; ---------------------------------------------------------------------------
                move.w  #LED_C_DOT_6_DOT,d4 ; LED 'C.6.'
                bra     VECTOR_ENTRY_UE ; LED 'U.E.'
; ---------------------------------------------------------------------------
                move.w  #LED_C_DOT_7_DOT,d4 ; LED 'C.7.'
                bra     VECTOR_ENTRY_UE ; LED 'U.E.'
; ---------------------------------------------------------------------------
                move.w  #LED_C_DOT_8_DOT,d4 ; LED 'C.8.'
                bra     VECTOR_ENTRY_UE ; LED 'U.E.'
; ---------------------------------------------------------------------------
                move.w  #LED_C_DOT_9_DOT,d4 ; LED 'C.9.'
                bra     VECTOR_ENTRY_UE ; LED 'U.E.'
; ---------------------------------------------------------------------------
                move.w  #LED_C_DOT_A_DOT,d4 ; LED 'C.A.'
                bra     VECTOR_ENTRY_UE ; LED 'U.E.'
; ---------------------------------------------------------------------------
                move.w  #LED_C_DOT_b_DOT,d4 ; LED 'C.b.'
                bra     VECTOR_ENTRY_UE ; LED 'U.E.'
; ---------------------------------------------------------------------------
                move.w  #LED_C_DOT_C_DOT,d4 ; LED 'C.C.'
                bra     VECTOR_ENTRY_UE ; LED 'U.E.'
; ---------------------------------------------------------------------------
                move.w  #LED_C_DOT_D_DOT,d4 ; LED 'C.D.'
                bra     VECTOR_ENTRY_UE ; LED 'U.E.'
; ---------------------------------------------------------------------------
                move.w  #LED_C_DOT_E_DOT,d4 ; LED 'C.E.'
                bra     VECTOR_ENTRY_UE ; LED 'U.E.'
; ---------------------------------------------------------------------------
                move.w  #LED_C_DOT_F_DOT,d4 ; LED 'C.F.'
                bra     VECTOR_ENTRY_UE ; LED 'U.E.'
; ---------------------------------------------------------------------------
                move.w  #LED_D_DOT_0_DOT,d4 ; LED 'D.0.'
                bra     VECTOR_ENTRY_UE ; LED 'U.E.'
; ---------------------------------------------------------------------------
                move.w  #LED_D_DOT_1_DOT,d4 ; LED 'D.1.'
                bra     VECTOR_ENTRY_UE ; LED 'U.E.'
; ---------------------------------------------------------------------------
                move.w  #LED_D_DOT_2_DOT,d4 ; LED 'D.2.'
                bra     VECTOR_ENTRY_UE ; LED 'U.E.'
; ---------------------------------------------------------------------------
                move.w  #LED_D_DOT_3_DOT,d4 ; LED 'D.3.'
                bra     VECTOR_ENTRY_UE ; LED 'U.E.'
; ---------------------------------------------------------------------------
                move.w  #LED_D_DOT_4_DOT,d4 ; LED 'D.4.'
                bra     VECTOR_ENTRY_UE ; LED 'U.E.'
; ---------------------------------------------------------------------------
                move.w  #LED_D_DOT_5_DOT,d4 ; LED 'D.5.'
                bra     VECTOR_ENTRY_UE ; LED 'U.E.'
; ---------------------------------------------------------------------------
                move.w  #LED_D_DOT_6_DOT,d4 ; LED 'D.6.'
                bra     VECTOR_ENTRY_UE ; LED 'U.E.'
; ---------------------------------------------------------------------------
                move.w  #LED_D_DOT_7_DOT,d4 ; LED 'D.7.'
                bra     VECTOR_ENTRY_UE ; LED 'U.E.'
; ---------------------------------------------------------------------------
                move.w  #LED_D_DOT_8_DOT,d4 ; LED 'D.8.'
                bra     VECTOR_ENTRY_UE ; LED 'U.E.'
; ---------------------------------------------------------------------------
                move.w  #LED_D_DOT_9_DOT,d4 ; LED 'D.9.'
                bra     VECTOR_ENTRY_UE ; LED 'U.E.'
; ---------------------------------------------------------------------------
                move.w  #LED_D_DOT_A_DOT,d4 ; LED 'D.A.'
                bra     VECTOR_ENTRY_UE ; LED 'U.E.'
; ---------------------------------------------------------------------------
                move.w  #LED_D_DOT_b_DOT,d4 ; LED 'D.b.'
                bra     VECTOR_ENTRY_UE ; LED 'U.E.'
; ---------------------------------------------------------------------------
                move.w  #LED_D_DOT_C_DOT,d4 ; LED 'D.C.'
                bra     VECTOR_ENTRY_UE ; LED 'U.E.'
; ---------------------------------------------------------------------------
                move.w  #LED_D_DOT_D_DOT,d4 ; LED 'D.D.'
                bra     VECTOR_ENTRY_UE ; LED 'U.E.'
; ---------------------------------------------------------------------------
                move.w  #LED_D_DOT_E_DOT,d4 ; LED 'D.E.'
                bra     VECTOR_ENTRY_UE ; LED 'U.E.'
; ---------------------------------------------------------------------------
                move.w  #LED_D_DOT_F_DOT,d4 ; LED 'D.F.'
                bra     VECTOR_ENTRY_UE ; LED 'U.E.'
; ---------------------------------------------------------------------------
                move.w  #LED_E_DOT_0_DOT,d4 ; LED 'E.0.'
                bra     VECTOR_ENTRY_UE ; LED 'U.E.'
; ---------------------------------------------------------------------------
                move.w  #LED_E_DOT_1_DOT,d4 ; LED 'E.1.'
                bra     VECTOR_ENTRY_UE ; LED 'U.E.'
; ---------------------------------------------------------------------------
                move.w  #LED_E_DOT_2_DOT,d4 ; LED 'E.2.'
                bra     VECTOR_ENTRY_UE ; LED 'U.E.'
; ---------------------------------------------------------------------------
                move.w  #LED_E_DOT_3_DOT,d4 ; LED 'E.3.'
                bra     VECTOR_ENTRY_UE ; LED 'U.E.'
; ---------------------------------------------------------------------------
                move.w  #LED_E_DOT_4_DOT,d4 ; LED 'E.4.'
                bra     VECTOR_ENTRY_UE ; LED 'U.E.'
; ---------------------------------------------------------------------------
                move.w  #LED_E_DOT_5_DOT,d4 ; LED 'E.5.'
                bra     VECTOR_ENTRY_UE ; LED 'U.E.'
; ---------------------------------------------------------------------------
                move.w  #LED_E_DOT_6_DOT,d4 ; LED 'E.6.'
                bra     VECTOR_ENTRY_UE ; LED 'U.E.'
; ---------------------------------------------------------------------------
                move.w  #LED_E_DOT_7_DOT,d4 ; LED 'E.7.'
                bra     VECTOR_ENTRY_UE ; LED 'U.E.'
; ---------------------------------------------------------------------------
                move.w  #LED_E_DOT_8_DOT,d4 ; LED 'E.8.'
                bra     VECTOR_ENTRY_UE ; LED 'U.E.'
; ---------------------------------------------------------------------------
                move.w  #LED_E_DOT_9_DOT,d4 ; LED 'E.9.'
                bra     VECTOR_ENTRY_UE ; LED 'U.E.'
; ---------------------------------------------------------------------------
                move.w  #LED_E_DOT_A_DOT,d4 ; LED 'E.A.'
                bra     VECTOR_ENTRY_UE ; LED 'U.E.'
; ---------------------------------------------------------------------------
                move.w  #LED_E_DOT_b_DOT,d4 ; LED 'E.b.'
                bra     VECTOR_ENTRY_UE ; LED 'U.E.'
; ---------------------------------------------------------------------------
                move.w  #LED_E_DOT_C_DOT,d4 ; LED 'E.C.'
                bra     VECTOR_ENTRY_UE ; LED 'U.E.'
; ---------------------------------------------------------------------------
                move.w  #LED_E_DOT_D_DOT,d4 ; LED 'E.D.'
                bra     VECTOR_ENTRY_UE ; LED 'U.E.'
; ---------------------------------------------------------------------------
                move.w  #LED_E_DOT_E_DOT,d4 ; LED 'E.E.'
                bra     VECTOR_ENTRY_UE ; LED 'U.E.'
; ---------------------------------------------------------------------------
                move.w  #LED_E_DOT_F_DOT,d4 ; LED 'E.F.'
                bra     VECTOR_ENTRY_UE ; LED 'U.E.'
; ---------------------------------------------------------------------------
                move.w  #LED_F_DOT_0_DOT,d4 ; LED 'F.0.'
                bra     VECTOR_ENTRY_UE ; LED 'U.E.'
; ---------------------------------------------------------------------------
                move.w  #LED_F_DOT_1_DOT,d4 ; LED 'F.1.'
                bra     VECTOR_ENTRY_UE ; LED 'U.E.'
; ---------------------------------------------------------------------------
                move.w  #LED_F_DOT_2_DOT,d4 ; LED 'F.2.'
                bra     VECTOR_ENTRY_UE ; LED 'U.E.'
; ---------------------------------------------------------------------------
                move.w  #LED_F_DOT_3_DOT,d4 ; LED 'F.3.'
                bra     VECTOR_ENTRY_UE ; LED 'U.E.'
; ---------------------------------------------------------------------------
                move.w  #LED_F_DOT_4_DOT,d4 ; LED 'F.4.'
                bra     VECTOR_ENTRY_UE ; LED 'U.E.'
; ---------------------------------------------------------------------------
                move.w  #LED_F_DOT_5_DOT,d4 ; LED 'F.5.'
                bra     VECTOR_ENTRY_UE ; LED 'U.E.'
; ---------------------------------------------------------------------------
                move.w  #LED_F_DOT_6_DOT,d4 ; LED 'F.6.'
                bra     VECTOR_ENTRY_UE ; LED 'U.E.'
; ---------------------------------------------------------------------------
                move.w  #LED_F_DOT_7_DOT,d4 ; LED 'F.7.'
                bra     VECTOR_ENTRY_UE ; LED 'U.E.'
; ---------------------------------------------------------------------------
                move.w  #LED_F_DOT_8_DOT,d4 ; LED 'F.8.'
                bra     VECTOR_ENTRY_UE ; LED 'U.E.'
; ---------------------------------------------------------------------------
                move.w  #LED_F_DOT_9_DOT,d4 ; LED 'F.9.'
                bra     VECTOR_ENTRY_UE ; LED 'U.E.'
; ---------------------------------------------------------------------------
                move.w  #LED_F_DOT_A_DOT,d4 ; LED 'F.A.'
                bra     VECTOR_ENTRY_UE ; LED 'U.E.'
; ---------------------------------------------------------------------------
                move.w  #LED_F_DOT_b_DOT,d4 ; LED 'F.b.'
                bra     VECTOR_ENTRY_UE ; LED 'U.E.'
; ---------------------------------------------------------------------------
                move.w  #LED_F_DOT_C_DOT,d4 ; LED 'F.C.'
                bra     VECTOR_ENTRY_UE ; LED 'U.E.'
; ---------------------------------------------------------------------------
                move.w  #LED_F_DOT_D_DOT,d4 ; LED 'F.D.'
                bra     VECTOR_ENTRY_UE ; LED 'U.E.'
; ---------------------------------------------------------------------------
                move.w  #LED_F_DOT_E_DOT,d4 ; LED 'F.E.'
                bra     VECTOR_ENTRY_UE ; LED 'U.E.'
; ---------------------------------------------------------------------------
                move.w  #LED_F_DOT_F_DOT,d4 ; LED 'F.F.'
                bra     VECTOR_ENTRY_UE ; LED 'U.E.'
; ---------------------------------------------------------------------------

NMI_EXCEPTION:                          ; DATA XREF: START+54↑o
                                        ; START+B0A↑o
                move.w  #LED_b_DOT_4_DOT,d3 ; LED 'b.4.'
                moveq   #$FFFFFFFF,d4   ; no second output
                bra.s   VECTOR_ENTRY_D3_loop ; first output
; ---------------------------------------------------------------------------

BUSERROR_EXCEPTION:                     ; DATA XREF: START+44↑o
                                        ; START+AFA↑o
                move.w  #LED_b_DOT_E_DOT,d3 ; LED 'b.E.'
                moveq   #$FFFFFFFF,d4   ; no second output
                bra.s   VECTOR_ENTRY_D3_loop ; first output
; ---------------------------------------------------------------------------

ADDRESSERROR_EXCEPTION:                 ; DATA XREF: START+4C↑o
                                        ; START+B02↑o
                move.w  #LED_A_DOT_E_DOT,d3 ; LED 'A.E.'
                moveq   #$FFFFFFFF,d4   ; no second output
                bra.s   VECTOR_ENTRY_D3_loop ; first output
; ---------------------------------------------------------------------------

VECTOR_ENTRY_UE:                        ; CODE XREF: EXCEPTION_VECTORS+4↑j
                                        ; EXCEPTION_VECTORS+C↑j ...
                move.w  #LED_U_DOT_E_DOT,d3 ; LED 'U.E.'

VECTOR_ENTRY_D3_loop:                   ; CODE XREF: EXCEPTION_VECTORS+7F6↑j
                                        ; EXCEPTION_VECTORS+7FE↑j ...
                move.w  d3,(IO_DIAG_LED_1).w ; first output
                move.w  #COUNTER_DELAY_1s,d0 ; 1s delay
                subq.w  #1,d0

_delay_loop:                            ; CODE XREF: EXCEPTION_VECTORS+826↓j
                move.l  #COUNTER_DELAY_250ms,d1 ; 0.25s delay

_delay_loop2:                           ; CODE XREF: EXCEPTION_VECTORS:_delay_loop3↓j
                subq.l  #1,d1
                nop
                bra     *+4
; ---------------------------------------------------------------------------

_delay_loop3:                           ; CODE XREF: EXCEPTION_VECTORS+820↑j
                bne.s   _delay_loop2
                dbf     d0,_delay_loop
                btst    #15,d4          ; is there a second output?
                bne.s   _no_second_output ; => no
                move.w  d4,(IO_DIAG_LED_1).w ; second output
                move.w  #COUNTER_DELAY_1s,d0 ; 1s delay
                subq.w  #1,d0

_delay_loop_b:                          ; CODE XREF: EXCEPTION_VECTORS+84A↓j
                move.l  #COUNTER_DELAY_250ms,d1 ; 0.25s delay

_delay_loop_b2:                         ; CODE XREF: EXCEPTION_VECTORS:_delay_loop_b3↓j
                subq.l  #1,d1
                nop
                bra     *+4
; ---------------------------------------------------------------------------

_delay_loop_b3:                         ; CODE XREF: EXCEPTION_VECTORS+844↑j
                bne.s   _delay_loop_b2
                dbf     d0,_delay_loop_b

_no_second_output:                      ; CODE XREF: EXCEPTION_VECTORS+82E↑j
                clr.w   d0              ; show current state
                lea     (BCD2LED).l,a0
                move.b  (DIAG_SRAM_TEST_NUMBER).l,d0
                asr.w   #4,d0
                move.b  (a0,d0.w),(IO_DIAG_LED_1).w ; LED 1 hexdigit
                move.b  (DIAG_SRAM_TEST_NUMBER).l,d0
                andi.w  #$F,d0
                move.b  (a0,d0.w),(IO_DIAG_LED_2).w ; LED 2 hexdigit
                move.w  #COUNTER_DELAY_1s,d0 ; 1s delay
                subq.w  #1,d0

_delay_loop_c:                          ; CODE XREF: EXCEPTION_VECTORS+88A↓j
                move.l  #COUNTER_DELAY_250ms,d1 ; 0.25s delay

_delay_loop_c2:                         ; CODE XREF: EXCEPTION_VECTORS:_delay_loop_c3↓j
                subq.l  #1,d1
                nop
                bra     *+4
; ---------------------------------------------------------------------------

_delay_loop_c3:                         ; CODE XREF: EXCEPTION_VECTORS+884↑j
                bne.s   _delay_loop_c2
                dbf     d0,_delay_loop_c
                bra     VECTOR_ENTRY_D3_loop ; first output
; End of function EXCEPTION_VECTORS


; =============== S U B R O U T I N E =======================================


proc            LED_show_hex_byte_D0()  ; CODE XREF: START+20A↑p
                                        ; START+26A↑p ...
                move.l  a0,-(sp)
                move.l  d0,-(sp)
                lea     (BCD2LED).l,a0
                asr.b   #4,d0
                andi.w  #$F,d0
                move.b  (a0,d0.w),(IO_DIAG_LED_1).w ; LED 1 hexdigit
                move.l  (sp),d0
                andi.w  #$F,d0
                move.b  (a0,d0.w),(IO_DIAG_LED_2).w ; LED 2 hexdigit
                move.l  (sp)+,d0
                movea.l (sp)+,a0
                rts
; End of function LED_show_hex_byte_D0

; ---------------------------------------------------------------------------
; LED Bits (0 = LED on, 1 = LED off)
;  -0-
; |   |
; 5   1
; |   |
;  -6-
; |   |
; 4   2
; |   |  -
;  -3-  |7|
;        -

BCD2LED:        dc.b %11000000          ; DATA XREF: START+27A2↑o
                                        ; LED_show_hex_byte_stack↑o ...
                                        ; 0
                dc.b %11111001          ; 1
                dc.b %10100100          ; 2
                dc.b %10110000          ; 3
                dc.b %10011001          ; 4
                dc.b %10010010          ; 5
                dc.b %10000010          ; 6
                dc.b %11111000          ; 7
                dc.b %10000000          ; 8
                dc.b %10010000          ; 9
                dc.b %10001000          ; A
                dc.b %10000011          ; b
                dc.b %10100111          ; C
                dc.b %10100001          ; D
                dc.b %10000110          ; E
                dc.b %10001110          ; F
snd_test_channel_A:dc.w $0102           ; DATA XREF: START+404↑o
                                        ; Channel A Freq High = 2 => ~244Hz
                dc.w $0000              ; Channel A Freq Low = 0
                dc.w $0D0D              ; Envelope Shape = /------------------------------------
                dc.w $0B20              ; Envelope Period High = 32
                dc.w $0C00              ; Envelope Period Low = 0
                dc.w $080F              ; Channel A Amplitude Control = 15
                dc.w $07FE              ; Mixer Control = Channel A Tone
                dc.w $1014              ; Delay 200ms
                dc.w $0800              ; Channel A Amplitude Control = 0
                dc.b $80                ; END
snd_test_channel_B:dc.w $0301           ; DATA XREF: START+25EE↑o
                                        ; Channel B Freq High = 1 => ~488Hz
                dc.w $0200              ; Channel B Freq Low = 0
                dc.w $0D0D              ; Envelope Shape = /------------------------------------
                dc.w $0B20              ; Envelope Period High = 32
                dc.w $0C00              ; Envelope Period Low = 0
                dc.w $090F              ; Channel B Amplitude Control = 15
                dc.w $07FD              ; Mixer Control = Channel B Tone
                dc.w $1014              ; Delay 200ms
                dc.w $0900              ; Channel B Amplitude Control = 0
                dc.b $FF                ; END
mfp_reg_table:  dc.l IO_mfp_AER         ; DATA XREF: START+B26↑o
                dc.b $FF                ; Test all 8 bits
                dc.b $01
                dc.l IO_mfp_VR
                dc.b $F0                ; Test the top 4 bits only
                dc.b $10
                dc.l 0                  ; end of list
                dc.b 0, 0
video_reg_table:dc.l IO_shifter_video_base_high ; DATA XREF: START+B72↑o
                dc.b $3F                ; Test the lower 6 bits
                dc.b $01
                dc.l IO_shifter_video_base_mid
                dc.b $FF                ; Test all 8 bits
                dc.b $01
                dc.l IO_shifter_video_base_low
                dc.b $FE                ; Test the upper 7 bits
                dc.b $02
                dc.l IO_shifter_scanline_width
                dc.b $FF                ; Test all 8 bits
                dc.b $01
                dc.l 0                  ; end of list
                dc.b 0, 0
dma_reg_table:  dc.l IO_dma_ptr_high    ; DATA XREF: START+BE8↑o
                dc.b $3F ; ?            ; Test the lower 6 bits
                dc.b $01
                dc.l IO_dma_ptr_mid
                dc.b $FF                ; Test all 8 bits
                dc.b $01
                dc.l IO_dma_ptr_low
                dc.b $FE                ; Test the upper 7 bits
                dc.b $02
                dc.l 0                  ; end of list
                dc.b 0, 0
rtc_reg_table:  dc.l IO_rtc_10_year_counter ; This is supposed to test the RTC registers, but is not used
                dc.b $F                 ; Test the lower 4 bits
                dc.b 1
                dc.l IO_rtc_1_year_counter
                dc.b $F                 ; Test the lower 4 bits
                dc.b 1
                dc.l IO_rtc_10_month_counter
                dc.b 1                  ; Test bit 0
                dc.b 1
                dc.l IO_rtc_1_month_counter
                dc.b $F                 ; Test the lower 4 bits
                dc.b 1
                dc.l IO_rtc_10_day_counter
                dc.b 3                  ; Test bit 0 & 1
                dc.b 1
                dc.l IO_rtc_1_day_counter
                dc.b $F                 ; Test the lower 4 bits
                dc.b 1
                dc.l IO_rtc_day_of_the_week_counter
                dc.b 7                  ; Test bit 0-2
                dc.b 1
                dc.l IO_rtc_10_hour_counter
                dc.b 3                  ; Test bit 0 & 1
                dc.b 1
                dc.l IO_rtc_1_hour_counter
                dc.b $F                 ; Test the lower 4 bits
                dc.b 1
                dc.l IO_rtc_10_minute_counter
                dc.b 7                  ; Test bits 0-2
                dc.b 1
                dc.l IO_rtc_1_minute_counter
                dc.b $F                 ; Test the lower 4 bits
                dc.b 1
                dc.l IO_rtc_10_counter
                dc.b 7                  ; Test bits 0-2
                dc.b 1
                dc.l IO_rtc_1s_counter
                dc.b $F                 ; Test the lower 4 bits
                dc.b 1
                dc.l 0                  ; end of list
                dc.b 0, 0
blitter_reg_table:dc.l IO_blitter_srcxinc ; DATA XREF: START+CA2↑o
                                        ; source x increment
                dc.w $FFFE              ; Test the upper 15 bits
                dc.w 2
                dc.l IO_blitter_srcyinc ; source y increment
                dc.w $FFFE              ; Test the upper 15 bits
                dc.w 2
                dc.l IO_blitter_srcaddr ; source address
                dc.w $7F                ; Test the lower 7 bits
                dc.w 1
                dc.l IO_blitter_srcaddr+2 ; source address
                dc.w $FFFE              ; Test the upper 15 bits
                dc.w 2
                dc.l IO_blitter_endmsk1 ; left end mask
                dc.w $FFFF              ; Test all bits
                dc.w 1
                dc.l IO_blitter_endmsk2 ; middle mask
                dc.w $FFFF              ; Test all bits
                dc.w 1
                dc.l IO_blitter_endmsk3 ; right end mask
                dc.w $FFFF              ; Test all bits
                dc.w 1
                dc.l IO_blitter_dstxinc ; destination x increment
                dc.w $FF0E              ; Test bit 1-3 and the upper 8 bits
                dc.w 2
                dc.l IO_blitter_dstyinc ; destination y increment
                dc.w $FFFE              ; Test the upper 15 bits
                dc.w 2
                dc.l IO_blitter_dstaddr ; destination address
                dc.w $7F                ; Test the lower 7 bits
                dc.w 1
                dc.l IO_blitter_dstaddr+2 ; destination address
                dc.w $FFFE              ; Test the upper 15 bits
                dc.w 2
                dc.l IO_blitter_xcount  ; x count
                dc.w $FFFF              ; Test all bits
                dc.w 1
                dc.l IO_blitter_ycount  ; y count
                dc.w $FFFF              ; Test all bits
                dc.w 1
                dc.l 0                  ; end of list
                dc.w 0
                dc.w 0
blitter_clear_destination:dc.w 0        ; DATA XREF: START+1F60↑o
                                        ; SrcXinc
                dc.w 0                  ; SrcYinc
                dc.l RAM_video_buffer   ; SrcAddr
                dc.w $FFFF              ; EndMsk1
                dc.w $FFFF              ; EndMsk2
                dc.w $FFFF              ; EndMsk3
                dc.w 0                  ; DstXinc
                dc.w 2                  ; DstYinc
                dc.l RAM_video_buffer   ; DstAddr
                dc.w 1                  ; XCount
                dc.w 32000              ; YCount
                dc.b 2                  ; hop: source
                dc.b 0                  ; op: all destination bits = 0
                dc.w 0                  ; LineNum
blitter_defect_test:dc.w 2              ; DATA XREF: START:loc_FA2000↑o
                                        ; START:loc_FA2040↑o
                                        ; SrcXinc
                dc.w 18                 ; SrcYinc
                dc.l RAM_video_buffer   ; SrcAddr
                dc.w $FFFF              ; EndMsk1
                dc.w $FFFF              ; EndMsk2
                dc.w $FFFF              ; EndMsk3
                dc.w $FFFF
                dc.w $FFFF              ; these 3 words are wrong?!? They should not exist!
                dc.w $FFFF
                dc.w 2                  ; DstXinc
                dc.w 18                 ; DstYinc
                dc.l RAM_video_buffer   ; DstAddr
                dc.w 32                 ; XCount
                dc.w 384                ; YCount
                dc.b 2                  ; hop: source
                dc.b 12                 ; op: destination = ~source
                dc.w 0                  ; LineNum
blitter_invert_copy:dc.w 0              ; DATA XREF: START:loc_FA213A↑o
                                        ; SrcXinc
                dc.w 2                  ; SrcYinc
                dc.l RAM_video_buffer   ; SrcAddr
                dc.w $FFFF              ; EndMsk1
                dc.w $FFFF              ; EndMsk2
                dc.w $FFFF              ; EndMsk3
                dc.w 0                  ; DstXinc
                dc.w 2                  ; DstYinc
                dc.l RAM_video_buffer   ; DstAddr
                dc.w 1                  ; XCount
                dc.w 32000              ; YCount
                dc.b 2                  ; hop: source
                dc.b 12                 ; op: destination = ~source
                dc.w 0                  ; LineNum
rtc_test_values:dc.b 1                  ; year = 11
                dc.b 1
                dc.b 0                  ; month = 9
                dc.b 9
                dc.b 2                  ; day = 24
                dc.b 4
                dc.b 3                  ; day-of-the-week
                dc.b 0                  ; hour = 00
                dc.b 0
                dc.b 0                  ; minute = 00
                dc.b 0
                dc.b 0                  ; second = 00
rtc_test_values_plus_12:dc.b 0          ; DATA XREF: START+22EA↑o
                align 2
CRC16_TABLE:    dc.w $0000,$1021,$2042,$3063,$4084,$50A5,$60C6,$70E7
                                        ; DATA XREF: START+46A↑o
                                        ; START+872↑o
                dc.w $8108,$9129,$A14A,$B16B,$C18C,$D1AD,$E1CE,$F1EF
                dc.w $1231,$0210,$3273,$2252,$52B5,$4294,$72F7,$62D6
                dc.w $9339,$8318,$B37B,$A35A,$D3BD,$C39C,$F3FF,$E3DE
                dc.w $2462,$3443,$0420,$1401,$64E6,$74C7,$44A4,$5485
                dc.w $A56A,$B54B,$8528,$9509,$E5EE,$F5CF,$C5AC,$D58D
                dc.w $3653,$2672,$1611,$0630,$76D7,$66F6,$5695,$46B4
                dc.w $B75B,$A77A,$9719,$8738,$F7DF,$E7FE,$D79D,$C7BC
                dc.w $48C4,$58E5,$6886,$78A7,$0840,$1861,$2802,$3823
                dc.w $C9CC,$D9ED,$E98E,$F9AF,$8948,$9969,$A90A,$B92B
                dc.w $5AF5,$4AD4,$7AB7,$6A96,$1A71,$0A50,$3A33,$2A12
                dc.w $DBFD,$CBDC,$FBBF,$EB9E,$9B79,$8B58,$BB3B,$AB1A
                dc.w $6CA6,$7C87,$4CE4,$5CC5,$2C22,$3C03,$0C60,$1C41
                dc.w $EDAE,$FD8F,$CDEC,$DDCD,$AD2A,$BD0B,$8D68,$9D49
                dc.w $7E97,$6EB6,$5ED5,$4EF4,$3E13,$2E32,$1E51,$0E70
                dc.w $FF9F,$EFBE,$DFDD,$CFFC,$BF1B,$AF3A,$9F59,$8F78
                dc.w $9188,$81A9,$B1CA,$A1EB,$D10C,$C12D,$F14E,$E16F
                dc.w $1080,$00A1,$30C2,$20E3,$5004,$4025,$7046,$6067
                dc.w $83B9,$9398,$A3FB,$B3DA,$C33D,$D31C,$E37F,$F35E
                dc.w $02B1,$1290,$22F3,$32D2,$4235,$5214,$6277,$7256
                dc.w $B5EA,$A5CB,$95A8,$8589,$F56E,$E54F,$D52C,$C50D
                dc.w $34E2,$24C3,$14A0,$0481,$7466,$6447,$5424,$4405
                dc.w $A7DB,$B7FA,$8799,$97B8,$E75F,$F77E,$C71D,$D73C
                dc.w $26D3,$36F2,$0691,$16B0,$6657,$7676,$4615,$5634
                dc.w $D94C,$C96D,$F90E,$E92F,$99C8,$89E9,$B98A,$A9AB
                dc.w $5844,$4865,$7806,$6827,$18C0,$08E1,$3882,$28A3
                dc.w $CB7D,$DB5C,$EB3F,$FB1E,$8BF9,$9BD8,$ABBB,$BB9A
                dc.w $4A75,$5A54,$6A37,$7A16,$0AF1,$1AD0,$2AB3,$3A92
                dc.w $FD2E,$ED0F,$DD6C,$CD4D,$BDAA,$AD8B,$9DE8,$8DC9
                dc.w $7C26,$6C07,$5C64,$4C45,$3CA2,$2C83,$1CE0,$0CC1
                dc.w $EF1F,$FF3E,$CF5D,$DF7C,$AF9B,$BFBA,$8FD9,$9FF8
                dc.w $6E17,$7E36,$4E55,$5E74,$2E93,$3EB2,$0ED1,$1EF0

                dcb.b $9A4,$FF
DIAG_ROM_CHECKSM:dc.w $61A9             ; DATA XREF: START+45E↑o
                                        ; START+488↑r
                ds.b $1C000
; end of 'DIAGROM'

; ===========================================================================

; Segment type: Regular
                res 'DIAG', 32767
DIAG_SRAM_TEST_NUMBER:ds.b 1            ; DATA XREF: START+1E↑w
                                        ; START+A2↑w ...
                ds.b 1
DIAG_SRAM_VBL_or_TIMER_A_COUNTER:ds.b 2 ; DATA XREF: START+1B6C↑w
                                        ; START+1B9C↑r ...
DIAG_SRAM_HBL_COUNTER:ds.b 2            ; DATA XREF: START+1C00↑w
                                        ; START+1C40↑r ...
                ds.b $FFFA
DIAG_SRAM_STACK_TOP:ds.b $10000         ; DATA XREF: START+4↑o
                                        ; START+65C↑o
; end of 'DIAGSRAM'

; ===========================================================================

; Segment type: Regular
                res 'IO', 32767
                ds.b $8000
IO_memory_conf_reg:ds.b $E              ; DATA XREF: START+12↑w
IO_DIAG_LED_1:  ds.b 1                  ; DATA XREF: START+18↑w
                                        ; START:TEST_01_CPU_REGS_AND_SHIFT↑w ...
                                        ; FF U8 => DX2
IO_DIAG_LED_2:  ds.b 1                  ; DATA XREF: START+27B0↑w
                                        ; START+27D4↑w ...
                                        ; FF U7 => DX1
                ds.b $1F0
IO_SHIFTER:     ds.b 1
IO_shifter_video_base_high:ds.b 1       ; DATA XREF: START+68↑w
                                        ; START+BB0↑w ...
                ds.b 1
IO_shifter_video_base_mid:ds.b 1        ; DATA XREF: START+62↑w
                                        ; START:loc_FA0C22↑w ...
                ds.b 1
IO_shifter_vaddr_high:ds.b 1
                ds.b 1
IO_shifter_vaddr_mid:ds.b 1
                ds.b 1
IO_shifter_vaddr_low:ds.b 1
IO_shifter_shadow_video:ds.b 1          ; DATA XREF: START+1A36↑w
                                        ; START+1B04↑w
                                        ; 1:enable shadow controller video transfer, 0:disable
                ds.b 1
                ds.b 1
IO_shifter_video_base_low:ds.b 1        ; DATA XREF: DIAGROM:00FA32FE↑o
                ds.b 1
IO_shifter_scanline_width:ds.b 1        ; DATA XREF: DIAGROM:00FA3304↑o
                ds.b $30
IO_shifter_color_palette:ds.b $20       ; DATA XREF: START+6E↑w
IO_video_st_shifter_mode:ds.b 1         ; DATA XREF: START+A↑w
                ds.b $1E
IO_video_lcd_controller:ds.b $381       ; DATA XREF: START+196C↑w
                                        ; START+1B38↑w
                                        ; 0x10: REFRESH_MACHINE output (turns on refresh controller)
                ds.b 4
IO_dma_sector_count:ds.b 2              ; DATA XREF: START+C2A↑o
                                        ; START+2224↑w
IO_dma_mode_control:ds.b 2              ; DATA XREF: START+C20↑w
                                        ; START:loc_FA0CE2↑w ...
                ds.b 1
IO_dma_ptr_high:ds.b 1                  ; DATA XREF: START+2202↑w
                                        ; START+2234↑r ...
                ds.b 1
IO_dma_ptr_mid: ds.b 1                  ; DATA XREF: START+21FC↑w
                                        ; START+223A↑r ...
                ds.b 1
IO_dma_ptr_low: ds.b 1                  ; DATA XREF: START+21F6↑w
                                        ; START+2240↑r ...
                ds.b $1F2
IO_snd_reg_select:ds.b 2                ; DATA XREF: START+418↑w
                                        ; START+2602↑w
IO_snd_reg_read:ds.b 1                  ; DATA XREF: START+41C↑w
                                        ; START+2606↑w
                ds.b $1FD
IO_BLITTER_halftone:ds.b $20            ; DATA XREF: START+1E34↑o
                                        ; START+1E8C↑o ...
IO_blitter_srcxinc:ds.b 2               ; DATA XREF: START+1E3A↑o
                                        ; START+1F66↑o ...
                                        ; source x increment
IO_blitter_srcyinc:ds.b 2               ; DATA XREF: DIAGROM:00FA3384↑o
                                        ; source y increment
IO_blitter_srcaddr:ds.b 4               ; DATA XREF: DIAGROM:00FA338C↑o
                                        ; DIAGROM:00FA3394↑o
                                        ; source address
IO_blitter_endmsk1:ds.b 2               ; DATA XREF: DIAGROM:00FA339C↑o
                                        ; left end mask
IO_blitter_endmsk2:ds.b 2               ; DATA XREF: DIAGROM:00FA33A4↑o
                                        ; middle mask
IO_blitter_endmsk3:ds.b 2               ; DATA XREF: DIAGROM:00FA33AC↑o
                                        ; right end mask
IO_blitter_dstxinc:ds.b 2               ; DATA XREF: DIAGROM:00FA33B4↑o
                                        ; destination x increment
IO_blitter_dstyinc:ds.b 2               ; DATA XREF: DIAGROM:00FA33BC↑o
                                        ; destination y increment
IO_blitter_dstaddr:ds.b 4               ; DATA XREF: DIAGROM:00FA33C4↑o
                                        ; DIAGROM:00FA33CC↑o
                                        ; destination address
IO_blitter_xcount:ds.b 2                ; DATA XREF: DIAGROM:00FA33D4↑o
                                        ; x count
IO_blitter_ycount:ds.b 2                ; DATA XREF: DIAGROM:00FA33DC↑o
                                        ; y count
IO_blitter_hop: ds.b 1                  ; halftone operation
IO_blitter_op:  ds.b 1                  ; logical operation
IO_blitter_linenum:ds.b 1               ; DATA XREF: START+1F76↑o
                                        ; START+1F9E↑o ...
                                        ; line number/smudge/HOG/busy
IO_blitter_skew:ds.b 1                  ; source shift
                ds.b $7C2

; FF9200 => select line BUTSEL
IO_CONFIG_DIP:  ds.b 2                  ; DATA XREF: START+13E↑r
                                        ; START:loc_FA01EA↑r ...
; FF9202 => select line JOYSEL
                ds.b 2
                ds.b 2
                ds.b 2
                ds.b 2
                ds.b 2
                ds.b 2
                ds.b 2
; FF921X => select line PADSEL
IO_CONFIG_POWER_VOLTAGE:ds.b 2          ; DATA XREF: START+1A8↑r
                                        ; 8-bit Common Power Voltage Level in 100mV steps (PAD0X)
                ds.b 2                  ; PAD0Y
IO_CONFIG_REF_VOLTAGE:ds.b 2            ; DATA XREF: START+2C4↑r
                                        ; 8-bit Reference Voltage Level in 100mV steps (PAD1X)
                ds.b 2                  ; PAD1Y
                ds.b $11E9
IO_DIAG_LED:    ds.b 1                  ; DATA XREF: START+26↑w
                                        ; START+5C↑w ...
                                        ; Bit 6: 0:yellow LED on, 1:yellow LED off
                ds.b $FE
                ds.b 1
IO_DIAG_DIPSW:  ds.b 1                  ; DATA XREF: START+92↑r
                                        ; START+EA↑r ...
                                        ; DIP Switches, #0=0:Function button pressed, #1=1:enable measurement mode, #5=1:sound check enabled, #6=1:stop at test failure
                ds.b $54FE
IO_mfp:         ds.b 1                  ; 68901
IO_mfp_GPIP:    ds.b 1                  ; DATA XREF: START+666↑r
                                        ; START+674↑r ...
                ds.b 1
IO_mfp_AER:     ds.b 1                  ; DATA XREF: DIAGROM:mfp_reg_table↑o
                ds.b 1
IO_mfp_DDR:     ds.b 1
                ds.b 1
IO_mfp_IERA:    ds.b 1                  ; DATA XREF: START+1CCE↑w
                                        ; START:loc_FA1E74↑w
                ds.b 1
IO_mfp_IERB:    ds.b 1
                ds.b 1
IO_mfp_IPRA:    ds.b 1
                ds.b 1
IO_mfp_IPRB:    ds.b 1
                ds.b 1
IO_mfp_ISRA:    ds.b 1                  ; DATA XREF: MFP_TIMER_A+6↑w
                ds.b 1
IO_mfp_ISRB:    ds.b 1
                ds.b 1
IO_mfp_IMRA:    ds.b 1                  ; DATA XREF: START+1CD4↑w
                                        ; START+1E02↑w
                ds.b 1
IO_mfp_IMRB:    ds.b 1
                ds.b 1
IO_mfp_VR:      ds.b 1                  ; DATA XREF: START+1CBC↑w
                                        ; DIAGROM:00FA32E6↑o
                ds.b 1
IO_mfp_TACR:    ds.b 1                  ; DATA XREF: START+1CC2↑w
                ds.b 1
IO_mfp_TBCR:    ds.b 1
                ds.b 1
IO_mfp_TCDCR:   ds.b 1                  ; DATA XREF: START+FA6↑w
                ds.b 1
IO_mfp_TADR:    ds.b 1                  ; DATA XREF: START+1CC8↑w
                ds.b 1
IO_mfp_TBDR:    ds.b 1
                ds.b 1
IO_mfp_TCDR:    ds.b 1
                ds.b 1
IO_mfp_TDDR:    ds.b 1                  ; DATA XREF: START+FAC↑w
                ds.b 1
IO_mfp_SCR:     ds.b 1
                ds.b 1
IO_mfp_UCR:     ds.b 1                  ; DATA XREF: START+FB2↑w
                ds.b 1
IO_mfp_RSR:     ds.b 1                  ; DATA XREF: START+FB8↑w
                ds.b 1
IO_mfp_TSR:     ds.b 1                  ; DATA XREF: START+FBE↑w
                                        ; START+FFE↑r ...
                ds.b 1
IO_mfp_UDR:     ds.b 1                  ; DATA XREF: START+FDE↑w
                                        ; START+1004↑w
                ds.b 1
                ds.b 1
                ds.b $1CE
IO_acia_kbd_ctrl:ds.b 2                 ; DATA XREF: START+1146↑w
                                        ; START+1154↑w ...
                                        ; MC6850P
IO_acia_kbd_data:ds.b 2                 ; DATA XREF: START+1174↑r
                                        ; START+1194↑w ...
IO_acia_midi_ctrl:ds.b 2                ; DATA XREF: START+1088↑w
                                        ; START+1096↑w ...
IO_acia_midi_data:ds.b 2                ; DATA XREF: START+10B6↑w
                                        ; START+10DE↑w
                ds.b $18
IO_RTC:         ds.b 1                  ; Ricoh RF5C15
IO_rtc_1s_counter:ds.b 1                ; DATA XREF: START+22A2↑w
                                        ; START+22F0↑o ...
                ds.b 1
IO_rtc_10_counter:ds.b 1                ; DATA XREF: DIAGROM:00FA336A↑o
                ds.b 1
IO_rtc_1_minute_counter:ds.b 1          ; DATA XREF: DIAGROM:00FA3364↑o
                ds.b 1
IO_rtc_10_minute_counter:ds.b 1         ; DATA XREF: DIAGROM:00FA335E↑o
                ds.b 1
IO_rtc_1_hour_counter:ds.b 1            ; DATA XREF: DIAGROM:00FA3358↑o
                ds.b 1
IO_rtc_10_hour_counter:ds.b 1           ; DATA XREF: DIAGROM:00FA3352↑o
                ds.b 1
IO_rtc_day_of_the_week_counter:ds.b 1   ; DATA XREF: DIAGROM:00FA334C↑o
                ds.b 1
IO_rtc_1_day_counter:ds.b 1             ; DATA XREF: DIAGROM:00FA3346↑o
                ds.b 1
IO_rtc_10_day_counter:ds.b 1            ; DATA XREF: DIAGROM:00FA3340↑o
                ds.b 1
IO_rtc_1_month_counter:ds.b 1           ; DATA XREF: DIAGROM:00FA333A↑o
                ds.b 1
IO_rtc_10_month_counter:ds.b 1          ; DATA XREF: DIAGROM:00FA3334↑o
                ds.b 1
IO_rtc_1_year_counter:ds.b 1            ; DATA XREF: DIAGROM:00FA332E↑o
                ds.b 1
IO_rtc_10_year_counter:ds.b 1           ; DATA XREF: DIAGROM:rtc_reg_table↑o
                ds.b 1
IO_rtc_mode_reg:ds.b 1                  ; DATA XREF: START+228C↑w
                                        ; START+22B8↑w ...
                                        ; 0:Bank1/0, 1:x, 2:Alarm enable, 3:Timer enable
                ds.b 1
IO_rtc_test_reg:ds.b 1                  ; 0-3: Test 0–3
                ds.b 1
IO_rtc_reset_controller:ds.b 1          ; DATA XREF: START+22CE↑w
                                        ; START+22E4↑w ...
                                        ; 0:Alarm RESET, 1:Timer RESET, 2:/16Hz ON, 3:/1Hz ON
                ds.b $3BF
; end of 'IO'


                END
