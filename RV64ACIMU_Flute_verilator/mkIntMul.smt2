; SMT-LIBv2 description generated by Yosys 0.34 (git sha1 4a1b5599258, clang 14.0.3 -fPIC -Os)
; yosys-smt2-module mkIntMul_64
(declare-sort |mkIntMul_64_s| 0)
(declare-fun |mkIntMul_64_is| (|mkIntMul_64_s|) Bool)
(declare-fun |mkIntMul_64#0| (|mkIntMul_64_s|) Bool) ; \put_args_y_is_signed
(declare-fun |mkIntMul_64#1| (|mkIntMul_64_s|) Bool) ; \put_args_y [63]
(define-fun |mkIntMul_64#2| ((state |mkIntMul_64_s|)) Bool (and (or  (|mkIntMul_64#0| state) false) (or  (|mkIntMul_64#1| state) false))) ; $logic_and$./Verilog_RTL/mkIntMul_64.v:183$4872_Y
(declare-fun |mkIntMul_64#3| (|mkIntMul_64_s|) (_ BitVec 1)) ; \put_args_x [63]
(declare-fun |mkIntMul_64#4| (|mkIntMul_64_s|) (_ BitVec 1)) ; \put_args_x_is_signed
(define-fun |mkIntMul_64#5| ((state |mkIntMul_64_s|)) (_ BitVec 1) (ite (= ((_ extract 0 0) (|mkIntMul_64#4| state)) #b1) (|mkIntMul_64#3| state) (ite (|mkIntMul_64#2| state) #b1 #b0))) ; $ternary$./Verilog_RTL/mkIntMul_64.v:181$4873_Y
; yosys-smt2-wire IF_put_args_x_is_signed_THEN_put_args_x_BIT_63_ETC___d34 1
(define-fun |mkIntMul_64_n IF_put_args_x_is_signed_THEN_put_args_x_BIT_63_ETC___d34| ((state |mkIntMul_64_s|)) Bool (= ((_ extract 0 0) (|mkIntMul_64#5| state)) #b1))
(declare-fun |mkIntMul_64#6| (|mkIntMul_64_s|) (_ BitVec 63)) ; \put_args_y [62:0]
(define-fun |mkIntMul_64#7| ((state |mkIntMul_64_s|)) (_ BitVec 64) (bvneg (concat (ite (|mkIntMul_64#1| state) #b1 #b0) (|mkIntMul_64#6| state)))) ; $neg$./Verilog_RTL/mkIntMul_64.v:189$4878_Y
(define-fun |mkIntMul_64#8| ((state |mkIntMul_64_s|)) (_ BitVec 64) (ite (|mkIntMul_64#1| state) (|mkIntMul_64#7| state) (concat (ite (|mkIntMul_64#1| state) #b1 #b0) (|mkIntMul_64#6| state)))) ; $ternary$./Verilog_RTL/mkIntMul_64.v:189$4879_Y
(define-fun |mkIntMul_64#9| ((state |mkIntMul_64_s|)) (_ BitVec 64) (ite (|mkIntMul_64#0| state) (|mkIntMul_64#8| state) (concat (ite (|mkIntMul_64#1| state) #b1 #b0) (|mkIntMul_64#6| state)))) ; $ternary$./Verilog_RTL/mkIntMul_64.v:188$4877_Y
(define-fun |mkIntMul_64#10| ((state |mkIntMul_64_s|)) (_ BitVec 64) (ite (= ((_ extract 0 0) (|mkIntMul_64#4| state)) #b1) (concat (ite (|mkIntMul_64#1| state) #b1 #b0) (|mkIntMul_64#6| state)) (|mkIntMul_64#9| state))) ; $ternary$./Verilog_RTL/mkIntMul_64.v:191$4880_Y
; yosys-smt2-wire _theResult___snd_fst__h565 64
(define-fun |mkIntMul_64_n _theResult___snd_fst__h565| ((state |mkIntMul_64_s|)) (_ BitVec 64) (|mkIntMul_64#10| state))
; yosys-smt2-wire _theResult___fst__h573 64
(define-fun |mkIntMul_64_n _theResult___fst__h573| ((state |mkIntMul_64_s|)) (_ BitVec 64) (|mkIntMul_64#8| state))
; yosys-smt2-wire _theResult___fst__h570 64
(define-fun |mkIntMul_64_n _theResult___fst__h570| ((state |mkIntMul_64_s|)) (_ BitVec 64) (|mkIntMul_64#9| state))
(declare-fun |mkIntMul_64#11| (|mkIntMul_64_s|) (_ BitVec 63)) ; \put_args_x [62:0]
(define-fun |mkIntMul_64#12| ((state |mkIntMul_64_s|)) (_ BitVec 64) (bvneg (concat (|mkIntMul_64#3| state) (|mkIntMul_64#11| state)))) ; $neg$./Verilog_RTL/mkIntMul_64.v:186$4875_Y
(define-fun |mkIntMul_64#13| ((state |mkIntMul_64_s|)) (_ BitVec 64) (ite (= ((_ extract 0 0) (|mkIntMul_64#3| state)) #b1) (|mkIntMul_64#12| state) (concat (|mkIntMul_64#3| state) (|mkIntMul_64#11| state)))) ; $ternary$./Verilog_RTL/mkIntMul_64.v:186$4876_Y
; yosys-smt2-wire _theResult___fst__h528 64
(define-fun |mkIntMul_64_n _theResult___fst__h528| ((state |mkIntMul_64_s|)) (_ BitVec 64) (|mkIntMul_64#13| state))
(define-fun |mkIntMul_64#14| ((state |mkIntMul_64_s|)) (_ BitVec 64) (ite (= ((_ extract 0 0) (|mkIntMul_64#4| state)) #b1) (|mkIntMul_64#13| state) (concat (|mkIntMul_64#3| state) (|mkIntMul_64#11| state)))) ; $ternary$./Verilog_RTL/mkIntMul_64.v:185$4874_Y
; yosys-smt2-wire _theResult___fst__h525 64
(define-fun |mkIntMul_64_n _theResult___fst__h525| ((state |mkIntMul_64_s|)) (_ BitVec 64) (|mkIntMul_64#14| state))
; yosys-smt2-witness {"offset": 0, "path": ["\\m_rg_xy"], "smtname": 15, "smtoffset": 0, "type": "reg", "width": 128}
(declare-fun |mkIntMul_64#15| (|mkIntMul_64_s|) (_ BitVec 128)) ; \m_rg_xy
(define-fun |mkIntMul_64#16| ((state |mkIntMul_64_s|)) (_ BitVec 128) (bvneg (|mkIntMul_64#15| state))) ; $neg$./Verilog_RTL/mkIntMul_64.v:194$4883_Y
; yosys-smt2-wire xy___1__h288 128
(define-fun |mkIntMul_64_n xy___1__h288| ((state |mkIntMul_64_s|)) (_ BitVec 128) (|mkIntMul_64#16| state))
; yosys-smt2-witness {"offset": 0, "path": ["\\m_rg_x"], "smtname": 17, "smtoffset": 0, "type": "reg", "width": 128}
(declare-fun |mkIntMul_64#17| (|mkIntMul_64_s|) (_ BitVec 128)) ; \m_rg_x
(define-fun |mkIntMul_64#18| ((state |mkIntMul_64_s|)) (_ BitVec 128) (bvadd (|mkIntMul_64#15| state) (|mkIntMul_64#17| state))) ; $add$./Verilog_RTL/mkIntMul_64.v:193$4882_Y
; yosys-smt2-wire x__h364 128
(define-fun |mkIntMul_64_n x__h364| ((state |mkIntMul_64_s|)) (_ BitVec 128) (|mkIntMul_64#18| state))
; yosys-smt2-witness {"offset": 0, "path": ["\\m_rg_isNeg"], "smtname": 19, "smtoffset": 0, "type": "reg", "width": 1}
(declare-fun |mkIntMul_64#19| (|mkIntMul_64_s|) (_ BitVec 1)) ; \m_rg_isNeg
(define-fun |mkIntMul_64#20| ((state |mkIntMul_64_s|)) (_ BitVec 128) (ite (= ((_ extract 0 0) (|mkIntMul_64#19| state)) #b1) (|mkIntMul_64#16| state) (|mkIntMul_64#15| state))) ; $ternary$./Verilog_RTL/mkIntMul_64.v:192$4881_Y
; yosys-smt2-wire x__h271 128
(define-fun |mkIntMul_64_n x__h271| ((state |mkIntMul_64_s|)) (_ BitVec 128) (|mkIntMul_64#20| state))
; yosys-smt2-witness {"offset": 0, "path": ["\\m_rg_y"], "smtname": 21, "smtoffset": 0, "type": "reg", "width": 64}
(declare-fun |mkIntMul_64#21| (|mkIntMul_64_s|) (_ BitVec 64)) ; \m_rg_y
; yosys-smt2-wire MUX_m_rg_y$write_1__VAL_2 64
(define-fun |mkIntMul_64_n MUX_m_rg_y$write_1__VAL_2| ((state |mkIntMul_64_s|)) (_ BitVec 64) (concat #b0 ((_ extract 63 1) (|mkIntMul_64#21| state))))
(define-fun |mkIntMul_64#22| ((state |mkIntMul_64_s|)) Bool (and (or  (= ((_ extract 0 0) (|mkIntMul_64#4| state)) #b1) false) (or  (|mkIntMul_64#0| state) false))) ; $logic_and$./Verilog_RTL/mkIntMul_64.v:136$4850_Y
(define-fun |mkIntMul_64#23| ((state |mkIntMul_64_s|)) (_ BitVec 64) (ite (|mkIntMul_64#22| state) (|mkIntMul_64#8| state) (|mkIntMul_64#10| state))) ; $ternary$./Verilog_RTL/mkIntMul_64.v:136$4851_Y
; yosys-smt2-wire MUX_m_rg_y$write_1__VAL_1 64
(define-fun |mkIntMul_64_n MUX_m_rg_y$write_1__VAL_1| ((state |mkIntMul_64_s|)) (_ BitVec 64) (|mkIntMul_64#23| state))
(define-fun |mkIntMul_64#24| ((state |mkIntMul_64_s|)) Bool (not (or  (= ((_ extract 0 0) (|mkIntMul_64#21| state)) #b1) (= ((_ extract 1 1) (|mkIntMul_64#21| state)) #b1) (= ((_ extract 2 2) (|mkIntMul_64#21| state)) #b1) (= ((_ extract 3 3) (|mkIntMul_64#21| state)) #b1) (= ((_ extract 4 4) (|mkIntMul_64#21| state)) #b1) (= ((_ extract 5 5) (|mkIntMul_64#21| state)) #b1) (= ((_ extract 6 6) (|mkIntMul_64#21| state)) #b1) (= ((_ extract 7 7) (|mkIntMul_64#21| state)) #b1) (= ((_ extract 8 8) (|mkIntMul_64#21| state)) #b1) (= ((_ extract 9 9) (|mkIntMul_64#21| state)) #b1) (= ((_ extract 10 10) (|mkIntMul_64#21| state)) #b1) (= ((_ extract 11 11) (|mkIntMul_64#21| state)) #b1) (= ((_ extract 12 12) (|mkIntMul_64#21| state)) #b1) (= ((_ extract 13 13) (|mkIntMul_64#21| state)) #b1) (= ((_ extract 14 14) (|mkIntMul_64#21| state)) #b1) (= ((_ extract 15 15) (|mkIntMul_64#21| state)) #b1) (= ((_ extract 16 16) (|mkIntMul_64#21| state)) #b1) (= ((_ extract 17 17) (|mkIntMul_64#21| state)) #b1) (= ((_ extract 18 18) (|mkIntMul_64#21| state)) #b1) (= ((_ extract 19 19) (|mkIntMul_64#21| state)) #b1) (= ((_ extract 20 20) (|mkIntMul_64#21| state)) #b1) (= ((_ extract 21 21) (|mkIntMul_64#21| state)) #b1) (= ((_ extract 22 22) (|mkIntMul_64#21| state)) #b1) (= ((_ extract 23 23) (|mkIntMul_64#21| state)) #b1) (= ((_ extract 24 24) (|mkIntMul_64#21| state)) #b1) (= ((_ extract 25 25) (|mkIntMul_64#21| state)) #b1) (= ((_ extract 26 26) (|mkIntMul_64#21| state)) #b1) (= ((_ extract 27 27) (|mkIntMul_64#21| state)) #b1) (= ((_ extract 28 28) (|mkIntMul_64#21| state)) #b1) (= ((_ extract 29 29) (|mkIntMul_64#21| state)) #b1) (= ((_ extract 30 30) (|mkIntMul_64#21| state)) #b1) (= ((_ extract 31 31) (|mkIntMul_64#21| state)) #b1) (= ((_ extract 32 32) (|mkIntMul_64#21| state)) #b1) (= ((_ extract 33 33) (|mkIntMul_64#21| state)) #b1) (= ((_ extract 34 34) (|mkIntMul_64#21| state)) #b1) (= ((_ extract 35 35) (|mkIntMul_64#21| state)) #b1) (= ((_ extract 36 36) (|mkIntMul_64#21| state)) #b1) (= ((_ extract 37 37) (|mkIntMul_64#21| state)) #b1) (= ((_ extract 38 38) (|mkIntMul_64#21| state)) #b1) (= ((_ extract 39 39) (|mkIntMul_64#21| state)) #b1) (= ((_ extract 40 40) (|mkIntMul_64#21| state)) #b1) (= ((_ extract 41 41) (|mkIntMul_64#21| state)) #b1) (= ((_ extract 42 42) (|mkIntMul_64#21| state)) #b1) (= ((_ extract 43 43) (|mkIntMul_64#21| state)) #b1) (= ((_ extract 44 44) (|mkIntMul_64#21| state)) #b1) (= ((_ extract 45 45) (|mkIntMul_64#21| state)) #b1) (= ((_ extract 46 46) (|mkIntMul_64#21| state)) #b1) (= ((_ extract 47 47) (|mkIntMul_64#21| state)) #b1) (= ((_ extract 48 48) (|mkIntMul_64#21| state)) #b1) (= ((_ extract 49 49) (|mkIntMul_64#21| state)) #b1) (= ((_ extract 50 50) (|mkIntMul_64#21| state)) #b1) (= ((_ extract 51 51) (|mkIntMul_64#21| state)) #b1) (= ((_ extract 52 52) (|mkIntMul_64#21| state)) #b1) (= ((_ extract 53 53) (|mkIntMul_64#21| state)) #b1) (= ((_ extract 54 54) (|mkIntMul_64#21| state)) #b1) (= ((_ extract 55 55) (|mkIntMul_64#21| state)) #b1) (= ((_ extract 56 56) (|mkIntMul_64#21| state)) #b1) (= ((_ extract 57 57) (|mkIntMul_64#21| state)) #b1) (= ((_ extract 58 58) (|mkIntMul_64#21| state)) #b1) (= ((_ extract 59 59) (|mkIntMul_64#21| state)) #b1) (= ((_ extract 60 60) (|mkIntMul_64#21| state)) #b1) (= ((_ extract 61 61) (|mkIntMul_64#21| state)) #b1) (= ((_ extract 62 62) (|mkIntMul_64#21| state)) #b1) (= ((_ extract 63 63) (|mkIntMul_64#21| state)) #b1)))) ; $eq$./Verilog_RTL/mkIntMul_64.v:134$4848_Y
(define-fun |mkIntMul_64#25| ((state |mkIntMul_64_s|)) (_ BitVec 128) (ite (|mkIntMul_64#24| state) (|mkIntMul_64#20| state) (|mkIntMul_64#18| state))) ; $ternary$./Verilog_RTL/mkIntMul_64.v:134$4849_Y
; yosys-smt2-wire MUX_m_rg_xy$write_1__VAL_2 128
(define-fun |mkIntMul_64_n MUX_m_rg_xy$write_1__VAL_2| ((state |mkIntMul_64_s|)) (_ BitVec 128) (|mkIntMul_64#25| state))
; yosys-smt2-wire MUX_m_rg_x$write_1__VAL_2 128
(define-fun |mkIntMul_64_n MUX_m_rg_x$write_1__VAL_2| ((state |mkIntMul_64_s|)) (_ BitVec 128) (concat ((_ extract 126 0) (|mkIntMul_64#17| state)) #b0))
; yosys-smt2-wire MUX_m_rg_x$write_1__VAL_1 128
(define-fun |mkIntMul_64_n MUX_m_rg_x$write_1__VAL_1| ((state |mkIntMul_64_s|)) (_ BitVec 128) (concat #b0000000000000000000000000000000000000000000000000000000000000000 (|mkIntMul_64#14| state)))
(declare-fun |mkIntMul_64#26| (|mkIntMul_64_s|) Bool) ; \EN_put_args
; yosys-smt2-wire WILL_FIRE_put_args 1
(define-fun |mkIntMul_64_n WILL_FIRE_put_args| ((state |mkIntMul_64_s|)) Bool (|mkIntMul_64#26| state))
; yosys-smt2-witness {"offset": 0, "path": ["\\m_rg_state"], "smtname": 27, "smtoffset": 0, "type": "reg", "width": 2}
(declare-fun |mkIntMul_64#27| (|mkIntMul_64_s|) (_ BitVec 2)) ; \m_rg_state
(define-fun |mkIntMul_64#28| ((state |mkIntMul_64_s|)) Bool (= (|mkIntMul_64#27| state) #b01)) ; $eq$./Verilog_RTL/mkIntMul_64.v:128$4847_Y
; yosys-smt2-wire WILL_FIRE_RL_m_compute 1
(define-fun |mkIntMul_64_n WILL_FIRE_RL_m_compute| ((state |mkIntMul_64_s|)) Bool (|mkIntMul_64#28| state))
; yosys-smt2-wire CAN_FIRE_put_args 1
(define-fun |mkIntMul_64_n CAN_FIRE_put_args| ((state |mkIntMul_64_s|)) Bool true)
; yosys-smt2-wire CAN_FIRE_RL_m_compute 1
(define-fun |mkIntMul_64_n CAN_FIRE_RL_m_compute| ((state |mkIntMul_64_s|)) Bool (|mkIntMul_64#28| state))
(define-fun |mkIntMul_64#29| ((state |mkIntMul_64_s|)) Bool (distinct (|mkIntMul_64#21| state) #b0000000000000000000000000000000000000000000000000000000000000000)) ; $ne$./Verilog_RTL/mkIntMul_64.v:177$4869_Y
(define-fun |mkIntMul_64#30| ((state |mkIntMul_64_s|)) Bool (and (or  (|mkIntMul_64#28| state) false) (or  (|mkIntMul_64#29| state) false))) ; $logic_and$./Verilog_RTL/mkIntMul_64.v:177$4870_Y
(define-fun |mkIntMul_64#31| ((state |mkIntMul_64_s|)) Bool (or  (|mkIntMul_64#30| state) false  (|mkIntMul_64#26| state) false)) ; $logic_or$./Verilog_RTL/mkIntMul_64.v:177$4871_Y
; yosys-smt2-wire m_rg_y$EN 1
(define-fun |mkIntMul_64_n m_rg_y$EN| ((state |mkIntMul_64_s|)) Bool (|mkIntMul_64#31| state))
(define-fun |mkIntMul_64#32| ((state |mkIntMul_64_s|)) (_ BitVec 64) (ite (|mkIntMul_64#26| state) (|mkIntMul_64#23| state) (concat #b0 ((_ extract 63 1) (|mkIntMul_64#21| state))))) ; $ternary$./Verilog_RTL/mkIntMul_64.v:173$4868_Y
; yosys-smt2-wire m_rg_y$D_IN 64
(define-fun |mkIntMul_64_n m_rg_y$D_IN| ((state |mkIntMul_64_s|)) (_ BitVec 64) (|mkIntMul_64#32| state))
; yosys-smt2-register m_rg_y 64
; yosys-smt2-wire m_rg_y 64
(define-fun |mkIntMul_64_n m_rg_y| ((state |mkIntMul_64_s|)) (_ BitVec 64) (|mkIntMul_64#21| state))
(define-fun |mkIntMul_64#33| ((state |mkIntMul_64_s|)) Bool (not (or  (= ((_ extract 0 0) (|mkIntMul_64#21| state)) #b1) (= ((_ extract 1 1) (|mkIntMul_64#21| state)) #b1) (= ((_ extract 2 2) (|mkIntMul_64#21| state)) #b1) (= ((_ extract 3 3) (|mkIntMul_64#21| state)) #b1) (= ((_ extract 4 4) (|mkIntMul_64#21| state)) #b1) (= ((_ extract 5 5) (|mkIntMul_64#21| state)) #b1) (= ((_ extract 6 6) (|mkIntMul_64#21| state)) #b1) (= ((_ extract 7 7) (|mkIntMul_64#21| state)) #b1) (= ((_ extract 8 8) (|mkIntMul_64#21| state)) #b1) (= ((_ extract 9 9) (|mkIntMul_64#21| state)) #b1) (= ((_ extract 10 10) (|mkIntMul_64#21| state)) #b1) (= ((_ extract 11 11) (|mkIntMul_64#21| state)) #b1) (= ((_ extract 12 12) (|mkIntMul_64#21| state)) #b1) (= ((_ extract 13 13) (|mkIntMul_64#21| state)) #b1) (= ((_ extract 14 14) (|mkIntMul_64#21| state)) #b1) (= ((_ extract 15 15) (|mkIntMul_64#21| state)) #b1) (= ((_ extract 16 16) (|mkIntMul_64#21| state)) #b1) (= ((_ extract 17 17) (|mkIntMul_64#21| state)) #b1) (= ((_ extract 18 18) (|mkIntMul_64#21| state)) #b1) (= ((_ extract 19 19) (|mkIntMul_64#21| state)) #b1) (= ((_ extract 20 20) (|mkIntMul_64#21| state)) #b1) (= ((_ extract 21 21) (|mkIntMul_64#21| state)) #b1) (= ((_ extract 22 22) (|mkIntMul_64#21| state)) #b1) (= ((_ extract 23 23) (|mkIntMul_64#21| state)) #b1) (= ((_ extract 24 24) (|mkIntMul_64#21| state)) #b1) (= ((_ extract 25 25) (|mkIntMul_64#21| state)) #b1) (= ((_ extract 26 26) (|mkIntMul_64#21| state)) #b1) (= ((_ extract 27 27) (|mkIntMul_64#21| state)) #b1) (= ((_ extract 28 28) (|mkIntMul_64#21| state)) #b1) (= ((_ extract 29 29) (|mkIntMul_64#21| state)) #b1) (= ((_ extract 30 30) (|mkIntMul_64#21| state)) #b1) (= ((_ extract 31 31) (|mkIntMul_64#21| state)) #b1) (= ((_ extract 32 32) (|mkIntMul_64#21| state)) #b1) (= ((_ extract 33 33) (|mkIntMul_64#21| state)) #b1) (= ((_ extract 34 34) (|mkIntMul_64#21| state)) #b1) (= ((_ extract 35 35) (|mkIntMul_64#21| state)) #b1) (= ((_ extract 36 36) (|mkIntMul_64#21| state)) #b1) (= ((_ extract 37 37) (|mkIntMul_64#21| state)) #b1) (= ((_ extract 38 38) (|mkIntMul_64#21| state)) #b1) (= ((_ extract 39 39) (|mkIntMul_64#21| state)) #b1) (= ((_ extract 40 40) (|mkIntMul_64#21| state)) #b1) (= ((_ extract 41 41) (|mkIntMul_64#21| state)) #b1) (= ((_ extract 42 42) (|mkIntMul_64#21| state)) #b1) (= ((_ extract 43 43) (|mkIntMul_64#21| state)) #b1) (= ((_ extract 44 44) (|mkIntMul_64#21| state)) #b1) (= ((_ extract 45 45) (|mkIntMul_64#21| state)) #b1) (= ((_ extract 46 46) (|mkIntMul_64#21| state)) #b1) (= ((_ extract 47 47) (|mkIntMul_64#21| state)) #b1) (= ((_ extract 48 48) (|mkIntMul_64#21| state)) #b1) (= ((_ extract 49 49) (|mkIntMul_64#21| state)) #b1) (= ((_ extract 50 50) (|mkIntMul_64#21| state)) #b1) (= ((_ extract 51 51) (|mkIntMul_64#21| state)) #b1) (= ((_ extract 52 52) (|mkIntMul_64#21| state)) #b1) (= ((_ extract 53 53) (|mkIntMul_64#21| state)) #b1) (= ((_ extract 54 54) (|mkIntMul_64#21| state)) #b1) (= ((_ extract 55 55) (|mkIntMul_64#21| state)) #b1) (= ((_ extract 56 56) (|mkIntMul_64#21| state)) #b1) (= ((_ extract 57 57) (|mkIntMul_64#21| state)) #b1) (= ((_ extract 58 58) (|mkIntMul_64#21| state)) #b1) (= ((_ extract 59 59) (|mkIntMul_64#21| state)) #b1) (= ((_ extract 60 60) (|mkIntMul_64#21| state)) #b1) (= ((_ extract 61 61) (|mkIntMul_64#21| state)) #b1) (= ((_ extract 62 62) (|mkIntMul_64#21| state)) #b1) (= ((_ extract 63 63) (|mkIntMul_64#21| state)) #b1)))) ; $eq$./Verilog_RTL/mkIntMul_64.v:168$4864_Y
(define-fun |mkIntMul_64#34| ((state |mkIntMul_64_s|)) Bool (or  (|mkIntMul_64#33| state) false  (= ((_ extract 0 0) (|mkIntMul_64#21| state)) #b1) false)) ; $logic_or$./Verilog_RTL/mkIntMul_64.v:168$4865_Y
(define-fun |mkIntMul_64#35| ((state |mkIntMul_64_s|)) Bool (and (or  (|mkIntMul_64#28| state) false) (or  (|mkIntMul_64#34| state) false))) ; $logic_and$./Verilog_RTL/mkIntMul_64.v:168$4866_Y
(define-fun |mkIntMul_64#36| ((state |mkIntMul_64_s|)) Bool (or  (|mkIntMul_64#35| state) false  (|mkIntMul_64#26| state) false)) ; $logic_or$./Verilog_RTL/mkIntMul_64.v:168$4867_Y
; yosys-smt2-wire m_rg_xy$EN 1
(define-fun |mkIntMul_64_n m_rg_xy$EN| ((state |mkIntMul_64_s|)) Bool (|mkIntMul_64#36| state))
(define-fun |mkIntMul_64#37| ((state |mkIntMul_64_s|)) (_ BitVec 128) (ite (|mkIntMul_64#26| state) #b00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 (|mkIntMul_64#25| state))) ; $ternary$./Verilog_RTL/mkIntMul_64.v:166$4863_Y
; yosys-smt2-wire m_rg_xy$D_IN 128
(define-fun |mkIntMul_64_n m_rg_xy$D_IN| ((state |mkIntMul_64_s|)) (_ BitVec 128) (|mkIntMul_64#37| state))
; yosys-smt2-register m_rg_xy 128
; yosys-smt2-wire m_rg_xy 128
(define-fun |mkIntMul_64_n m_rg_xy| ((state |mkIntMul_64_s|)) (_ BitVec 128) (|mkIntMul_64#15| state))
(define-fun |mkIntMul_64#38| ((state |mkIntMul_64_s|)) Bool (distinct (|mkIntMul_64#21| state) #b0000000000000000000000000000000000000000000000000000000000000000)) ; $ne$./Verilog_RTL/mkIntMul_64.v:163$4860_Y
(define-fun |mkIntMul_64#39| ((state |mkIntMul_64_s|)) Bool (and (or  (|mkIntMul_64#28| state) false) (or  (|mkIntMul_64#38| state) false))) ; $logic_and$./Verilog_RTL/mkIntMul_64.v:163$4861_Y
(define-fun |mkIntMul_64#40| ((state |mkIntMul_64_s|)) Bool (or  (|mkIntMul_64#39| state) false  (|mkIntMul_64#26| state) false)) ; $logic_or$./Verilog_RTL/mkIntMul_64.v:163$4862_Y
; yosys-smt2-wire m_rg_x$EN 1
(define-fun |mkIntMul_64_n m_rg_x$EN| ((state |mkIntMul_64_s|)) Bool (|mkIntMul_64#40| state))
(define-fun |mkIntMul_64#41| ((state |mkIntMul_64_s|)) (_ BitVec 128) (ite (|mkIntMul_64#26| state) (concat #b0000000000000000000000000000000000000000000000000000000000000000 (|mkIntMul_64#14| state)) (concat ((_ extract 126 0) (|mkIntMul_64#17| state)) #b0))) ; $ternary$./Verilog_RTL/mkIntMul_64.v:159$4859_Y
; yosys-smt2-wire m_rg_x$D_IN 128
(define-fun |mkIntMul_64_n m_rg_x$D_IN| ((state |mkIntMul_64_s|)) (_ BitVec 128) (|mkIntMul_64#41| state))
; yosys-smt2-register m_rg_x 128
; yosys-smt2-wire m_rg_x 128
(define-fun |mkIntMul_64_n m_rg_x| ((state |mkIntMul_64_s|)) (_ BitVec 128) (|mkIntMul_64#17| state))
(define-fun |mkIntMul_64#42| ((state |mkIntMul_64_s|)) Bool (not (or  (= ((_ extract 0 0) (|mkIntMul_64#21| state)) #b1) (= ((_ extract 1 1) (|mkIntMul_64#21| state)) #b1) (= ((_ extract 2 2) (|mkIntMul_64#21| state)) #b1) (= ((_ extract 3 3) (|mkIntMul_64#21| state)) #b1) (= ((_ extract 4 4) (|mkIntMul_64#21| state)) #b1) (= ((_ extract 5 5) (|mkIntMul_64#21| state)) #b1) (= ((_ extract 6 6) (|mkIntMul_64#21| state)) #b1) (= ((_ extract 7 7) (|mkIntMul_64#21| state)) #b1) (= ((_ extract 8 8) (|mkIntMul_64#21| state)) #b1) (= ((_ extract 9 9) (|mkIntMul_64#21| state)) #b1) (= ((_ extract 10 10) (|mkIntMul_64#21| state)) #b1) (= ((_ extract 11 11) (|mkIntMul_64#21| state)) #b1) (= ((_ extract 12 12) (|mkIntMul_64#21| state)) #b1) (= ((_ extract 13 13) (|mkIntMul_64#21| state)) #b1) (= ((_ extract 14 14) (|mkIntMul_64#21| state)) #b1) (= ((_ extract 15 15) (|mkIntMul_64#21| state)) #b1) (= ((_ extract 16 16) (|mkIntMul_64#21| state)) #b1) (= ((_ extract 17 17) (|mkIntMul_64#21| state)) #b1) (= ((_ extract 18 18) (|mkIntMul_64#21| state)) #b1) (= ((_ extract 19 19) (|mkIntMul_64#21| state)) #b1) (= ((_ extract 20 20) (|mkIntMul_64#21| state)) #b1) (= ((_ extract 21 21) (|mkIntMul_64#21| state)) #b1) (= ((_ extract 22 22) (|mkIntMul_64#21| state)) #b1) (= ((_ extract 23 23) (|mkIntMul_64#21| state)) #b1) (= ((_ extract 24 24) (|mkIntMul_64#21| state)) #b1) (= ((_ extract 25 25) (|mkIntMul_64#21| state)) #b1) (= ((_ extract 26 26) (|mkIntMul_64#21| state)) #b1) (= ((_ extract 27 27) (|mkIntMul_64#21| state)) #b1) (= ((_ extract 28 28) (|mkIntMul_64#21| state)) #b1) (= ((_ extract 29 29) (|mkIntMul_64#21| state)) #b1) (= ((_ extract 30 30) (|mkIntMul_64#21| state)) #b1) (= ((_ extract 31 31) (|mkIntMul_64#21| state)) #b1) (= ((_ extract 32 32) (|mkIntMul_64#21| state)) #b1) (= ((_ extract 33 33) (|mkIntMul_64#21| state)) #b1) (= ((_ extract 34 34) (|mkIntMul_64#21| state)) #b1) (= ((_ extract 35 35) (|mkIntMul_64#21| state)) #b1) (= ((_ extract 36 36) (|mkIntMul_64#21| state)) #b1) (= ((_ extract 37 37) (|mkIntMul_64#21| state)) #b1) (= ((_ extract 38 38) (|mkIntMul_64#21| state)) #b1) (= ((_ extract 39 39) (|mkIntMul_64#21| state)) #b1) (= ((_ extract 40 40) (|mkIntMul_64#21| state)) #b1) (= ((_ extract 41 41) (|mkIntMul_64#21| state)) #b1) (= ((_ extract 42 42) (|mkIntMul_64#21| state)) #b1) (= ((_ extract 43 43) (|mkIntMul_64#21| state)) #b1) (= ((_ extract 44 44) (|mkIntMul_64#21| state)) #b1) (= ((_ extract 45 45) (|mkIntMul_64#21| state)) #b1) (= ((_ extract 46 46) (|mkIntMul_64#21| state)) #b1) (= ((_ extract 47 47) (|mkIntMul_64#21| state)) #b1) (= ((_ extract 48 48) (|mkIntMul_64#21| state)) #b1) (= ((_ extract 49 49) (|mkIntMul_64#21| state)) #b1) (= ((_ extract 50 50) (|mkIntMul_64#21| state)) #b1) (= ((_ extract 51 51) (|mkIntMul_64#21| state)) #b1) (= ((_ extract 52 52) (|mkIntMul_64#21| state)) #b1) (= ((_ extract 53 53) (|mkIntMul_64#21| state)) #b1) (= ((_ extract 54 54) (|mkIntMul_64#21| state)) #b1) (= ((_ extract 55 55) (|mkIntMul_64#21| state)) #b1) (= ((_ extract 56 56) (|mkIntMul_64#21| state)) #b1) (= ((_ extract 57 57) (|mkIntMul_64#21| state)) #b1) (= ((_ extract 58 58) (|mkIntMul_64#21| state)) #b1) (= ((_ extract 59 59) (|mkIntMul_64#21| state)) #b1) (= ((_ extract 60 60) (|mkIntMul_64#21| state)) #b1) (= ((_ extract 61 61) (|mkIntMul_64#21| state)) #b1) (= ((_ extract 62 62) (|mkIntMul_64#21| state)) #b1) (= ((_ extract 63 63) (|mkIntMul_64#21| state)) #b1)))) ; $eq$./Verilog_RTL/mkIntMul_64.v:155$4856_Y
(define-fun |mkIntMul_64#43| ((state |mkIntMul_64_s|)) Bool (and (or  (|mkIntMul_64#28| state) false) (or  (|mkIntMul_64#42| state) false))) ; $logic_and$./Verilog_RTL/mkIntMul_64.v:155$4857_Y
(define-fun |mkIntMul_64#44| ((state |mkIntMul_64_s|)) Bool (or  (|mkIntMul_64#43| state) false  (|mkIntMul_64#26| state) false)) ; $logic_or$./Verilog_RTL/mkIntMul_64.v:155$4858_Y
; yosys-smt2-wire m_rg_state$EN 1
(define-fun |mkIntMul_64_n m_rg_state$EN| ((state |mkIntMul_64_s|)) Bool (|mkIntMul_64#44| state))
(define-fun |mkIntMul_64#45| ((state |mkIntMul_64_s|)) (_ BitVec 2) (ite (|mkIntMul_64#26| state) #b01 #b10)) ; $ternary$./Verilog_RTL/mkIntMul_64.v:153$4855_Y
; yosys-smt2-wire m_rg_state$D_IN 2
(define-fun |mkIntMul_64_n m_rg_state$D_IN| ((state |mkIntMul_64_s|)) (_ BitVec 2) (|mkIntMul_64#45| state))
; yosys-smt2-register m_rg_state 2
; yosys-smt2-wire m_rg_state 2
(define-fun |mkIntMul_64_n m_rg_state| ((state |mkIntMul_64_s|)) (_ BitVec 2) (|mkIntMul_64#27| state))
; yosys-smt2-wire m_rg_signed$EN 1
(define-fun |mkIntMul_64_n m_rg_signed$EN| ((state |mkIntMul_64_s|)) Bool false)
; yosys-smt2-wire m_rg_signed$D_IN 1
(define-fun |mkIntMul_64_n m_rg_signed$D_IN| ((state |mkIntMul_64_s|)) Bool false)
; yosys-smt2-witness {"offset": 0, "path": ["\\m_rg_signed"], "smtname": 46, "smtoffset": 0, "type": "reg", "width": 1}
(declare-fun |mkIntMul_64#46| (|mkIntMul_64_s|) (_ BitVec 1)) ; \m_rg_signed
; yosys-smt2-register m_rg_signed 1
; yosys-smt2-wire m_rg_signed 1
(define-fun |mkIntMul_64_n m_rg_signed| ((state |mkIntMul_64_s|)) Bool (= ((_ extract 0 0) (|mkIntMul_64#46| state)) #b1))
; yosys-smt2-wire m_rg_isNeg$EN 1
(define-fun |mkIntMul_64_n m_rg_isNeg$EN| ((state |mkIntMul_64_s|)) Bool (|mkIntMul_64#26| state))
(define-fun |mkIntMul_64#47| ((state |mkIntMul_64_s|)) Bool (distinct (|mkIntMul_64#3| state) (ite (|mkIntMul_64#1| state) #b1 #b0))) ; $ne$./Verilog_RTL/mkIntMul_64.v:144$4853_Y
(define-fun |mkIntMul_64#48| ((state |mkIntMul_64_s|)) Bool (and (or  (= ((_ extract 0 0) (|mkIntMul_64#4| state)) #b1) false) (or  (|mkIntMul_64#0| state) false))) ; $logic_and$./Verilog_RTL/mkIntMul_64.v:143$4852_Y
(define-fun |mkIntMul_64#49| ((state |mkIntMul_64_s|)) (_ BitVec 1) (ite (|mkIntMul_64#48| state) (ite (|mkIntMul_64#47| state) #b1 #b0) (|mkIntMul_64#5| state))) ; $ternary$./Verilog_RTL/mkIntMul_64.v:143$4854_Y
; yosys-smt2-wire m_rg_isNeg$D_IN 1
(define-fun |mkIntMul_64_n m_rg_isNeg$D_IN| ((state |mkIntMul_64_s|)) Bool (= ((_ extract 0 0) (|mkIntMul_64#49| state)) #b1))
; yosys-smt2-register m_rg_isNeg 1
; yosys-smt2-wire m_rg_isNeg 1
(define-fun |mkIntMul_64_n m_rg_isNeg| ((state |mkIntMul_64_s|)) Bool (= ((_ extract 0 0) (|mkIntMul_64#19| state)) #b1))
; yosys-smt2-output result_value 128
; yosys-smt2-wire result_value 128
(define-fun |mkIntMul_64_n result_value| ((state |mkIntMul_64_s|)) (_ BitVec 128) (|mkIntMul_64#15| state))
(define-fun |mkIntMul_64#50| ((state |mkIntMul_64_s|)) Bool (= (|mkIntMul_64#27| state) #b10)) ; $eq$./Verilog_RTL/mkIntMul_64.v:122$4846_Y
; yosys-smt2-output result_valid 1
; yosys-smt2-wire result_valid 1
(define-fun |mkIntMul_64_n result_valid| ((state |mkIntMul_64_s|)) Bool (|mkIntMul_64#50| state))
; yosys-smt2-input EN_put_args 1
; yosys-smt2-wire EN_put_args 1
; yosys-smt2-witness {"offset": 0, "path": ["\\EN_put_args"], "smtname": "EN_put_args", "smtoffset": 0, "type": "input", "width": 1}
(define-fun |mkIntMul_64_n EN_put_args| ((state |mkIntMul_64_s|)) Bool (|mkIntMul_64#26| state))
; yosys-smt2-input put_args_y 64
; yosys-smt2-wire put_args_y 64
; yosys-smt2-witness {"offset": 0, "path": ["\\put_args_y"], "smtname": "put_args_y", "smtoffset": 0, "type": "input", "width": 64}
(define-fun |mkIntMul_64_n put_args_y| ((state |mkIntMul_64_s|)) (_ BitVec 64) (concat (ite (|mkIntMul_64#1| state) #b1 #b0) (|mkIntMul_64#6| state)))
; yosys-smt2-input put_args_y_is_signed 1
; yosys-smt2-wire put_args_y_is_signed 1
; yosys-smt2-witness {"offset": 0, "path": ["\\put_args_y_is_signed"], "smtname": "put_args_y_is_signed", "smtoffset": 0, "type": "input", "width": 1}
(define-fun |mkIntMul_64_n put_args_y_is_signed| ((state |mkIntMul_64_s|)) Bool (|mkIntMul_64#0| state))
; yosys-smt2-input put_args_x 64
; yosys-smt2-wire put_args_x 64
; yosys-smt2-witness {"offset": 0, "path": ["\\put_args_x"], "smtname": "put_args_x", "smtoffset": 0, "type": "input", "width": 64}
(define-fun |mkIntMul_64_n put_args_x| ((state |mkIntMul_64_s|)) (_ BitVec 64) (concat (|mkIntMul_64#3| state) (|mkIntMul_64#11| state)))
; yosys-smt2-input put_args_x_is_signed 1
; yosys-smt2-wire put_args_x_is_signed 1
; yosys-smt2-witness {"offset": 0, "path": ["\\put_args_x_is_signed"], "smtname": "put_args_x_is_signed", "smtoffset": 0, "type": "input", "width": 1}
(define-fun |mkIntMul_64_n put_args_x_is_signed| ((state |mkIntMul_64_s|)) Bool (= ((_ extract 0 0) (|mkIntMul_64#4| state)) #b1))
(declare-fun |mkIntMul_64#51| (|mkIntMul_64_s|) Bool) ; \RST_N
; yosys-smt2-input RST_N 1
; yosys-smt2-wire RST_N 1
; yosys-smt2-witness {"offset": 0, "path": ["\\RST_N"], "smtname": "RST_N", "smtoffset": 0, "type": "input", "width": 1}
(define-fun |mkIntMul_64_n RST_N| ((state |mkIntMul_64_s|)) Bool (|mkIntMul_64#51| state))
(declare-fun |mkIntMul_64#52| (|mkIntMul_64_s|) Bool) ; \CLK
; yosys-smt2-input CLK 1
; yosys-smt2-wire CLK 1
; yosys-smt2-clock CLK posedge
; yosys-smt2-witness {"offset": 0, "path": ["\\CLK"], "smtname": "CLK", "smtoffset": 0, "type": "posedge", "width": 1}
; yosys-smt2-witness {"offset": 0, "path": ["\\CLK"], "smtname": "CLK", "smtoffset": 0, "type": "input", "width": 1}
(define-fun |mkIntMul_64_n CLK| ((state |mkIntMul_64_s|)) Bool (|mkIntMul_64#52| state))
(define-fun |mkIntMul_64#53| ((state |mkIntMul_64_s|)) (_ BitVec 2) (ite (|mkIntMul_64#44| state) (|mkIntMul_64#45| state) (|mkIntMul_64#27| state))) ; $procmux$22695_Y
(define-fun |mkIntMul_64#54| ((state |mkIntMul_64_s|)) (_ BitVec 2) (ite (|mkIntMul_64#51| state) (|mkIntMul_64#53| state) #b00)) ; $procmux$22698_Y
(define-fun |mkIntMul_64#55| ((state |mkIntMul_64_s|)) (_ BitVec 64) (ite (|mkIntMul_64#31| state) (|mkIntMul_64#32| state) (|mkIntMul_64#21| state))) ; $procmux$22689_Y
(define-fun |mkIntMul_64#56| ((s