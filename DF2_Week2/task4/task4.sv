module multi_4x4 (input logic [3:0] A,
    		  input logic [3:0] B,
                  output logic [7:0] product);

    logic [3:0] row0, row1, row2, row3;

    for (genvar i = 0; i < 4; i++) 
	begin
        assign row0[i] = A[i] & B[0];
        assign row1[i] = A[i] & B[1];
        assign row2[i] = A[i] & B[2];
        assign row3[i] = A[i] & B[3];
    end

    assign product = {4'b0000, row0} + {3'b000, row1, 1'b0} + {2'b00, row2, 2'b00} + {1'b0, row3, 3'b000};

endmodule
