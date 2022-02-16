module DSI_Workspace (cs,DAC_1,DAC_2,DAC_3,DAC_4,DAC_5,DAC_6,SerialP,SerialN,eoco,Button,clk,rst,VDAC_clk,VDAC_sync,VDAC_blank,MIPI_clkP,MIPI_clkN);

	output wire  cs;
	output wire [7:0] DAC_1;
	output wire [7:0] DAC_2;
	output wire [7:0] DAC_3;
	output wire [7:0] DAC_4;
	output wire [7:0] DAC_5;
	output wire [7:0] DAC_6;
	output wire SerialP;
	output wire SerialN;
	output wire eoco;
	input  wire [1:0] Button;
	input  wire clk;
	input  wire rst;
	output wire VDAC_clk;
	output wire VDAC_sync;
	output wire VDAC_blank;
	output wire MIPI_clkP;
	output wire MIPI_clkN;

	localparam Start_p = 1'b1;
	localparam State_p = 1'b1;
	localparam rst_p = 1'b0;
	localparam cs_p = 1'b0;
	localparam d_p = 3'b0;
	reg rst_pd = rst_p;
	reg Start_pd = Start_p;
	reg State_pd = State_p;


	wire [1:0] levelP;
	wire [1:0] stateP;
	wire [1:0] levelN;
	wire [1:0] stateN;
	wire [7:0] DAC3_w;
	wire [7:0] DAC4_w;
	wire State_w;
	wire Start_w;
	wire clk_20MHz;
	wire clk_100MHz;
	reg csd = cs_p;
	reg [2:0] d = d_p;
	


DSI_Protocol DSI_control_P(
    .rst(rst),
	 .clk(clk_100MHz),
    .RGB(levelP),
    .State(stateP),
	 .Level(Button),
	 .eoc_d(eoc_w),
	 .Type(1'b1),
	 .Start_s(Start_w),
	 .State_s(State_w),
	 .Serial_s(SerialP),
	 .MIPI_clk(MIPI_clkP),
	 .MIPI_clk_DAC(DAC3_w) 
);

DSI_Protocol DSI_control_N(
	 .rst(rst),
    .clk(clk_100MHz),
    .RGB(levelN),
    .State(stateN),
	 .Level(Button),
	 .eoc_d(eoc_w),
	 .Type(1'b0),
	 .Start_s(Start_s),
	 .State_s(State_s),
	 .Serial_s(SerialN),
	 .MIPI_clk(MIPI_clkN),
	 .MIPI_clk_DAC(DAC4_w)
);

Serial_Protocol Serial_busP(
	.rst(rst),
	.clk(clk_20MHz),
	.eoc(eoc_w),
	.Start(Start_w),
	.State(State_w),
	.Polarity(1'b1),
	.tx(SerialP)
);

Serial_Protocol Serial_busN(
	.rst(rst),
	.clk(clk_20MHz),
	.eoc(eoc),
	.Start(Start_w),
	.State(State_w),
	.Polarity(1'b0),
	.tx(SerialN)
);

DSI_Slave DSI_BUS1P(
    .clk(clk_100MHz),
    .RGB_in(levelP),
    .State(stateP),
	 .Type(1'b1),
    .DAC_o(DAC_1)
);
DSI_Slave DSI_BUS1N(
    .clk(clk_100MHz),
    .RGB_in(levelN),
    .State(stateN),
	 .Type(1'b0),
    .DAC_o(DAC_2)
);
DSI_Slave DSI_BUS2P(
    .clk(clk_100MHz),
    .RGB_in(levelP),
    .State(stateP),
	 .Type(1'b1),
    .DAC_o(DAC_5)
);
DSI_Slave DSI_BUS2N(
    .clk(clk_100MHz),
    .RGB_in(levelN),
    .State(stateN),
	 .Type(1'b0),
    .DAC_o(DAC_6)
);

PLL_block PLL(
    .CLKI(clk),
    .CLKOP(clk_20MHz),
	 .CLKOS(clk_100MHz)
);

always@(posedge clk)
begin
    d <= d + 1'b1;
    if(d >= 3'b111)
	csd <= !csd;
end

assign eoco = eoc_w;
assign cs = csd;
assign VDAC_sync = 1'b0;
assign VDAC_blank = 1'b1;
assign VDAC_clk = clk_100MHz;
assign DAC_4 = DAC4_w;
assign DAC_3 = DAC3_w;

endmodule
