module Registrador(
input Clk, 
input[8:0] Entrada, 
output logic[8:0] Saida);

    always_ff @(posedge Clk)
        Saida <= Entrada;
endmodule