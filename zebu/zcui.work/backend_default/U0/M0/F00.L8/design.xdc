# File generated by xdc_sorter v3.3 (Sat Apr 20 13:22:33 CDT 2024)


########## settings :


########## clock :
#XDC=design_fw.zdc
#xdc_lib lib_zse_xc7v_8c_v1_xdc:f00_fx_macro
create_clock -name CLK_design_zkprctrl_wrapper_fib_bridge_rx_u_xst_wrapper_0_socket_lvds_sys_slave_0_u_xst_wrapper_0_socket_lvds_gp_in_0_u_xst_wrapper_0_clki_dv -period [expr [expr 10.00/3]*3] [get_pins {design/zkprctrl/wrapper/fib_bridge_rx/u_xst_wrapper_0/socket_lvds_sys_slave_0/u_xst_wrapper_0/socket_lvds_gp_in_0/u_xst_wrapper_0/bufr_0/O}]
create_clock -name CLK_sys_idel_clk  -period 5.0                           [get_pins {design/zkprctrl/wrapper/sysclk_mxfx/u_xst_wrapper_0/sysclk_idly_0/bufg_0/O}]
create_clock -name CLK_fib_clk       -period 10.00           [get_pins {design/zkprctrl/wrapper/sysclk_mxfx/u_xst_wrapper_0/sysclk_bus_dut_0/fib_clk}]
create_clock -name CLK_fib_clk_hs    -period [expr 10.00/3]  [get_pins {design/zkprctrl/wrapper/sysclk_mxfx/u_xst_wrapper_0/sysclk_bus_dut_0/fib_clk_hs}]
create_clock -name CLK_srb_clk       -period [expr 10.00*10] [get_pins {design/zkprctrl/wrapper/sysclk_mxfx/u_xst_wrapper_0/sysclk_bus_dut_0/srb_clk}]
create_clock -name CLK_sys_xclk      -period 2.22                 [get_pins {design/zkprctrl/wrapper/sysclk_mxfx/u_xst_wrapper_0/sysclk_xclk_0/sys_xclk}]
create_clock -name CLK_sys_xclk_dv4  -period [expr 2.22*4]        [get_pins {design/zkprctrl/wrapper/sysclk_mxfx/u_xst_wrapper_0/sysclk_xclk_0/sys_xclk_dv4}]
create_clock -name CLK_sys_xclk2     -period 2.22                [get_pins {design/zkprctrl/wrapper/sysclk_mxfx/u_xst_wrapper_0/sysclk_xclk2_0/sys_xclk2}]
create_clock -name CLK_sys_xclk2_dv4 -period [expr 2.22*4]       [get_pins {design/zkprctrl/wrapper/sysclk_mxfx/u_xst_wrapper_0/sysclk_xclk2_0/sys_xclk2_dv4}]
#XDC=design_bufg.zdc
create_clock -name zebu_clock0 -period 50000.0 -waveform {25000.0 50000.0} [get_nets {design/U0_M0_F0/zcgen_w_zcg_filterClock}]
create_clock -name zebu_clock1 -period 100000.0 [get_nets {design/U0_M0_F0/zcgen_w_zcg_compositeClock}]
create_clock -name zebu_clock2 -period 100000.0 [get_nets {design/U0_M0_F0/zebu_zdly_z_dclk_delay_12524327392187371745}]
set_clock_groups -asynchronous -name GRP_zebu_main_clock_sync -group [get_clocks {zebu_clock0 zebu_clock1 zebu_clock2 }]
set_false_path -setup -from [get_clocks {zebu_clock0}] -to [get_clocks {zebu_clock0}]
set_false_path -setup -from [get_clocks {zebu_clock0}] -to [get_clocks {zebu_clock1}]
set_false_path -setup -from [get_clocks {zebu_clock0}] -to [get_clocks {zebu_clock2}]
set_false_path -setup -from [get_clocks {zebu_clock1}] -to [get_clocks {zebu_clock0}]
set_false_path -setup -from [get_clocks {zebu_clock1}] -to [get_clocks {zebu_clock1}]
set_false_path -setup -from [get_clocks {zebu_clock1}] -to [get_clocks {zebu_clock2}]
set_false_path -setup -from [get_clocks {zebu_clock2}] -to [get_clocks {zebu_clock0}]
set_false_path -setup -from [get_clocks {zebu_clock2}] -to [get_clocks {zebu_clock1}]
set_false_path -setup -from [get_clocks {zebu_clock2}] -to [get_clocks {zebu_clock2}]


########## gen_clock :
#XDC=design_fw.zdc
#xdc_lib lib_zse_xc7v_8c_v1_xdc:f00_fx_macro
create_generated_clock -name CLK_sys_idel_clk_dv2 -divide_by 2 -source [get_pins {design/zkprctrl/wrapper/sysclk_mxfx/u_xst_wrapper_0/sys_idel_clk}] [get_pins {design/zkprctrl/wrapper/sysclk_mxfx/u_xst_wrapper_0/sys_idel_clk_dv2}]
create_generated_clock -name CLK_sys_idel_clk_dv4 -divide_by 4 -source [get_pins {design/zkprctrl/wrapper/sysclk_mxfx/u_xst_wrapper_0/sys_idel_clk}] [get_pins {design/zkprctrl/wrapper/sysclk_mxfx/u_xst_wrapper_0/sys_idel_clk_dv4}]
create_generated_clock -name CLK_sys_idel_clk_dv8 -divide_by 8 -source [get_pins {design/zkprctrl/wrapper/sysclk_mxfx/u_xst_wrapper_0/sys_idel_clk}] [get_pins {design/zkprctrl/wrapper/sysclk_mxfx/u_xst_wrapper_0/sys_idel_clk_dv8}]


########## gen_clock_2 :


########## rename_gen_clock :


########## clock_uncertainty :


########## async :
#XDC=design_fw.zdc
#xdc_lib lib_zse_xc7v_8c_v1_xdc:f00_fx_macro
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
#XDC=design_zpar.zdc
set_max_delay -datapath_only -from [get_pins -hierarchical {*zMem_multiport_FROM_clk_50*/Q}] -to [get_cells -hierarchical {*zMem_multiport_TO_clk_50*}] 40.0
set_property LOC BUFGCTRL_X0Y36 [get_cells {design/U0_M0_F0/zbufg_zcgen_w_zcg_filterClock}]
set_property LOC BUFGCTRL_X0Y40 [get_cells {design/U0_M0_F0/zbufg_zcgen_w_zcg_compositeClock}]
set_property LOC BUFGCTRL_X0Y35 [get_cells {design/U0_M0_F0/zbufg_zebu_zdly_z_dclk_delay_12524327392187371745}]
#XDC=design_fw.zdc
#xdc_lib lib_zse_xc7v_8c_v1_xdc:f00_fx_macro
set_max_delay -from [get_pins {design/zkprctrl/wrapper/srb_bridge/srb_bridge_srb_0/srb_data_rd_buf_*/Q}] -to [get_clocks CLK_fib_clk] -datapath_only [expr 10.00*10]
set_max_delay -through [get_nets {design/zkprctrl/wrapper/sysclk_mxfx/u_xst_wrapper_0/sock_ce[*]}]                 [expr 10.00*10]
set_max_delay -through [get_nets {design/zkprctrl/wrapper/sysclk_mxfx/u_xst_wrapper_0/sock_sr[*]}]                 [expr 10.00*10]
set_max_delay -through [get_nets {design/zkprctrl/wrapper/sysclk_mxfx/u_xst_wrapper_0/sock_clko_en[*]}]            [expr 10.00*10]
set_max_delay -through [get_nets {design/zkprctrl/wrapper/sysclk_mxfx/u_xst_wrapper_0/sysclk_xclk_0/bufgctrl_en}]  [expr 10.00*10]
set_max_delay -through [get_nets {design/zkprctrl/wrapper/sysclk_mxfx/u_xst_wrapper_0/sysclk_xclk2_0/bufgctrl_en}] [expr 10.00*10]
#xdc_lib lib_zse_xc7v_8c_xdc:f00_zpad_bus
set_max_delay -through [get_nets {wc_ip_top/wrapper/qiwc_ip_cluster/cluster_qiwc_ctrl_dut_event_0[*]/zwc_dut_clk_r}] 2.0
set_max_delay -through [get_nets {wc_ip_top/wrapper/fwc_ip_hs_cluster_32[*]/wc_ctrl_dut_event_0/zwc_dut_clk_r}] 2.0
set_max_delay -from [get_pins -hierarchical {zfwc_dut*/Q}] -to [get_clocks CLK_sys_idel_clk_dv4] -datapath_only 40.0


########## false_path :
#XDC=design_zpar.zdc
set_false_path -quiet -to [get_pins -hierarchical {zview_*/D}]
set_false_path -quiet -from [get_pins -hierarchical {*ztig_*/C}]
#XDC=design_fw.zdc
#xdc_lib lib_zse_xc7v_8c_xdc:f00_zpad_bus
set_false_path -through [get_pins design/zpad_bus_ins/zplwc_ip_out_wc_ip_stop_clock]
set_property INIT 1 [get_cells wc_ip_top/wrapper/fwc_ip_hs_cluster_32[0]/fwc_ip_word_nbr[0]/lut_0]
set_property INIT 0 [get_cells wc_ip_top/wrapper/fwc_ip_hs_cluster_32[0]/fwc_ip_word_nbr[0]/lut_1]
set_property INIT 0 [get_cells wc_ip_top/wrapper/fwc_ip_hs_cluster_32[0]/fwc_ip_word_nbr[0]/lut_2]
set_property INIT 0 [get_cells wc_ip_top/wrapper/fwc_ip_hs_cluster_32[0]/fwc_ip_word_nbr[0]/lut_3]
set_property INIT 0 [get_cells wc_ip_top/wrapper/fwc_ip_hs_cluster_32[0]/fwc_ip_word_nbr[1]/lut_0]
set_property INIT 1 [get_cells wc_ip_top/wrapper/fwc_ip_hs_cluster_32[0]/fwc_ip_word_nbr[1]/lut_1]
set_property INIT 0 [get_cells wc_ip_top/wrapper/fwc_ip_hs_cluster_32[0]/fwc_ip_word_nbr[1]/lut_2]
set_property INIT 0 [get_cells wc_ip_top/wrapper/fwc_ip_hs_cluster_32[0]/fwc_ip_word_nbr[1]/lut_3]
set_property INIT 0 [get_cells wc_ip_top/wrapper/fwc_ip_hs_cluster_32[0]/fwc_ip_word_nbr[2]/lut_0]
set_property INIT 1 [get_cells wc_ip_top/wrapper/fwc_ip_hs_cluster_32[0]/fwc_ip_word_nbr[2]/lut_1]
set_property INIT 0 [get_cells wc_ip_top/wrapper/fwc_ip_hs_cluster_32[0]/fwc_ip_word_nbr[2]/lut_2]
set_property INIT 0 [get_cells wc_ip_top/wrapper/fwc_ip_hs_cluster_32[0]/fwc_ip_word_nbr[2]/lut_3]
set_property INIT 1 [get_cells wc_ip_top/wrapper/fwc_ip_hs_cluster_32[0]/fwc_ip_word_nbr[3]/lut_0]
set_property INIT 0 [get_cells wc_ip_top/wrapper/fwc_ip_hs_cluster_32[0]/fwc_ip_word_nbr[3]/lut_1]
set_property INIT 0 [get_cells wc_ip_top/wrapper/fwc_ip_hs_cluster_32[0]/fwc_ip_word_nbr[3]/lut_2]
set_property INIT 0 [get_cells wc_ip_top/wrapper/fwc_ip_hs_cluster_32[0]/fwc_ip_word_nbr[3]/lut_3]
set_property INIT 1 [get_cells wc_ip_top/wrapper/fwc_ip_hs_cluster_32[0]/fwc_ip_word_nbr[4]/lut_0]
set_property INIT 0 [get_cells wc_ip_top/wrapper/fwc_ip_hs_cluster_32[0]/fwc_ip_word_nbr[4]/lut_1]
set_property INIT 0 [get_cells wc_ip_top/wrapper/fwc_ip_hs_cluster_32[0]/fwc_ip_word_nbr[4]/lut_2]
set_property INIT 0 [get_cells wc_ip_top/wrapper/fwc_ip_hs_cluster_32[0]/fwc_ip_word_nbr[4]/lut_3]
set_property INIT 1 [get_cells wc_ip_top/wrapper/fwc_ip_hs_cluster_32[0]/fwc_ip_word_nbr[5]/lut_0]
set_property INIT 0 [get_cells wc_ip_top/wrapper/fwc_ip_hs_cluster_32[0]/fwc_ip_word_nbr[5]/lut_1]
set_property INIT 0 [get_cells wc_ip_top/wrapper/fwc_ip_hs_cluster_32[0]/fwc_ip_word_nbr[5]/lut_2]
set_property INIT 0 [get_cells wc_ip_top/wrapper/fwc_ip_hs_cluster_32[0]/fwc_ip_word_nbr[5]/lut_3]
set_property INIT 0 [get_cells wc_ip_top/wrapper/fwc_ip_hs_cluster_32[0]/fwc_ip_word_nbr[6]/lut_0]
set_property INIT 0 [get_cells wc_ip_top/wrapper/fwc_ip_hs_cluster_32[0]/fwc_ip_word_nbr[6]/lut_1]
set_property INIT 0 [get_cells wc_ip_top/wrapper/fwc_ip_hs_cluster_32[0]/fwc_ip_word_nbr[6]/lut_2]
set_property INIT 0 [get_cells wc_ip_top/wrapper/fwc_ip_hs_cluster_32[0]/fwc_ip_word_nbr[6]/lut_3]
set_property INIT 0 [get_cells wc_ip_top/wrapper/fwc_ip_hs_cluster_32[0]/fwc_ip_word_nbr[7]/lut_0]
set_property INIT 0 [get_cells wc_ip_top/wrapper/fwc_ip_hs_cluster_32[0]/fwc_ip_word_nbr[7]/lut_1]
set_property INIT 0 [get_cells wc_ip_top/wrapper/fwc_ip_hs_cluster_32[0]/fwc_ip_word_nbr[7]/lut_2]
set_property INIT 0 [get_cells wc_ip_top/wrapper/fwc_ip_hs_cluster_32[0]/fwc_ip_word_nbr[7]/lut_3]
set_property INIT 0 [get_cells wc_ip_top/wrapper/fwc_ip_hs_cluster_32[0]/fwc_ip_word_nbr[8]/lut_0]
set_property INIT 0 [get_cells wc_ip_top/wrapper/fwc_ip_hs_cluster_32[0]/fwc_ip_word_nbr[8]/lut_1]
set_property INIT 0 [get_cells wc_ip_top/wrapper/fwc_ip_hs_cluster_32[0]/fwc_ip_word_nbr[8]/lut_2]
set_property INIT 0 [get_cells wc_ip_top/wrapper/fwc_ip_hs_cluster_32[0]/fwc_ip_word_nbr[8]/lut_3]
set_property INIT 0 [get_cells wc_ip_top/wrapper/fwc_ip_hs_cluster_32[0]/fwc_ip_word_nbr[9]/lut_0]
set_property INIT 0 [get_cells wc_ip_top/wrapper/fwc_ip_hs_cluster_32[0]/fwc_ip_word_nbr[9]/lut_1]
set_property INIT 0 [get_cells wc_ip_top/wrapper/fwc_ip_hs_cluster_32[0]/fwc_ip_word_nbr[9]/lut_2]
set_property INIT 0 [get_cells wc_ip_top/wrapper/fwc_ip_hs_cluster_32[0]/fwc_ip_word_nbr[9]/lut_3]
set_property INIT 0 [get_cells wc_ip_top/wrapper/fwc_ip_hs_cluster_32[0]/fwc_ip_word_nbr[10]/lut_0]
set_property INIT 0 [get_cells wc_ip_top/wrapper/fwc_ip_hs_cluster_32[0]/fwc_ip_word_nbr[10]/lut_1]
set_property INIT 0 [get_cells wc_ip_top/wrapper/fwc_ip_hs_cluster_32[0]/fwc_ip_word_nbr[10]/lut_2]
set_property INIT 0 [get_cells wc_ip_top/wrapper/fwc_ip_hs_cluster_32[0]/fwc_ip_word_nbr[10]/lut_3]
set_property INIT 0 [get_cells wc_ip_top/wrapper/fwc_ip_hs_cluster_32[0]/fwc_ip_word_nbr[11]/lut_0]
set_property INIT 0 [get_cells wc_ip_top/wrapper/fwc_ip_hs_cluster_32[0]/fwc_ip_word_nbr[11]/lut_1]
set_property INIT 0 [get_cells wc_ip_top/wrapper/fwc_ip_hs_cluster_32[0]/fwc_ip_word_nbr[11]/lut_2]
set_property INIT 0 [get_cells wc_ip_top/wrapper/fwc_ip_hs_cluster_32[0]/fwc_ip_word_nbr[11]/lut_3]
set_property INIT 0 [get_cells wc_ip_top/wrapper/fwc_ip_hs_cluster_32[0]/fwc_ip_word_nbr[12]/lut_0]
set_property INIT 0 [get_cells wc_ip_top/wrapper/fwc_ip_hs_cluster_32[0]/fwc_ip_word_nbr[12]/lut_1]
set_property INIT 0 [get_cells wc_ip_top/wrapper/fwc_ip_hs_cluster_32[0]/fwc_ip_word_nbr[12]/lut_2]
set_property INIT 0 [get_cells wc_ip_top/wrapper/fwc_ip_hs_cluster_32[0]/fwc_ip_word_nbr[12]/lut_3]
set_property INIT 0 [get_cells wc_ip_top/wrapper/fwc_ip_hs_cluster_32[0]/fwc_ip_word_nbr[13]/lut_0]
set_property INIT 0 [get_cells wc_ip_top/wrapper/fwc_ip_hs_cluster_32[0]/fwc_ip_word_nbr[13]/lut_1]
set_property INIT 0 [get_cells wc_ip_top/wrapper/fwc_ip_hs_cluster_32[0]/fwc_ip_word_nbr[13]/lut_2]
set_property INIT 0 [get_cells wc_ip_top/wrapper/fwc_ip_hs_cluster_32[0]/fwc_ip_word_nbr[13]/lut_3]
set_property INIT 0 [get_cells wc_ip_top/wrapper/fwc_ip_hs_cluster_32[0]/fwc_ip_word_nbr[14]/lut_0]
set_property INIT 0 [get_cells wc_ip_top/wrapper/fwc_ip_hs_cluster_32[0]/fwc_ip_word_nbr[14]/lut_1]
set_property INIT 0 [get_cells wc_ip_top/wrapper/fwc_ip_hs_cluster_32[0]/fwc_ip_word_nbr[14]/lut_2]
set_property INIT 0 [get_cells wc_ip_top/wrapper/fwc_ip_hs_cluster_32[0]/fwc_ip_word_nbr[14]/lut_3]
set_property INIT 0 [get_cells wc_ip_top/wrapper/fwc_ip_hs_cluster_32[0]/fwc_ip_word_nbr[15]/lut_0]
set_property INIT 0 [get_cells wc_ip_top/wrapper/fwc_ip_hs_cluster_32[0]/fwc_ip_word_nbr[15]/lut_1]
set_property INIT 0 [get_cells wc_ip_top/wrapper/fwc_ip_hs_cluster_32[0]/fwc_ip_word_nbr[15]/lut_2]
set_property INIT 0 [get_cells wc_ip_top/wrapper/fwc_ip_hs_cluster_32[0]/fwc_ip_word_nbr[15]/lut_3]
set_property INIT 0 [get_cells wc_ip_top/wrapper/fwc_ip_hs_cluster_32[0]/fwc_ip_word_nbr[16]/lut_0]
set_property INIT 0 [get_cells wc_ip_top/wrapper/fwc_ip_hs_cluster_32[0]/fwc_ip_word_nbr[16]/lut_1]
set_property INIT 0 [get_cells wc_ip_top/wrapper/fwc_ip_hs_cluster_32[0]/fwc_ip_word_nbr[16]/lut_2]
set_property INIT 0 [get_cells wc_ip_top/wrapper/fwc_ip_hs_cluster_32[0]/fwc_ip_word_nbr[16]/lut_3]
set_property INIT 0 [get_cells wc_ip_top/wrapper/fwc_ip_hs_cluster_32[0]/fwc_ip_word_nbr[17]/lut_0]
set_property INIT 0 [get_cells wc_ip_top/wrapper/fwc_ip_hs_cluster_32[0]/fwc_ip_word_nbr[17]/lut_1]
set_property INIT 0 [get_cells wc_ip_top/wrapper/fwc_ip_hs_cluster_32[0]/fwc_ip_word_nbr[17]/lut_2]
set_property INIT 0 [get_cells wc_ip_top/wrapper/fwc_ip_hs_cluster_32[0]/fwc_ip_word_nbr[17]/lut_3]
set_property INIT 0 [get_cells wc_ip_top/wrapper/fwc_ip_hs_cluster_32[0]/fwc_ip_word_nbr[18]/lut_0]
set_property INIT 0 [get_cells wc_ip_top/wrapper/fwc_ip_hs_cluster_32[0]/fwc_ip_word_nbr[18]/lut_1]
set_property INIT 0 [get_cells wc_ip_top/wrapper/fwc_ip_hs_cluster_32[0]/fwc_ip_word_nbr[18]/lut_2]
set_property INIT 0 [get_cells wc_ip_top/wrapper/fwc_ip_hs_cluster_32[0]/fwc_ip_word_nbr[18]/lut_3]
set_property INIT 0 [get_cells wc_ip_top/wrapper/fwc_ip_hs_cluster_32[0]/fwc_ip_word_nbr[19]/lut_0]
set_property INIT 0 [get_cells wc_ip_top/wrapper/fwc_ip_hs_cluster_32[0]/fwc_ip_word_nbr[19]/lut_1]
set_property INIT 0 [get_cells wc_ip_top/wrapper/fwc_ip_hs_cluster_32[0]/fwc_ip_word_nbr[19]/lut_2]
set_property INIT 0 [get_cells wc_ip_top/wrapper/fwc_ip_hs_cluster_32[0]/fwc_ip_word_nbr[19]/lut_3]
set_property INIT 0 [get_cells wc_ip_top/wrapper/fwc_ip_hs_cluster_32[0]/fwc_ip_word_nbr[20]/lut_0]
set_property INIT 0 [get_cells wc_ip_top/wrapper/fwc_ip_hs_cluster_32[0]/fwc_ip_word_nbr[20]/lut_1]
set_property INIT 0 [get_cells wc_ip_top/wrapper/fwc_ip_hs_cluster_32[0]/fwc_ip_word_nbr[20]/lut_2]
set_property INIT 0 [get_cells wc_ip_top/wrapper/fwc_ip_hs_cluster_32[0]/fwc_ip_word_nbr[20]/lut_3]
set_property INIT 0 [get_cells wc_ip_top/wrapper/fwc_ip_hs_cluster_32[0]/fwc_ip_word_nbr[21]/lut_0]
set_property INIT 0 [get_cells wc_ip_top/wrapper/fwc_ip_hs_cluster_32[0]/fwc_ip_word_nbr[21]/lut_1]
set_property INIT 0 [get_cells wc_ip_top/wrapper/fwc_ip_hs_cluster_32[0]/fwc_ip_word_nbr[21]/lut_2]
set_property INIT 0 [get_cells wc_ip_top/wrapper/fwc_ip_hs_cluster_32[0]/fwc_ip_word_nbr[21]/lut_3]
set_property INIT 0 [get_cells wc_ip_top/wrapper/fwc_ip_hs_cluster_32[0]/fwc_ip_word_nbr[22]/lut_0]
set_property INIT 0 [get_cells wc_ip_top/wrapper/fwc_ip_hs_cluster_32[0]/fwc_ip_word_nbr[22]/lut_1]
set_property INIT 0 [get_cells wc_ip_top/wrapper/fwc_ip_hs_cluster_32[0]/fwc_ip_word_nbr[22]/lut_2]
set_property INIT 0 [get_cells wc_ip_top/wrapper/fwc_ip_hs_cluster_32[0]/fwc_ip_word_nbr[22]/lut_3]
set_property INIT 0 [get_cells wc_ip_top/wrapper/fwc_ip_hs_cluster_32[0]/fwc_ip_word_nbr[23]/lut_0]
set_property INIT 0 [get_cells wc_ip_top/wrapper/fwc_ip_hs_cluster_32[0]/fwc_ip_word_nbr[23]/lut_1]
set_property INIT 0 [get_cells wc_ip_top/wrapper/fwc_ip_hs_cluster_32[0]/fwc_ip_word_nbr[23]/lut_2]
set_property INIT 0 [get_cells wc_ip_top/wrapper/fwc_ip_hs_cluster_32[0]/fwc_ip_word_nbr[23]/lut_3]
set_property INIT 0 [get_cells wc_ip_top/wrapper/fwc_ip_hs_cluster_32[0]/fwc_ip_word_nbr[24]/lut_0]
set_property INIT 0 [get_cells wc_ip_top/wrapper/fwc_ip_hs_cluster_32[0]/fwc_ip_word_nbr[24]/lut_1]
set_property INIT 0 [get_cells wc_ip_top/wrapper/fwc_ip_hs_cluster_32[0]/fwc_ip_word_nbr[24]/lut_2]
set_property INIT 0 [get_cells wc_ip_top/wrapper/fwc_ip_hs_cluster_32[0]/fwc_ip_word_nbr[24]/lut_3]
set_property INIT 0 [get_cells wc_ip_top/wrapper/fwc_ip_hs_cluster_32[0]/fwc_ip_word_nbr[25]/lut_0]
set_property INIT 0 [get_cells wc_ip_top/wrapper/fwc_ip_hs_cluster_32[0]/fwc_ip_word_nbr[25]/lut_1]
set_property INIT 0 [get_cells wc_ip_top/wrapper/fwc_ip_hs_cluster_32[0]/fwc_ip_word_nbr[25]/lut_2]
set_property INIT 0 [get_cells wc_ip_top/wrapper/fwc_ip_hs_cluster_32[0]/fwc_ip_word_nbr[25]/lut_3]
set_property INIT 0 [get_cells wc_ip_top/wrapper/fwc_ip_hs_cluster_32[0]/fwc_ip_word_nbr[26]/lut_0]
set_property INIT 0 [get_cells wc_ip_top/wrapper/fwc_ip_hs_cluster_32[0]/fwc_ip_word_nbr[26]/lut_1]
set_property INIT 0 [get_cells wc_ip_top/wrapper/fwc_ip_hs_cluster_32[0]/fwc_ip_word_nbr[26]/lut_2]
set_property INIT 0 [get_cells wc_ip_top/wrapper/fwc_ip_hs_cluster_32[0]/fwc_ip_word_nbr[26]/lut_3]
set_property INIT 0 [get_cells wc_ip_top/wrapper/fwc_ip_hs_cluster_32[0]/fwc_ip_word_nbr[27]/lut_0]
set_property INIT 0 [get_cells wc_ip_top/wrapper/fwc_ip_hs_cluster_32[0]/fwc_ip_word_nbr[27]/lut_1]
set_property INIT 0 [get_cells wc_ip_top/wrapper/fwc_ip_hs_cluster_32[0]/fwc_ip_word_nbr[27]/lut_2]
set_property INIT 0 [get_cells wc_ip_top/wrapper/fwc_ip_hs_cluster_32[0]/fwc_ip_word_nbr[27]/lut_3]
set_property INIT 0 [get_cells wc_ip_top/wrapper/fwc_ip_hs_cluster_32[0]/fwc_ip_word_nbr[28]/lut_0]
set_property INIT 0 [get_cells wc_ip_top/wrapper/fwc_ip_hs_cluster_32[0]/fwc_ip_word_nbr[28]/lut_1]
set_property INIT 0 [get_cells wc_ip_top/wrapper/fwc_ip_hs_cluster_32[0]/fwc_ip_word_nbr[28]/lut_2]
set_property INIT 0 [get_cells wc_ip_top/wrapper/fwc_ip_hs_cluster_32[0]/fwc_ip_word_nbr[28]/lut_3]
set_property INIT 0 [get_cells wc_ip_top/wrapper/fwc_ip_hs_cluster_32[0]/fwc_ip_word_nbr[29]/lut_0]
set_property INIT 0 [get_cells wc_ip_top/wrapper/fwc_ip_hs_cluster_32[0]/fwc_ip_word_nbr[29]/lut_1]
set_property INIT 0 [get_cells wc_ip_top/wrapper/fwc_ip_hs_cluster_32[0]/fwc_ip_word_nbr[29]/lut_2]
set_property INIT 0 [get_cells wc_ip_top/wrapper/fwc_ip_hs_cluster_32[0]/fwc_ip_word_nbr[29]/lut_3]
set_property INIT 0 [get_cells wc_ip_top/wrapper/fwc_ip_hs_cluster_32[0]/fwc_ip_word_nbr[30]/lut_0]
set_property INIT 0 [get_cells wc_ip_top/wrapper/fwc_ip_hs_cluster_32[0]/fwc_ip_word_nbr[30]/lut_1]
set_property INIT 0 [get_cells wc_ip_top/wrapper/fwc_ip_hs_cluster_32[0]/fwc_ip_word_nbr[30]/lut_2]
set_property INIT 0 [get_cells wc_ip_top/wrapper/fwc_ip_hs_cluster_32[0]/fwc_ip_word_nbr[30]/lut_3]
set_property INIT 0 [get_cells wc_ip_top/wrapper/fwc_ip_hs_cluster_32[0]/fwc_ip_word_nbr[31]/lut_0]
set_property INIT 0 [get_cells wc_ip_top/wrapper/fwc_ip_hs_cluster_32[0]/fwc_ip_word_nbr[31]/lut_1]
set_property INIT 0 [get_cells wc_ip_top/wrapper/fwc_ip_hs_cluster_32[0]/fwc_ip_word_nbr[31]/lut_2]
set_property INIT 0 [get_cells wc_ip_top/wrapper/fwc_ip_hs_cluster_32[0]/fwc_ip_word_nbr[31]/lut_3]


########## multicycle_path_setup :


########## multicycle_path_hold :


########## pblock :


########## clock_dedicated_route :
#XDC=design_fw.zdc
#xdc_lib lib_zse_xc7v_8c_v1_xdc:f00_fx_macro
set_property CLOCK_DEDICATED_ROUTE BACKBONE [get_nets -top_net_of_hierarchical_group -segments {design/zkprctrl/wrapper/sysclk_mxfx/u_xst_wrapper_0/sys_xclk2_in}]


########## loc :
#XDC=design_fw.zdc
#xdc_lib lib_zse_xc7v_8c_v1_xdc:f00_fx_macro
create_pblock pblock_fxmacro
resize_pblock pblock_fxmacro -add {CLOCKREGION_X0Y6:CLOCKREGION_X0Y7}
add_cells_to_pblock pblock_fxmacro [get_cells {design/zkprctrl/wrapper/fib* design/zkprctrl/wrapper/srb*}]
create_pblock pblock_fx_macro_slr
resize_pblock pblock_fx_macro_slr -add {CLOCKREGION_X0Y6:CLOCKREGION_X1Y8}
set_property LOC MMCME2_ADV_X0Y5 [get_cells design/zkprctrl/wrapper/sysclk_mxfx/u_xst_wrapper_0/sysclk_xclk_0/series7_pll_xclk]   ; # SLR 1 Top    MMCM05
set_property LOC MMCME2_ADV_X0Y4 [get_cells design/zkprctrl/wrapper/sysclk_mxfx/u_xst_wrapper_0/sysclk_xclk2_0/series7_pll_xclk]  ; # SLR 1 Bottom MMCM04
#xdc_lib lib_zse_xc7v_8c_xdc:f00_zpad_bus
add_cells_to_pblock pblock_fx_macro_slr [get_cells {wc_ip_top/wrapper/qiwc_ip_cluster/*} -filter {NAME !~ "*cluster_qiwc_ip_pipelined_mux_0[*]*" && NAME !~ "*cluster_regs_qiwc_ip_regs_mux_0[*]" && NAME !~ "*XST_*"}]
add_cells_to_pblock pblock_fx_macro_slr [get_cells {wc_ip_top/wrapper/qiwc_ip_cluster/cluster_regs_qiwc_ip_regs_mux_0[*]/regs_2_*}]
add_cells_to_pblock pblock_fx_macro_slr [get_cells {wc_ip_top/wrapper/*} -filter {NAME !~ "*qiwc_ip_cluster*" &&  NAME !~ "*XST_*" && NAME !~ "*fwc_ip_hs_cluster_32[*]*"}]
create_pblock pblock_wc_ip_top_wrapper_wc_ctrl_l2_u_xst_wrapper_0
resize_pblock pblock_wc_ip_top_wrapper_wc_ctrl_l2_u_xst_wrapper_0 -add CLOCKREGION_X0Y3:CLOCKREGION_X1Y8
add_cells_to_pblock pblock_wc_ip_top_wrapper_wc_ctrl_l2_u_xst_wrapper_0 [get_cells {wc_ip_top/wrapper/wc_ctrl_l2/u_xst_wrapper_0/*_fifo_l2_to_pc_0_0}]
#XDC=design_zlcr.zdc
create_pblock pblock_bk40
resize_pblock pblock_bk40 -add SLICE_X252Y450:SLICE_X517Y499
add_cells_to_pblock pblock_bk40 design/socket_00_00_00_08/ClockRegion000SD_40B/ser0


########## init :


########## default :

set_max_time_borrow 0 [get_clocks {zebu_clock*}]
