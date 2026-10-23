`timescale 1ns/1ps
module tb_spi_master;
    reg clk = 0, rst_n = 0, start = 0;
    reg  [7:0] tx_data = 0;
    wire [7:0] rx_data;
    wire miso, mosi, sclk, cs_n, busy, done;
    assign miso = mosi;

    spi_master #(.DATA_W(8), .CLK_DIV(4)) dut (
        .clk(clk), .rst_n(rst_n), .start(start), .tx_data(tx_data),
        .miso(miso), .rx_data(rx_data), .busy(busy), .done(done),
        .sclk(sclk), .mosi(mosi), .cs_n(cs_n));

    always #5 clk = ~clk;

    task xfer(input [7:0] d);
    begin
        @(posedge clk); tx_data <= d; start <= 1;
        @(posedge clk); start <= 0;
        wait (done);
        @(posedge clk);
        if (rx_data === d) $display("PASS: sent %h received %h", d, rx_data);
        else               $display("FAIL: sent %h received %h", d, rx_data);
    end
    endtask

    initial begin
        $dumpfile("spi_controller.vcd");
        $dumpvars(0, tb_spi_master);
        #50 rst_n = 1;
        xfer(8'hA5); xfer(8'h3C); xfer(8'hFF); xfer(8'h00);
        #100 $finish;
    end
    initial begin #100000 $display("TIMEOUT"); $finish; end
endmodule
