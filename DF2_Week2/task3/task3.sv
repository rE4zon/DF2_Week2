module counter_3bit (input logic clk,
    				 input logic reset,
    				 input logic enable,
    				 output logic [2:0] count);

    always_ff @(posedge clk) 
      begin: COUNTER
        if (reset)
            count <= 3'b000;
        else if (enable)
            count <= count + 1;
    end

endmodule