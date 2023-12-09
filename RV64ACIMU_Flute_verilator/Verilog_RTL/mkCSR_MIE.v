//
// Generated by Bluespec Compiler, version 2019.05.beta2 (build a88bf40db, 2019-05-24)
//
//
//
//
// Ports:
// Name                         I/O  size props
// mv_read                        O    64
// mav_write                      O    64
// CLK                            I     1 clock
// RST_N                          I     1 reset
// mav_write_misa                 I    28
// mav_write_wordxl               I    64
// EN_reset                       I     1
// EN_mav_write                   I     1
//
// Combinational paths from inputs to outputs:
//   (mav_write_misa, mav_write_wordxl) -> mav_write
//
//

`ifdef BSV_ASSIGNMENT_DELAY
`else
  `define BSV_ASSIGNMENT_DELAY
`endif

`ifdef BSV_POSITIVE_RESET
  `define BSV_RESET_VALUE 1'b1
  `define BSV_RESET_EDGE posedge
`else
  `define BSV_RESET_VALUE 1'b0
  `define BSV_RESET_EDGE negedge
`endif

module mkCSR_MIE(CLK,
		 RST_N,

		 EN_reset,

		 mv_read,

		 mav_write_misa,
		 mav_write_wordxl,
		 EN_mav_write,
		 mav_write);
  input  CLK;
  input  RST_N;

  // action method reset
  input  EN_reset;

  // value method mv_read
  output [63 : 0] mv_read;

  // actionvalue method mav_write
  input  [27 : 0] mav_write_misa;
  input  [63 : 0] mav_write_wordxl;
  input  EN_mav_write;
  output [63 : 0] mav_write;

  // signals for module outputs
  wire [63 : 0] mav_write, mv_read;

  // register rg_mie
  reg [11 : 0] rg_mie;
  wire [11 : 0] rg_mie$D_IN;
  wire rg_mie$EN;

  // rule scheduling signals
  wire CAN_FIRE_mav_write,
       CAN_FIRE_reset,
       WILL_FIRE_mav_write,
       WILL_FIRE_reset;

  // remaining internal signals
  wire [11 : 0] mie__h88;
  wire seie__h119, ssie__h113, stie__h116, ueie__h118, usie__h112, utie__h115;

  // action method reset
  assign CAN_FIRE_reset = 1'd1 ;
  assign WILL_FIRE_reset = EN_reset ;

  // value method mv_read
  assign mv_read = { 52'd0, rg_mie } ;

  // actionvalue method mav_write
  assign mav_write = { 52'd0, mie__h88 } ;
  assign CAN_FIRE_mav_write = 1'd1 ;
  assign WILL_FIRE_mav_write = EN_mav_write ;

  // register rg_mie
  assign rg_mie$D_IN = EN_mav_write ? mie__h88 : 12'd0 ;
  assign rg_mie$EN = EN_mav_write || EN_reset ;

  // remaining internal signals
  assign mie__h88 =
	     { mav_write_wordxl[11],
	       1'b0,
	       seie__h119,
	       ueie__h118,
	       mav_write_wordxl[7],
	       1'b0,
	       stie__h116,
	       utie__h115,
	       mav_write_wordxl[3],
	       1'b0,
	       ssie__h113,
	       usie__h112 } ;
  assign seie__h119 = mav_write_misa[18] && mav_write_wordxl[9] ;
  assign ssie__h113 = mav_write_misa[18] && mav_write_wordxl[1] ;
  assign stie__h116 = mav_write_misa[18] && mav_write_wordxl[5] ;
  assign ueie__h118 = mav_write_misa[13] && mav_write_wordxl[8] ;
  assign usie__h112 = mav_write_misa[13] && mav_write_wordxl[0] ;
  assign utie__h115 = mav_write_misa[13] && mav_write_wordxl[4] ;

  // handling of inlined registers

  always@(posedge CLK)
  begin
    if (RST_N == `BSV_RESET_VALUE)
      begin
        rg_mie <= `BSV_ASSIGNMENT_DELAY 12'd0;
      end
    else
      begin
        if (rg_mie$EN) rg_mie <= `BSV_ASSIGNMENT_DELAY rg_mie$D_IN;
      end
  end

  // synopsys translate_off
  `ifdef BSV_NO_INITIAL_BLOCKS
  `else // not BSV_NO_INITIAL_BLOCKS
  initial
  begin
    rg_mie = 12'hAAA;
  end
  `endif // BSV_NO_INITIAL_BLOCKS
  // synopsys translate_on
endmodule  // mkCSR_MIE

