module Teste;  
    logic Swap, Enable, Clock;
    logic[3:0] DownCountS, UpCountS;

    UpDownCount Test(.Swap(Swap), .Enable(Enable), 
    .Clk(Clk), .DownCountS(DownCountS), .UpCountS(UpCountS));

    initial begin
        $dumpfile("dump.vcd");
        $dumpvars(1);

        Swap = 0;
        Enable = 0;
        Clock = 0;

        repeat(1000) #10 Clock = ~Clock;
    end

    initial begin
        #15 Enable = 1;
        #30 Enable = 0;
        #20 Enable = 1;
    end

    initial repeat(1000) begin
        #100 Swap = 1;
        #15 Swap = 0;
    end
endmodule