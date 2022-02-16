module Serial_Protocol(tx,eoc,Polarity,Start,State,clk, rst);

	output wire tx;
	output wire eoc;
	input wire Polarity;
	input wire Start;
	input wire State;
	input wire clk;
	input wire rst;
	
localparam buff1 = 100'b0001010100000000001010001000000000000000010000000100000000000000000000000000000010100001010000001111; //buffer data
localparam buff2 = 100'b0000101010000000001010000100000000000000010000010001000000000000000000000000000000010101000000001111;
localparam buff3 = 100'b0010000000101010100000010001010101010000000101010000101010000010101010101010101000000100000010100111; //buffer data
localparam buff4 = 100'b0010000000010101010000010001010101010000000010100010001010000010101010101010101010000000001010100111;

localparam init = 0;
localparam HS = 1;
reg [6:0] pars = init; //parser used in buffer
reg o = HS;    //output bit
reg eocd = init;
localparam rs = 0;
reg rst_d = rs;

always@(posedge clk)
begin
	if(rst == 0)
	begin
		if(rst_d == 1)begin
			pars <= init; //parser used in buffer
			o <= 1;    //output bit
			eocd <= init;
			rst_d = 0;
		end
	end
	else 
	begin
		rst_d = 1;
		if(Start >= 1'b1)
		begin
			if(Polarity >= 1'b1)
				if(State >= 1'b1)
					o <= buff1[100-pars];// left to right parsing
				else begin
					o <= buff2[100-pars];// left to right parsing
				end
			else begin
				if(State >= 1'b1)
					o <= buff3[100-pars];// left to right parsing
				else begin
					o <= buff4[100-pars];// left to right parsing
				end
			end
			
			
			pars <= pars+1;

			//serial transmission ends at 100
			if(pars == 100)
			begin
				 pars <= 7'b0;//reset parser
				 eocd <= 1'b1;
				 o <= 1'b1; 
			end
		end
		else
		begin
			eocd <= 1'b0;
			o <= 1'b1; 
		end
	end
end

assign eoc = eocd;
assign tx = o;

endmodule
