yosys \
        -p 'read_verilog -formal -norestrict -assume-asserts ./crypto-fu/riscv_crypto_fu*' \
	-p 'prep -top riscv_crypto_fu_rv64 -nordff' \
	-p 'write_smt2 -wires riscv_crypto_fu_rv64.smt2'