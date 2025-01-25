transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

vlib work
vlib riviera/xpm
vlib riviera/lib_pkg_v1_0_4
vlib riviera/lib_cdc_v1_0_3
vlib riviera/axi_lite_ipif_v3_0_4
vlib riviera/interrupt_control_v3_1_5
vlib riviera/axi_iic_v2_1_10
vlib riviera/xil_defaultlib

vmap xpm riviera/xpm
vmap lib_pkg_v1_0_4 riviera/lib_pkg_v1_0_4
vmap lib_cdc_v1_0_3 riviera/lib_cdc_v1_0_3
vmap axi_lite_ipif_v3_0_4 riviera/axi_lite_ipif_v3_0_4
vmap interrupt_control_v3_1_5 riviera/interrupt_control_v3_1_5
vmap axi_iic_v2_1_10 riviera/axi_iic_v2_1_10
vmap xil_defaultlib riviera/xil_defaultlib

vlog -work xpm  -incr -l xpm -l lib_pkg_v1_0_4 -l lib_cdc_v1_0_3 -l axi_lite_ipif_v3_0_4 -l interrupt_control_v3_1_5 -l axi_iic_v2_1_10 -l xil_defaultlib \
"/mnt/DELETE/vivado/Vivado/2024.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"/mnt/DELETE/vivado/Vivado/2024.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -93  -incr \
"/mnt/DELETE/vivado/Vivado/2024.2/data/ip/xpm/xpm_VCOMP.vhd" \

vcom -work lib_pkg_v1_0_4 -93  -incr \
"../../../ipstatic/ipshared/8c68/hdl/lib_pkg_v1_0_rfs.vhd" \

vcom -work lib_cdc_v1_0_3 -93  -incr \
"../../../ipstatic/ipshared/2a4f/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work axi_lite_ipif_v3_0_4 -93  -incr \
"../../../ipstatic/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd" \

vcom -work interrupt_control_v3_1_5 -93  -incr \
"../../../ipstatic/ipshared/d8cc/hdl/interrupt_control_v3_1_vh_rfs.vhd" \

vcom -work axi_iic_v2_1_10 -93  -incr \
"../../../ipstatic/ipshared/89f0/hdl/axi_iic_v2_1_vh_rfs.vhd" \

vcom -work xil_defaultlib -93  -incr \
"../../../../aaaa_ex.gen/sources_1/ip/aaaa/sim/aaaa.vhd" \

vlog -work xil_defaultlib \
"glbl.v"

