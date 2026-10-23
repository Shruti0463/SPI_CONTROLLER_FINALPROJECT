module spi_master #(
    parameter DATA_W  = 8,
    parameter CLK_DIV = 4
)(
    input  wire              clk,
    input  wire              rst_n,
    input  wire              start,
    input  wire [DATA_W-1:0] tx_data,
    input  wire              miso,
    output reg  [DATA_W-1:0] rx_data,
    output reg               busy,
    output reg               done,
    output reg               sclk,
    output reg               mosi,
    output reg               cs_n
);
    localparam IDLE = 2'd0, TRANSFER = 2'd1, FINISH = 2'd2;
    reg [1:0]        state;
    reg [7:0]        div_cnt;
    reg [3:0]        bit_cnt;
    reg [DATA_W-1:0] shreg;

    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            state <= IDLE; sclk <= 0; mosi <= 0; cs_n <= 1;
            busy <= 0; done <= 0; rx_data <= 0;
            div_cnt <= 0; bit_cnt <= 0; shreg <= 0;
        end else begin
            done <= 0;
            case (state)
                IDLE: begin
                    sclk <= 0; cs_n <= 1;
                    if (start) begin
                        shreg   <= tx_data;
                        mosi    <= tx_data[DATA_W-1];
                        cs_n    <= 0;
                        busy    <= 1;
                        div_cnt <= 0;
                        bit_cnt <= 0;
                        state   <= TRANSFER;
                    end
                end
                TRANSFER: begin
                    if (div_cnt == CLK_DIV-1) begin
                        div_cnt <= 0;
                        sclk    <= ~sclk;
                        if (!sclk) begin
                            shreg <= {shreg[DATA_W-2:0], miso};
                        end else begin
                            bit_cnt <= bit_cnt + 1;
                            if (bit_cnt == DATA_W-1) begin
                                rx_data <= shreg;
                                state   <= FINISH;
                            end else begin
                                mosi <= shreg[DATA_W-1];
                            end
                        end
                    end else begin
                        div_cnt <= div_cnt + 1;
                    end
                end
                FINISH: begin
                    cs_n  <= 1;
                    mosi  <= 0;
                    busy  <= 0;
                    done  <= 1;
                    state <= IDLE;
                end
                default: state <= IDLE;
            endcase
        end
    end
endmodule
