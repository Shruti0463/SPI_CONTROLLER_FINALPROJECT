read_liberty /OpenROAD-flow-scripts/flow/platforms/sky130hd/lib/sky130_fd_sc_hd__tt_025C_1v80.lib
read_db /work/flow/work/results/sky130hd/spi_master/base/6_final.odb
read_sdc /work/flow/work/results/sky130hd/spi_master/base/6_final.sdc
source /OpenROAD-flow-scripts/flow/platforms/sky130hd/setRC.tcl
estimate_parasitics -placement
report_checks -path_delay max -format full_clock_expanded
report_checks -path_delay min
report_worst_slack -max
report_worst_slack -min
report_tns
