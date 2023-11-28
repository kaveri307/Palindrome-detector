module palindrome_detector(
    input [7:0] data_in,
    input clk,
    output reg is_palindrome);

    integer i;
    reg [7:0] reversed_data;
    
    always @(*) begin
        for (i = 0; i < 8; i = i + 1) begin
            reversed_data[i] = data_in[7 - i];
        end
    end
    
    always @(posedge clk) begin
        if (data_in == reversed_data)
            is_palindrome <= 1;
        else
            is_palindrome <= 0;
    end

endmodule