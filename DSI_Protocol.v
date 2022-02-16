module DSI_Protocol(RGB,State,eoc_d,Start_s,State_s,Serial_s,Type, Level, clk, rst, MIPI_clk, MIPI_clk_DAC);
	
	output wire [1:0] RGB;
	output wire [1:0] State;
	input wire eoc_d;
	output wire Start_s;
	output wire State_s;
	input wire Serial_s;
	input wire Type;
	input wire [1:0] Level;
	input wire clk;
	input wire rst;
	output wire MIPI_clk;
	output wire [7:0] MIPI_clk_DAC;
	
	
	localparam start_p = 0;
localparam inicio = 0;
localparam lvl_p = 1;
localparam state_p = 2;
reg [1:0] div = start_p;
reg [1:0] lvlq = start_p;
reg [1:0] lvld = lvl_p;
reg [1:0] stateq = state_p;
reg [12:0] wave = start_p;
reg [11:0] idle = start_p;
reg [24:0] idle_start = start_p;
reg init = inicio;
reg Start_sd = start_p;
reg State_sd = start_p;
localparam rs = 0;
reg rst_d = rs;
localparam sss_p = 901;
reg [9:0] sss = sss_p;
reg [7:0] iter;
reg MIPI_clk_d;
reg [7:0] MIPI_clk_DAC_d;

always@(posedge clk)//100MHz ~ 10ns
begin
	if(rst == 0)
	begin
		if(rst_d == 1)begin
			div <= start_p;
			lvlq <= lvl_p;
			lvld <= lvl_p;
			stateq <= state_p;
			wave <= start_p;
			idle <= 1317;
			idle_start <= start_p;
			init <= inicio;
			Start_sd <= start_p;
			State_sd <= start_p;
			rst_d <= 0;
			MIPI_clk_d <= 1'b0;
			MIPI_clk_DAC_d <= 8'b00000000;
		end
	end
	else
	begin
		rst_d <= 1;
		if(init == 0)
		begin
			idle_start <= idle_start + 1;
			MIPI_clk_d <= 1'b1;
			
			if(Type >= 1)
			begin
				MIPI_clk_DAC_d <= 8'b1011_1111;
			end
			else if(Type == 0)
			begin
				MIPI_clk_DAC_d <= 8'b1111_1111;
			end
			
			if(Serial_s >=1)
			begin
				stateq <= 2'b10;
				lvlq <= 2'b11;
			end
			else if(Serial_s == 0)
			begin
				stateq <= 2'b10;
				lvlq <= 2'b01;
			end
			if(eoc_d == 1)
			begin
				Start_sd <= 0;
			end
			else if(idle_start == 18360000)// 183.6ms ~ 18360000
			begin
				idle_start <= 23'b0;
				init <= 1;
			end
			else if (idle_start == 11886000)// 118.86ms ~ 11886000
			begin
					Start_sd <= 1;
					State_sd <= 0;
			end
			else if (idle_start == 1080000)// 10.8ms ~ 1080000
			begin
					Start_sd <= 1;
					State_sd <= 1;
			end
		end
		else if(init >= 1)
		begin
			if(idle <= 0)//first low level
			begin
				MIPI_clk_d <= 1'b0;
				MIPI_clk_DAC_d <= 8'b00010110;
				stateq <= 2'b11;
				wave <= wave +1'b1;
				if(wave >= 598)// 6us
				begin
					wave <= 10'b0;
					idle <= idle + 1'b1;
				end
			end
			else if(idle <= 1334)// # datos
			begin
				wave <= wave + 1'b1;
				if(wave <= 850)// 8.5us
				begin
					stateq <= 2'b00;
					lvlq <= lvld;
				end
				else if (wave >=851)
				begin
					stateq <= 2'b01;
					if(wave >= sss)// 0.52us
					begin
						iter <= iter + 1;
						if(iter > 2)
						begin
							iter <= 8'b0;
							sss <= 902;
						end
						else if(iter <= 2)
						begin
							sss <= 903;
						end
						wave <= 10'b0;
						idle<= idle + 1'b1;
						lvld <= Level;
					end
				end
			end
			else if(idle <= 1868)//# total de niveles 4.832ms = 531->534 + high(47.1us) + 6
			begin
				wave <= wave + 1'b1;
				if(idle <= 1335) //Ultimo dato
				begin
					wave <= 887;
				end
				if(Type >= 1)// BUS P
				begin
					if(wave >= 887)// 7.76 us
					begin
						wave <= 10'b0;
						idle <= idle + 1'b1;
						stateq <= 2'b10;
						lvlq <= 2'b01;
					end
					else if(wave >= 110)//500 ns
					begin
						stateq <= 2'b10;
						lvlq <= 2'b11;
					end
					else if(wave >= 60)//600 ns
					begin
						stateq <= 2'b10;
						lvlq <= 2'b10;
					end
				end
				else if(Type == 0)// BUS N
				begin
					if(wave >= 887)//8.3us
					begin
						wave <= 10'b0;
						idle <= idle + 1'b1;
						stateq <= 2'b10;
						lvlq <= 2'b01;
					end
					else if(wave >= 57)// 570ns
					begin
						lvlq <= 2'b11;
						stateq <= 2'b10;
					end
				end
			end
			else if(idle <= 1869)//high(47.1us)
			begin
				wave <= wave + 1'b1;
				if(wave >= 4711)
				begin
					wave <= 10'b0;
					idle <= idle + 1'b1;
				end
				else if (wave >= 4710)// 47.1us
				begin
					stateq <= 2'b10;
					lvlq <= 2'b11;
				end
				else if(wave >= 110)//500 ns
				begin
					stateq <= 2'b10;
					lvlq <= 2'b11;
				end
				else if(wave >= 60)//600 ns
				begin
					stateq <= 2'b10;
					lvlq <= 2'b10;
				end
			end
			else if(idle <= 1876)//6
			begin
				wave <= wave + 1'b1;
				if(wave == 1)// 7.76 us
				begin
					stateq <= 2'b10;
					lvlq <= 2'b01;
				end
				if(Type >= 1)// BUS P
				begin
					if(wave >= 887)// 7.76 us
					begin
						wave <= 10'b0;
						idle <= idle + 1'b1;
						stateq <= 2'b10;
						lvlq <= 2'b01;
					end
					else if(wave >= 110)//500 ns
					begin
						stateq <= 2'b10;
						lvlq <= 2'b11;
					end
					else if(wave >= 60)//600 ns
					begin
						stateq <= 2'b10;
						lvlq <= 2'b10;
					end
				end
				else if(Type == 0)// BUS N
				begin
					if(wave >= 887)//8.3us
					begin
						wave <= 10'b0;
						idle <= idle + 1'b1;
						stateq <= 2'b10;
						lvlq <= 2'b01;
					end 
					else if(wave >= 57)// 570ns
					begin
						lvlq <= 2'b11;
						stateq <= 2'b10;
					end
				end
			end
			if(idle >=1876)idle <= 11'b0;//ultimo dato
		end
	end
end

assign RGB = lvlq;
assign State = stateq;
assign Start_s = Start_sd;
assign State_s = State_sd; 
assign MIPI_clk = MIPI_clk_d;
assign MIPI_clk_DAC = MIPI_clk_DAC_d; 

endmodule
