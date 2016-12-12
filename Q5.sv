module QUESTÃO5(
input logic resetn, clock, 
input logic[7:0] data_in, 
output logic[2:0] msb);
    integer a;

    always_ff @(posedge clock or negedge resetn) begin
        if(!resetn)
            msb <= 3'b000;
        else begin
            a = 0;
            
            while(a<8) begin
                if (data_in[a])
                    msb <= a;

                a = a + 1;
            end
        end
    end
endmodule

