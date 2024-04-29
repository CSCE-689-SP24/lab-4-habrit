# File generated by xdc_sorter v3.3 (Sat Apr 20 13:17:41 CDT 2024)


########## settings :


########## clock :
#XDC=design_fw.zdc
#xdc_lib lib_zse_xc7v_8c_v1_xdc:f08_fx_macro
create_clock -name CLK_design_zkprctrl_wrapper_fib_bridge_rx_u_xst_wrapper_0_socket_lvds_sys_slave_0_u_xst_wrapper_0_socket_lvds_gp_in_0_u_xst_wrapper_0_clki_dv -period [expr [expr 10.00/3]*3] [get_pins {design/zkprctrl/wrapper/fib_bridge_rx/u_xst_wrapper_0/socket_lvds_sys_slave_0/u_xst_wrapper_0/socket_lvds_gp_in_0/u_xst_wrapper_0/bufr_0/O}]
create_clock -name CLK_sys_idel_clk  -period 5.0                           [get_pins {design/zkprctrl/wrapper/sysclk_mxfx/u_xst_wrapper_0/sysclk_idly_0/bufg_0/O}]
create_clock -name CLK_fib_clk       -period 10.00           [get_pins {design/zkprctrl/wrapper/sysclk_mxfx/u_xst_wrapper_0/sysclk_bus_dut_0/fib_clk}]
create_clock -name CLK_fib_clk_hs    -period [expr 10.00/3]  [get_pins {design/zkprctrl/wrapper/sysclk_mxfx/u_xst_wrapper_0/sysclk_bus_dut_0/fib_clk_hs}]
create_clock -name CLK_srb_clk       -period [expr 10.00*10] [get_pins {design/zkprctrl/wrapper/sysclk_mxfx/u_xst_wrapper_0/sysclk_bus_dut_0/srb_clk}]
create_clock -name CLK_sys_xclk      -period 2.22                 [get_pins {design/zkprctrl/wrapper/sysclk_mxfx/u_xst_wrapper_0/sysclk_xclk_0/sys_xclk}]
create_clock -name CLK_sys_xclk_dv4  -period [expr 2.22*4]        [get_pins {design/zkprctrl/wrapper/sysclk_mxfx/u_xst_wrapper_0/sysclk_xclk_0/sys_xclk_dv4}]
create_clock -name CLK_sys_xclk2     -period 2.22                [get_pins {design/zkprctrl/wrapper/sysclk_mxfx/u_xst_wrapper_0/sysclk_xclk2_0/sys_xclk2}]
create_clock -name CLK_sys_xclk2_dv4 -period [expr 2.22*4]       [get_pins {design/zkprctrl/wrapper/sysclk_mxfx/u_xst_wrapper_0/sysclk_xclk2_0/sys_xclk2_dv4}]


########## gen_clock :
#XDC=design_fw.zdc
#xdc_lib lib_zse_xc7v_8c_v1_xdc:f08_fx_macro
create_generated_clock -name CLK_sys_idel_clk_dv2 -divide_by 2 -source [get_pins {design/zkprctrl/wrapper/sysclk_mxfx/u_xst_wrapper_0/sys_idel_clk}] [get_pins {design/zkprctrl/wrapper/sysclk_mxfx/u_xst_wrapper_0/sys_idel_clk_dv2}]
create_generated_clock -name CLK_sys_idel_clk_dv4 -divide_by 4 -source [get_pins {design/zkprctrl/wrapper/sysclk_mxfx/u_xst_wrapper_0/sys_idel_clk}] [get_pins {design/zkprctrl/wrapper/sysclk_mxfx/u_xst_wrapper_0/sys_idel_clk_dv4}]
create_generated_clock -name CLK_sys_idel_clk_dv8 -divide_by 8 -source [get_pins {design/zkprctrl/wrapper/sysclk_mxfx/u_xst_wrapper_0/sys_idel_clk}] [get_pins {design/zkprctrl/wrapper/sysclk_mxfx/u_xst_wrapper_0/sys_idel_clk_dv8}]


########## gen_clock_2 :


########## rename_gen_clock :


########## clock_uncertainty :


########## async :
#XDC=design_fw.zdc
#xdc_lib lib_zse_xc7v_8c_v1_xdc:f08_fx_macro
set_clock_groups -asynchronous -name GRP_design_zkprctrl_wrapper_fib_bridge_rx_u_xst_wrapper_0_socket_lvds_sys_slave_0_u_xst_wrapper_0_socket_lvds_gp_in_0_u_xst_wrapper_0_clki_dv -group [get_clocks CLK_design_zkprctrl_wrapper_fib_bridge_rx_u_xst_wrapper_0_socket_lvds_sys_slave_0_u_xst_wrapper_0_socket_lvds_gp_in_0_u_xst_wrapper_0_clki_dv]
set_clock_groups -asynchronous -name GRP_sys_idel_clk    -group [get_clocks CLK_sys_idel_clk]
set_clock_groups -asynchronous -name GRP_sys_idel_clk_dv -group [get_clocks -include_generated_clocks {CLK_sys_idel_clk_dv2 CLK_sys_idel_clk_dv4 CLK_sys_idel_clk_dv8}]
set_clock_groups -asynchronous -name GRP_fib_clk         -group [get_clocks -include_generated_clocks CLK_fib_clk]
set_clock_groups -asynchronous -name GRP_fib_clk_hs      -group [get_clocks -include_generated_clocks CLK_fib_clk_hs]
set_clock_groups -asynchronous -name GRP_srb_clk         -group [get_clocks -include_generated_clocks CLK_srb_clk]
set_clock_groups -asynchronous -name GRP_sys_xclk        -group [get_clocks -include_generated_clocks {CLK_sys_xclk CLK_sys_xclk_dv4}]
set_clock_groups -asynchronous -name GRP_sys_xclk2       -group [get_clocks -include_generated_clocks {CLK_sys_xclk2 CLK_sys_xclk2_dv4}]


########## group :


########## delay :
#XDC=design_fw.zdc
#xdc_lib lib_zse_xc7v_8c_v1_xdc:f08_fx_macro
set_max_delay -from [get_pins {design/zkprctrl/wrapper/srb_bridge/srb_bridge_srb_0/srb_data_rd_buf_*/Q}] -to [get_clocks CLK_fib_clk] -datapath_only [expr 10.00*10]
set_max_delay -through [get_nets {design/zkprctrl/wrapper/sysclk_mxfx/u_xst_wrapper_0/sock_ce[*]}]                 [expr 10.00*10]
set_max_delay -through [get_nets {design/zkprctrl/wrapper/sysclk_mxfx/u_xst_wrapper_0/sock_sr[*]}]                 [expr 10.00*10]
set_max_delay -through [get_nets {design/zkprctrl/wrapper/sysclk_mxfx/u_xst_wrapper_0/sock_clko_en[*]}]            [expr 10.00*10]
set_max_delay -through [get_nets {design/zkprctrl/wrapper/sysclk_mxfx/u_xst_wrapper_0/sysclk_xclk_0/bufgctrl_en}]  [expr 10.00*10]
set_max_delay -through [get_nets {design/zkprctrl/wrapper/sysclk_mxfx/u_xst_wrapper_0/sysclk_xclk2_0/bufgctrl_en}] [expr 10.00*10]


########## false_path :
#XDC=design_zpar.zdc
set_false_path -quiet -to [get_pins -hierarchical {zview_*/D}]
set_false_path -quiet -from [get_pins -hierarchical {*ztig_*/C}]


########## multicycle_path_setup :


########## multicycle_path_hold :


########## pblock :


########## clock_dedicated_route :
#XDC=design_fw.zdc
#xdc_lib lib_zse_xc7v_8c_v1_xdc:f08_fx_macro
set_property CLOCK_DEDICATED_ROUTE BACKBONE [get_nets -top_net_of_hierarchical_group -segments {design/zkprctrl/wrapper/sysclk_mxfx/u_xst_wrapper_0/sys_xclk2_in}]


########## loc :
#XDC=design_fw.zdc
#xdc_lib lib_zse_xc7v_8c_v1_xdc:f08_fx_macro
create_pblock pblock_fxmacro
resize_pblock pblock_fxmacro -add {CLOCKREGION_X1Y5}
add_cells_to_pblock pblock_fxmacro [get_cells {design/zkprctrl/wrapper/fib* design/zkprctrl/wrapper/srb*}]
create_pblock pblock_fx_macro_slr
resize_pblock pblock_fx_macro_slr -add {CLOCKREGION_X0Y3:CLOCKREGION_X1Y5}
set_property LOC MMCME2_ADV_X0Y5 [get_cells design/zkprctrl/wrapper/sysclk_mxfx/u_xst_wrapper_0/sysclk_xclk_0/series7_pll_xclk]   ; # SLR 1 Top    MMCM05
set_property LOC MMCME2_ADV_X0Y4 [get_cells design/zkprctrl/wrapper/sysclk_mxfx/u_xst_wrapper_0/sysclk_xclk2_0/series7_pll_xclk]  ; # SLR 1 Bottom MMCM04
#XDC=design_zlcr.zdc
create_pblock pblock_bk10
resize_pblock pblock_bk10 -add SLICE_X0Y450:SLICE_X251Y499
add_cells_to_pblock pblock_bk10 design/socket_00_08_00_09/ClockRegion000SD_20A/ser0


########## init :


########## default :

set_max_time_borrow 0 [get_clocks {zebu_clock*}]
