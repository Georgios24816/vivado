// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Tue Dec 22 22:46:40 2020
// Host        : DESKTOP-UB73T73 running 64-bit major release  (build 9200)
// Command     : write_verilog -mode funcsim -nolib -force -file
//               C:/Users/Georg/Documents/vivado/project_1/project_1.sim/sim_1/synth/func/xsim/FullAdder_N_func_synth.v
// Design      : FullAdder_N
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* WIDTH = "4" *) 
(* NotValidForBitStream *)
module FullAdder_N
   (clk,
    a,
    b,
    cin,
    res,
    cout);
  input clk;
  input [3:0]a;
  input [3:0]b;
  input cin;
  output [3:0]res;
  output cout;

  wire [3:1]\[3].res_reg ;
  wire [3:0]a;
  wire [3:0]a_IBUF;
  wire [3:0]b;
  wire [3:0]b_IBUF;
  wire cin;
  wire cin_IBUF;
  wire clk;
  wire clk_IBUF;
  wire clk_IBUF_BUFG;
  wire cout;
  wire [0:0]p_2_in;
  wire [3:0]res;
  wire [3:0]res_OBUF;

  IBUF \a_IBUF[0]_inst 
       (.I(a[0]),
        .O(a_IBUF[0]));
  IBUF \a_IBUF[1]_inst 
       (.I(a[1]),
        .O(a_IBUF[1]));
  IBUF \a_IBUF[2]_inst 
       (.I(a[2]),
        .O(a_IBUF[2]));
  IBUF \a_IBUF[3]_inst 
       (.I(a[3]),
        .O(a_IBUF[3]));
  IBUF \b_IBUF[0]_inst 
       (.I(b[0]),
        .O(b_IBUF[0]));
  IBUF \b_IBUF[1]_inst 
       (.I(b[1]),
        .O(b_IBUF[1]));
  IBUF \b_IBUF[2]_inst 
       (.I(b[2]),
        .O(b_IBUF[2]));
  IBUF \b_IBUF[3]_inst 
       (.I(b[3]),
        .O(b_IBUF[3]));
  IBUF cin_IBUF_inst
       (.I(cin),
        .O(cin_IBUF));
  BUFG clk_IBUF_BUFG_inst
       (.I(clk_IBUF),
        .O(clk_IBUF_BUFG));
  IBUF clk_IBUF_inst
       (.I(clk),
        .O(clk_IBUF));
  OBUFT cout_OBUF_inst
       (.I(1'b0),
        .O(cout),
        .T(1'b1));
  FDRE #(
    .INIT(1'b0)) 
    \res[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(p_2_in),
        .Q(res_OBUF[0]),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h96)) 
    \res[0]_i_1 
       (.I0(b_IBUF[0]),
        .I1(a_IBUF[0]),
        .I2(cin_IBUF),
        .O(p_2_in));
  FDRE #(
    .INIT(1'b0)) 
    \res[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\[3].res_reg [1]),
        .Q(res_OBUF[1]),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h6)) 
    \res[1]_i_1 
       (.I0(b_IBUF[1]),
        .I1(a_IBUF[1]),
        .O(\[3].res_reg [1]));
  FDRE #(
    .INIT(1'b0)) 
    \res[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\[3].res_reg [2]),
        .Q(res_OBUF[2]),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h6)) 
    \res[2]_i_1 
       (.I0(b_IBUF[2]),
        .I1(a_IBUF[2]),
        .O(\[3].res_reg [2]));
  FDRE #(
    .INIT(1'b0)) 
    \res[3] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\[3].res_reg [3]),
        .Q(res_OBUF[3]),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h6)) 
    \res[3]_i_1 
       (.I0(b_IBUF[3]),
        .I1(a_IBUF[3]),
        .O(\[3].res_reg [3]));
  OBUF \res_OBUF[0]_inst 
       (.I(res_OBUF[0]),
        .O(res[0]));
  OBUF \res_OBUF[1]_inst 
       (.I(res_OBUF[1]),
        .O(res[1]));
  OBUF \res_OBUF[2]_inst 
       (.I(res_OBUF[2]),
        .O(res[2]));
  OBUF \res_OBUF[3]_inst 
       (.I(res_OBUF[3]),
        .O(res[3]));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
