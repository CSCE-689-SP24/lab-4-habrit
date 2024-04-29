# File generated by xdc_sorter v3.3 (Sat Apr 20 13:23:39 CDT 2024)


########## settings :


########## clock :
#XDC=design_zpar.zdc
#xdc_lib lib_zse_xc7v_8c_v1_xdc:if_if_macro
create_clock -name CLK_RTB_zins_fp_ctrl_wrapper_fib_bridge_rx_u_xst_wrapper_0_socket_lvds_sys_slave_0_u_xst_wrapper_0_socket_lvds_gp_in_0_u_xst_wrapper_0_clki_dv -period [expr [expr 10/3]*3] [get_pins {RTB/zins_fp_ctrl/wrapper/fib_bridge_rx/u_xst_wrapper_0/socket_lvds_sys_slave_0/u_xst_wrapper_0/socket_lvds_gp_in_0/u_xst_wrapper_0/bufr_0/O}]
create_clock -name CLK_sys_idel_clk  -period 5.0                           [get_pins {RTB/zins_fp_ctrl/wrapper/sysclk_mxif/u_xst_wrapper_0/sysclk_idly_0/bufg_0/O}]
create_clock -name CLK_fib_clk       -period 10           [get_pins {RTB/zins_fp_ctrl/wrapper/sysclk_mxif/u_xst_wrapper_0/sysclk_bus_dut_0/fib_clk}]
create_clock -name CLK_fib_clk_hs    -period [expr 10/3]  [get_pins {RTB/zins_fp_ctrl/wrapper/sysclk_mxif/u_xst_wrapper_0/sysclk_bus_dut_0/fib_clk_hs}]
create_clock -name CLK_srb_clk       -period [expr 10*10] [get_pins {RTB/zins_fp_ctrl/wrapper/sysclk_mxif/u_xst_wrapper_0/sysclk_bus_dut_0/srb_clk}]
create_clock -name CLK_sys_mclk      -period 20           [get_pins {RTB/zins_fp_ctrl/wrapper/sysclk_mxif/u_xst_wrapper_0/sys_mclk}]
create_clock -name CLK_sys_pclk      -period 100           [get_pins {RTB/zins_fp_ctrl/wrapper/sysclk_mxif/u_xst_wrapper_0/sys_pclk}]
create_clock -name CLK_sys_xclk      -period 2.222                 [get_pins {RTB/zins_fp_ctrl/wrapper/sysclk_mxif/u_xst_wrapper_0/sysclk_xclk_0/sys_xclk}]
create_clock -name CLK_sys_xclk_dv4  -period [expr 2.222*4]        [get_pins {RTB/zins_fp_ctrl/wrapper/sysclk_mxif/u_xst_wrapper_0/sysclk_xclk_0/sys_xclk_dv4}]
create_clock -name CLK_sys_xclk2     -period %XCLK2_PERIOD%                [get_pins {RTB/zins_fp_ctrl/wrapper/sysclk_mxif/u_xst_wrapper_0/sysclk_xclk_0/sys_xclk2}]
create_clock -name CLK_sys_xclk2_dv4 -period [expr %XCLK2_PERIOD%*4]       [get_pins {RTB/zins_fp_ctrl/wrapper/sysclk_mxif/u_xst_wrapper_0/sysclk_xclk_0/sys_xclk2_dv4}]


########## gen_clock :
#XDC=design_zpar.zdc
#xdc_lib lib_zse_xc7v_8c_v1_xdc:if_if_macro
create_generated_clock -name CLK_sys_idel_clk_dv2 -divide_by 2   -source [get_pins {RTB/zins_fp_ctrl/wrapper/sysclk_mxif/u_xst_wrapper_0/sys_idel_clk}] [get_pins {RTB/zins_fp_ctrl/wrapper/sysclk_mxif/u_xst_wrapper_0/sys_idel_clk_dv2}]
create_generated_clock -name CLK_sys_idel_clk_dv4 -divide_by 4   -source [get_pins {RTB/zins_fp_ctrl/wrapper/sysclk_mxif/u_xst_wrapper_0/sys_idel_clk}] [get_pins {RTB/zins_fp_ctrl/wrapper/sysclk_mxif/u_xst_wrapper_0/sys_idel_clk_dv4}]
create_generated_clock -name CLK_sys_idel_clk_dv8 -divide_by 8   -source [get_pins {RTB/zins_fp_ctrl/wrapper/sysclk_mxif/u_xst_wrapper_0/sys_idel_clk}] [get_pins {RTB/zins_fp_ctrl/wrapper/sysclk_mxif/u_xst_wrapper_0/sys_idel_clk_dv8}]


########## gen_clock_2 :


########## rename_gen_clock :


########## clock_uncertainty :


########## async :
#XDC=design_zpar.zdc
#xdc_lib lib_zse_xc7v_8c_v1_xdc:if_if_macro
set_clock_groups -asynchronous -name GRP_RTB_zins_fp_ctrl_wrapper_fib_bridge_rx_u_xst_wrapper_0_socket_lvds_sys_slave_0_u_xst_wrapper_0_socket_lvds_gp_in_0_u_xst_wrapper_0_clki_dv -group [get_clocks CLK_RTB_zins_fp_ctrl_wrapper_fib_bridge_rx_u_xst_wrapper_0_socket_lvds_sys_slave_0_u_xst_wrapper_0_socket_lvds_gp_in_0_u_xst_wrapper_0_clki_dv]
set_clock_groups -asynchronous -name GRP_sys_idel_clk    -group [get_clocks CLK_sys_idel_clk]
set_clock_groups -asynchronous -name GRP_sys_idel_clk_dv -group [get_clocks -include_generated_clocks {CLK_sys_idel_clk_dv2 CLK_sys_idel_clk_dv4 CLK_sys_idel_clk_dv8}]
set_clock_groups -asynchronous -name GRP_fib_clk         -group [get_clocks -include_generated_clocks CLK_fib_clk]
set_clock_groups -asynchronous -name GRP_fib_clk_hs      -group [get_clocks -include_generated_clocks CLK_fib_clk_hs]
set_clock_groups -asynchronous -name GRP_srb_clk         -group [get_clocks -include_generated_clocks CLK_srb_clk]
set_clock_groups -asynchronous -name GRP_sys_mclk        -group [get_clocks -include_generated_clocks CLK_sys_mclk]
set_clock_groups -asynchronous -name GRP_sys_pclk        -group [get_clocks -include_generated_clocks [list [get_clocks -include_generated_clocks CLK_sys_pclk] [get_clocks -quiet "CLK_loopback_*"]]]
set_clock_groups -asynchronous -name GRP_sys_xclk        -group [get_clocks -include_generated_clocks {CLK_sys_xclk CLK_sys_xclk_dv4}]
set_clock_groups -asynchronous -name GRP_sys_xclk2       -group [get_clocks -include_generated_clocks {CLK_sys_xclk2 CLK_sys_xclk2_dv4}]


########## group :


########## delay :
#XDC=design_zpar.zdc
#xdc_lib lib_xdc:clockgen2
set_max_delay -from [get_clocks CLK_sys_pclk] -through [get_nets {FK/zuf_clockgen/wrapper/dclk_posedge_en_int[*] FK/zuf_clockgen/wrapper/dclk_negedge_en_int[*]}] -to [get_clocks CLK_sys_mclk] [expr 100-10]
#xdc_lib lib_zse_xc7v_8c_v1_xdc:if_if_macro
set_max_delay -from [get_clocks CLK_sys_pclk] -through [get_nets {RTB/zins_fp_ctrl/wrapper/synchronous_readback/dclk_posedge_next[*] RTB/zins_fp_ctrl/wrapper/synchronous_readback/dclk_negedge_next[*]}] -to [get_clocks CLK_sys_mclk] [expr 100-10]
set_max_delay -from [get_pins {RTB/zins_fp_ctrl/wrapper/srb_bridge/srb_bridge_srb_0/srb_data_rd_buf_*/Q}] -to [get_clocks CLK_fib_clk] -datapath_only [expr 10*10]
set_max_delay -through [get_pins {RTB/zins_fp_ctrl/wrapper/sysclk_mxif/u_xst_wrapper_0/sock_ce[*]}]                 [expr 10*10]
set_max_delay -through [get_pins {RTB/zins_fp_ctrl/wrapper/sysclk_mxif/u_xst_wrapper_0/sock_sr[*]}]                 [expr 10*10]
set_max_delay -through [get_pins {RTB/zins_fp_ctrl/wrapper/sysclk_mxif/u_xst_wrapper_0/sock_clko_en[*]}]            [expr 10*10]
set_max_delay -through [get_nets {RTB/zins_fp_ctrl/wrapper/sysclk_mxif/u_xst_wrapper_0/sysclk_xclk_0/bufgctrl_en}]  [expr 10*10]
set_max_delay -through [get_nets {RTB/zins_fp_ctrl/wrapper/sysclk_mxif/u_xst_wrapper_0/sysclk_xclk2_0/bufgctrl_en}] [expr 10*10]
set_max_delay -from [get_clocks CLK_sys_mclk] -to [get_clocks CLK_sys_pclk] 10


########## false_path :
#XDC=design_zpar.zdc
set_false_path -to   [get_pins -hierarchical {zview_*/D}]
set_false_path -from [get_pins -hierarchical {ztig_*/C}]
#xdc_lib lib_xdc:clockgen2
set_false_path -through [get_pins {FK/zuf_clockgen/wrapper/clockgen_reset_0/dut_dreset}]


########## multicycle_path_setup :


########## multicycle_path_hold :


########## pblock :


########## clock_dedicated_route :
#XDC=design_zpar.zdc
#xdc_lib lib_zse_xc7v_8c_v1_xdc:if_if_macro
set_property CLOCK_DEDICATED_ROUTE BACKBONE [get_nets -top_net_of_hierarchical_group -segments {RTB/zins_fp_ctrl/wrapper/sysclk_mxif/u_xst_wrapper_0/sys_xclk2_in}]


########## loc :
#XDC=design_zpar.zdc
#xdc_lib lib_xdc:clockgen2
create_pblock pblock_clockgen
resize_pblock pblock_clockgen -add CLOCKREGION_X0Y3:CLOCKREGION_X1Y5
add_cells_to_pblock pblock_clockgen [get_cells {FK/zuf_clockgen/wrapper}]
#xdc_lib lib_zse_xc7v_8c_v1_xdc:if_if_macro
create_pblock pblock_ifmacro
resize_pblock pblock_ifmacro -add {CLOCKREGION_X1Y0:CLOCKREGION_X1Y1}
add_cells_to_pblock pblock_ifmacro [get_cells {RTB/zins_fp_ctrl/wrapper/fib* RTB/zins_fp_ctrl/wrapper/srb*}]
create_pblock pblock_fx_macro_slr
resize_pblock pblock_fx_macro_slr -add {CLOCKREGION_X0Y0:CLOCKREGION_X1Y2}
set_property LOC MMCME2_ADV_X0Y5 [get_cells RTB/zins_fp_ctrl/wrapper/sysclk_mxif/u_xst_wrapper_0/sysclk_xclk_0/series7_pll_xclk]  ; # SLR 1 Top    MMCM05
set_property LOC MMCME2_ADV_X0Y4 [get_cells RTB/zins_fp_ctrl/wrapper/sysclk_mxif/u_xst_wrapper_0/sysclk_xclk2_0/series7_pll_xclk] ; # SLR 1 Bottom MMCM04
set_property LOC BUFGCTRL_X0Y34 [get_cells RTB/zins_fp_ctrl/wrapper/sysclk_mxif/u_xst_wrapper_0/ckpadgc_mclk_in/bufg_0]
set_property LOC BUFGCTRL_X0Y73 [get_cells RTB/zins_fp_ctrl/wrapper/sysclk_mxif/u_xst_wrapper_0/ckpadgc_pclk_in/bufg_0]


########## init :


########## default :

set_max_time_borrow 0 [get_clocks {zebu_clock*}]
