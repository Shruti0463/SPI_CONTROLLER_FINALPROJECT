current_design spi_master
create_clock -name clk -period 10.0 [get_ports clk]
set_input_delay  2.0 -clock clk [get_ports {rst_n start tx_data* miso}]
set_output_delay 2.0 -clock clk [all_outputs]
