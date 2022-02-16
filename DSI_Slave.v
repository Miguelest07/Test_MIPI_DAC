module DSI_Slave(DAC_o, clk, Type, RGB_in, State);

	output wire [7:0] DAC_o;
	input wire clk;
	input wire Type;
	input wire [1:0] RGB_in;
	input wire [1:0] State;

reg f;
localparam dac_start = 8'b0;
reg [7:0] DAC = dac_start;

always@(posedge clk)
begin
	if(Type >= 1)
	begin
		case(State)
        2'b00:
        begin
            case (RGB_in)
              2'b00:   DAC<= 8'b00100111;
              2'b01:   DAC<= 8'b00101000;
              2'b10:   DAC<= 8'b00101010;
              2'b11:   DAC<= 8'b00101101;
              default: f <= 0;
            endcase
        end
        2'b01:
        begin
            DAC <= 8'b00011010;
        end
        2'b10:
        begin
            case (RGB_in)
              2'b01:   DAC<= 8'b00000000;// 0v
              2'b10:   DAC<= 8'b00011010;// 22mv
              2'b11:   DAC<= 8'b11001001;// 1V   167// 1.176v 196.4
              default: f <= 0;
            endcase
        end
        2'b11:
        begin
            DAC<= 8'b00011010;// 160 mv
        end
		endcase
	end	 
	else if(Type == 0)//N
	begin
		case(State)
        2'b00:
        begin
            case (RGB_in)
              2'b00:   DAC <= 8'b00011010;
              2'b01:   DAC <= 8'b00010111;
              2'b10:   DAC <= 8'b00010101;
              2'b11:   DAC <= 8'b00010001;
              default: f <= 0;
            endcase
        end
        2'b01:
        begin
				DAC <= 8'b00100111;
        end
        2'b10:
        begin
            case (RGB_in)
              2'b01:   DAC <= 8'b00101110;// 0v---300mV-8bits
              2'b10:   DAC <= 8'b00100100;//52mv
				  2'b11:   DAC <= 8'b11111111;//1.176v
              default: f <= 0;
            endcase
        end
        2'b11:
        begin
				DAC <= 8'b00100101;//  280 mV
        end
		endcase
	end
end

assign DAC_o = DAC;

endmodule
