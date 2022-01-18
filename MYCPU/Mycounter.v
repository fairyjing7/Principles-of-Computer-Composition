module Mycounter(input[7:0] data, input clr, input ldpc, input t4, output[7:0] q);

	reg[7:0] s;
	
	initial
		begin
			s = 8'b0;
		end
	
	always @(posedge t4)
		begin
			if(clr)
				begin
					s = 8'b0;
				end
			else if(ldpc)
				begin
					s = data;
				end
			else	
				begin
					s <= s+1;
				end
		end
	
	assign q = s;
	
endmodule
