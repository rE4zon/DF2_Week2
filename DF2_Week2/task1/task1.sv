module adder_sub #(parameter WIDTH = 4)
	(input logic [WIDTH-1:0] A,
 	 input logic [WIDTH-1:0] B,
     input logic sub,
     output logic [WIDTH-1:0] result);

    always_comb 
	begin
        if (sub == 0)
            result = A + B;
        else
            result = A - B;
    end

endmodule