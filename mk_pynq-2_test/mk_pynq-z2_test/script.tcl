############################################################
## This file is generated automatically by Vitis HLS.
## Please DO NOT edit it.
## Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
############################################################
open_project mk_pynq-2_test
set_top add
add_files mk_add.cpp
open_solution "mk_pynq-z2_test" -flow_target vivado
set_part {xc7z020clg400-1}
create_clock -period 10 -name default
#source "./mk_pynq-2_test/mk_pynq-z2_test/directives.tcl"
#csim_design
csynth_design
#cosim_design
export_design -rtl verilog -format ip_catalog
