transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

vlib work
vlib riviera/xpm
vlib riviera/dist_mem_gen_v8_0_16
vlib riviera/blk_mem_gen_v8_4_10
vlib riviera/lib_bmg_v1_0_19
vlib riviera/lib_cdc_v1_0_3
vlib riviera/axi_traffic_gen_v3_0_20
vlib riviera/xil_defaultlib

vmap xpm riviera/xpm
vmap dist_mem_gen_v8_0_16 riviera/dist_mem_gen_v8_0_16
vmap blk_mem_gen_v8_4_10 riviera/blk_mem_gen_v8_4_10
vmap lib_bmg_v1_0_19 riviera/lib_bmg_v1_0_19
vmap lib_cdc_v1_0_3 riviera/lib_cdc_v1_0_3
vmap axi_traffic_gen_v3_0_20 riviera/axi_traffic_gen_v3_0_20
vmap xil_defaultlib riviera/xil_defaultlib

vlog -work xpm  -incr "+incdir+../../../ipstatic/hdl/src/verilog" -l xpm -l dist_mem_gen_v8_0_16 -l blk_mem_gen_v8_4_10 -l lib_bmg_v1_0_19 -l lib_cdc_v1_0_3 -l axi_traffic_gen_v3_0_20 -l xil_defaultlib \
"/mnt/DELETE/vivado/Vivado/2024.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"/mnt/DELETE/vivado/Vivado/2024.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -93  -incr \
"/mnt/DELETE/vivado/Vivado/2024.2/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work dist_mem_gen_v8_0_16  -incr -v2k5 "+incdir+../../../ipstatic/hdl/src/verilog" -l xpm -l dist_mem_gen_v8_0_16 -l blk_mem_gen_v8_4_10 -l lib_bmg_v1_0_19 -l lib_cdc_v1_0_3 -l axi_traffic_gen_v3_0_20 -l xil_defaultlib \
"../../../ipstatic/simulation/dist_mem_gen_v8_0.v" \

vlog -work blk_mem_gen_v8_4_10  -incr -v2k5 "+incdir+../../../ipstatic/hdl/src/verilog" -l xpm -l dist_mem_gen_v8_0_16 -l blk_mem_gen_v8_4_10 -l lib_bmg_v1_0_19 -l lib_cdc_v1_0_3 -l axi_traffic_gen_v3_0_20 -l xil_defaultlib \
"../../../ipstatic/simulation/blk_mem_gen_v8_4.v" \

vcom -work lib_bmg_v1_0_19 -93  -incr \
"../../../ipstatic/hdl/lib_bmg_v1_0_rfs.vhd" \

vcom -work lib_cdc_v1_0_3 -93  -incr \
"../../../ipstatic/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work axi_traffic_gen_v3_0_20 -93  -incr \
"../../../ipstatic/hdl/axi_traffic_gen_v3_0_rfs.vhd" \

vlog -work axi_traffic_gen_v3_0_20  -incr -v2k5 "+incdir+../../../ipstatic/hdl/src/verilog" -l xpm -l dist_mem_gen_v8_0_16 -l blk_mem_gen_v8_4_10 -l lib_bmg_v1_0_19 -l lib_cdc_v1_0_3 -l axi_traffic_gen_v3_0_20 -l xil_defaultlib \
"../../../ipstatic/hdl/axi_traffic_gen_v3_0_rfs.v" \

vlog -work xil_defaultlib  -incr -v2k5 "+incdir+../../../ipstatic/hdl/src/verilog" -l xpm -l dist_mem_gen_v8_0_16 -l blk_mem_gen_v8_4_10 -l lib_bmg_v1_0_19 -l lib_cdc_v1_0_3 -l axi_traffic_gen_v3_0_20 -l xil_defaultlib \
"../../../../aaaa_ex.gen/sources_1/ip/axi_traffic_gen_0/sim/axi_traffic_gen_0.v" \

vlog -work xil_defaultlib \
"glbl.v"

