# 
# Synthesis run script generated by Vivado
# 

set TIME_start [clock seconds] 
proc create_report { reportName command } {
  set status "."
  append status $reportName ".fail"
  if { [file exists $status] } {
    eval file delete [glob $status]
  }
  send_msg_id runtcl-4 info "Executing : $command"
  set retval [eval catch { $command } msg]
  if { $retval != 0 } {
    set fp [open $status w]
    close $fp
    send_msg_id runtcl-5 warning "$msg"
  }
}
set_param chipscope.maxJobs 2
create_project -in_memory -part xc7z010clg400-1

set_param project.singleFileAddWarning.threshold 0
set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_msg_config -source 4 -id {IP_Flow 19-2162} -severity warning -new_severity info
set_property webtalk.parent_dir C:/Projects/kyber-fpga/kyber-fpga.cache/wt [current_project]
set_property parent.project_path C:/Projects/kyber-fpga/kyber-fpga.xpr [current_project]
set_property XPM_LIBRARIES {XPM_CDC XPM_FIFO XPM_MEMORY} [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language VHDL [current_project]
set_property board_part em.avnet.com:microzed_7010:part0:1.1 [current_project]
set_property ip_repo_paths {
  c:/Projects/ip_repo/xtimer_1.0
  c:/Projects/ip_repo/keccak_f1600_bram_ip_1.0
  c:/Projects/ip_repo/polyvec_invntt_1.0
  c:/Projects/ip_repo/signal_multiplexer_1.0
  c:/Projects/ip_repo/polyvec_ntt_1.0
  c:/Projects/ip_repo/ntt_1.0
  c:/Projects/ip_repo/polyvec_basemul_acc_montgomery_1.0
  c:/Projects/ip_repo/polyvec_basemul_acc_montgomery_1.0
  c:/Projects/ip_repo/barrett_reduce_1.0
  c:/Projects/ip_repo/polyvec_reduce_1.0
  c:/Projects/ip_repo/barret_reduce_1.0
  c:/Projects/ip_repo/dual_bram_1.0
  c:/Projects/ip_repo/poly_tomont_1.0
  c:/Projects/ip_repo/triple_signal_multiplexer_1.0
  c:/Projects/ip_repo/double_signal_multiplexer_1.0
  c:/Projects/ip_repo/signal_multiplexer_1.0
  c:/Projects/ip_repo/bram_port_selector_1.0
  c:/Projects/ip_repo/bram_mm_1.0
  c:/Projects/ip_repo/fqmul_1.0
  c:/Projects/ip_repo/splitter_1.0
  c:/Projects/ip_repo/montgomery_reduction_1.0
  c:/Projects/ip_repo/timer2_1.0
  c:/Projects/ip_repo
} [current_project]
update_ip_catalog
set_property ip_output_repo c:/Projects/kyber-fpga/kyber-fpga.cache/ip [current_project]
set_property ip_cache_permissions {read write} [current_project]
read_vhdl -library xil_defaultlib C:/Projects/kyber-fpga/kyber-fpga.srcs/sources_1/bd/kyberBD/hdl/kyberBD_wrapper.vhd
add_files C:/Projects/kyber-fpga/kyber-fpga.srcs/sources_1/bd/kyberBD/kyberBD.bd
set_property used_in_implementation false [get_files -all c:/Projects/kyber-fpga/kyber-fpga.srcs/sources_1/bd/kyberBD/ip/kyberBD_processing_system7_0_0/kyberBD_processing_system7_0_0.xdc]
set_property used_in_implementation false [get_files -all c:/Projects/kyber-fpga/kyber-fpga.srcs/sources_1/bd/kyberBD/ip/kyberBD_proc_sys_reset_0_0/kyberBD_proc_sys_reset_0_0_board.xdc]
set_property used_in_implementation false [get_files -all c:/Projects/kyber-fpga/kyber-fpga.srcs/sources_1/bd/kyberBD/ip/kyberBD_proc_sys_reset_0_0/kyberBD_proc_sys_reset_0_0.xdc]
set_property used_in_implementation false [get_files -all c:/Projects/kyber-fpga/kyber-fpga.srcs/sources_1/bd/kyberBD/ip/kyberBD_proc_sys_reset_0_0/kyberBD_proc_sys_reset_0_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Projects/kyber-fpga/kyber-fpga.srcs/sources_1/bd/kyberBD/ip/kyberBD_xbar_0/kyberBD_xbar_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Projects/kyber-fpga/kyber-fpga.srcs/sources_1/bd/kyberBD/ip/kyberBD_axi_gpio_0_0/kyberBD_axi_gpio_0_0_board.xdc]
set_property used_in_implementation false [get_files -all c:/Projects/kyber-fpga/kyber-fpga.srcs/sources_1/bd/kyberBD/ip/kyberBD_axi_gpio_0_0/kyberBD_axi_gpio_0_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Projects/kyber-fpga/kyber-fpga.srcs/sources_1/bd/kyberBD/ip/kyberBD_axi_gpio_0_0/kyberBD_axi_gpio_0_0.xdc]
set_property used_in_implementation false [get_files -all c:/Projects/kyber-fpga/kyber-fpga.srcs/sources_1/bd/kyberBD/ip/kyberBD_axi_gpio_1_0/kyberBD_axi_gpio_1_0_board.xdc]
set_property used_in_implementation false [get_files -all c:/Projects/kyber-fpga/kyber-fpga.srcs/sources_1/bd/kyberBD/ip/kyberBD_axi_gpio_1_0/kyberBD_axi_gpio_1_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Projects/kyber-fpga/kyber-fpga.srcs/sources_1/bd/kyberBD/ip/kyberBD_axi_gpio_1_0/kyberBD_axi_gpio_1_0.xdc]
set_property used_in_implementation false [get_files -all c:/Projects/kyber-fpga/kyber-fpga.srcs/sources_1/bd/kyberBD/ip/kyberBD_axi_gpio_2_0/kyberBD_axi_gpio_2_0_board.xdc]
set_property used_in_implementation false [get_files -all c:/Projects/kyber-fpga/kyber-fpga.srcs/sources_1/bd/kyberBD/ip/kyberBD_axi_gpio_2_0/kyberBD_axi_gpio_2_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Projects/kyber-fpga/kyber-fpga.srcs/sources_1/bd/kyberBD/ip/kyberBD_axi_gpio_2_0/kyberBD_axi_gpio_2_0.xdc]
set_property used_in_implementation false [get_files -all c:/Projects/kyber-fpga/kyber-fpga.srcs/sources_1/bd/kyberBD/ip/kyberBD_axi_gpio_3_0/kyberBD_axi_gpio_3_0_board.xdc]
set_property used_in_implementation false [get_files -all c:/Projects/kyber-fpga/kyber-fpga.srcs/sources_1/bd/kyberBD/ip/kyberBD_axi_gpio_3_0/kyberBD_axi_gpio_3_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Projects/kyber-fpga/kyber-fpga.srcs/sources_1/bd/kyberBD/ip/kyberBD_axi_gpio_3_0/kyberBD_axi_gpio_3_0.xdc]
set_property used_in_implementation false [get_files -all c:/Projects/kyber-fpga/kyber-fpga.srcs/sources_1/bd/kyberBD/ip/kyberBD_axi_gpio_4_0/kyberBD_axi_gpio_4_0_board.xdc]
set_property used_in_implementation false [get_files -all c:/Projects/kyber-fpga/kyber-fpga.srcs/sources_1/bd/kyberBD/ip/kyberBD_axi_gpio_4_0/kyberBD_axi_gpio_4_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Projects/kyber-fpga/kyber-fpga.srcs/sources_1/bd/kyberBD/ip/kyberBD_axi_gpio_4_0/kyberBD_axi_gpio_4_0.xdc]
set_property used_in_implementation false [get_files -all c:/Projects/kyber-fpga/kyber-fpga.srcs/sources_1/bd/kyberBD/ip/kyberBD_axi_dma_0_0/kyberBD_axi_dma_0_0.xdc]
set_property used_in_implementation false [get_files -all c:/Projects/kyber-fpga/kyber-fpga.srcs/sources_1/bd/kyberBD/ip/kyberBD_axi_dma_0_0/kyberBD_axi_dma_0_0_clocks.xdc]
set_property used_in_implementation false [get_files -all c:/Projects/kyber-fpga/kyber-fpga.srcs/sources_1/bd/kyberBD/ip/kyberBD_axi_dma_0_0/kyberBD_axi_dma_0_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Projects/kyber-fpga/kyber-fpga.srcs/sources_1/bd/kyberBD/ip/kyberBD_axi_gpio_5_0/kyberBD_axi_gpio_5_0_board.xdc]
set_property used_in_implementation false [get_files -all c:/Projects/kyber-fpga/kyber-fpga.srcs/sources_1/bd/kyberBD/ip/kyberBD_axi_gpio_5_0/kyberBD_axi_gpio_5_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Projects/kyber-fpga/kyber-fpga.srcs/sources_1/bd/kyberBD/ip/kyberBD_axi_gpio_5_0/kyberBD_axi_gpio_5_0.xdc]
set_property used_in_implementation false [get_files -all c:/Projects/kyber-fpga/kyber-fpga.srcs/sources_1/bd/kyberBD/ip/kyberBD_axi_gpio_6_0/kyberBD_axi_gpio_6_0_board.xdc]
set_property used_in_implementation false [get_files -all c:/Projects/kyber-fpga/kyber-fpga.srcs/sources_1/bd/kyberBD/ip/kyberBD_axi_gpio_6_0/kyberBD_axi_gpio_6_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Projects/kyber-fpga/kyber-fpga.srcs/sources_1/bd/kyberBD/ip/kyberBD_axi_gpio_6_0/kyberBD_axi_gpio_6_0.xdc]
set_property used_in_implementation false [get_files -all c:/Projects/kyber-fpga/kyber-fpga.srcs/sources_1/bd/kyberBD/ip/kyberBD_xbar_1/kyberBD_xbar_1_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Projects/kyber-fpga/kyber-fpga.srcs/sources_1/bd/kyberBD/ip/kyberBD_axi_gpio_6_2/kyberBD_axi_gpio_6_2_board.xdc]
set_property used_in_implementation false [get_files -all c:/Projects/kyber-fpga/kyber-fpga.srcs/sources_1/bd/kyberBD/ip/kyberBD_axi_gpio_6_2/kyberBD_axi_gpio_6_2_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Projects/kyber-fpga/kyber-fpga.srcs/sources_1/bd/kyberBD/ip/kyberBD_axi_gpio_6_2/kyberBD_axi_gpio_6_2.xdc]
set_property used_in_implementation false [get_files -all c:/Projects/kyber-fpga/kyber-fpga.srcs/sources_1/bd/kyberBD/ip/kyberBD_axi_gpio_6_3/kyberBD_axi_gpio_6_3_board.xdc]
set_property used_in_implementation false [get_files -all c:/Projects/kyber-fpga/kyber-fpga.srcs/sources_1/bd/kyberBD/ip/kyberBD_axi_gpio_6_3/kyberBD_axi_gpio_6_3_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Projects/kyber-fpga/kyber-fpga.srcs/sources_1/bd/kyberBD/ip/kyberBD_axi_gpio_6_3/kyberBD_axi_gpio_6_3.xdc]
set_property used_in_implementation false [get_files -all c:/Projects/kyber-fpga/kyber-fpga.srcs/sources_1/bd/kyberBD/ip/kyberBD_axi_gpio_6_4/kyberBD_axi_gpio_6_4_board.xdc]
set_property used_in_implementation false [get_files -all c:/Projects/kyber-fpga/kyber-fpga.srcs/sources_1/bd/kyberBD/ip/kyberBD_axi_gpio_6_4/kyberBD_axi_gpio_6_4_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Projects/kyber-fpga/kyber-fpga.srcs/sources_1/bd/kyberBD/ip/kyberBD_axi_gpio_6_4/kyberBD_axi_gpio_6_4.xdc]
set_property used_in_implementation false [get_files -all c:/Projects/kyber-fpga/kyber-fpga.srcs/sources_1/bd/kyberBD/ip/kyberBD_axi_gpio_6_5/kyberBD_axi_gpio_6_5_board.xdc]
set_property used_in_implementation false [get_files -all c:/Projects/kyber-fpga/kyber-fpga.srcs/sources_1/bd/kyberBD/ip/kyberBD_axi_gpio_6_5/kyberBD_axi_gpio_6_5_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Projects/kyber-fpga/kyber-fpga.srcs/sources_1/bd/kyberBD/ip/kyberBD_axi_gpio_6_5/kyberBD_axi_gpio_6_5.xdc]
set_property used_in_implementation false [get_files -all c:/Projects/kyber-fpga/kyber-fpga.srcs/sources_1/bd/kyberBD/ip/kyberBD_axi_gpio_6_6/kyberBD_axi_gpio_6_6_board.xdc]
set_property used_in_implementation false [get_files -all c:/Projects/kyber-fpga/kyber-fpga.srcs/sources_1/bd/kyberBD/ip/kyberBD_axi_gpio_6_6/kyberBD_axi_gpio_6_6_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Projects/kyber-fpga/kyber-fpga.srcs/sources_1/bd/kyberBD/ip/kyberBD_axi_gpio_6_6/kyberBD_axi_gpio_6_6.xdc]
set_property used_in_implementation false [get_files -all c:/Projects/kyber-fpga/kyber-fpga.srcs/sources_1/bd/kyberBD/ip/kyberBD_auto_pc_0/kyberBD_auto_pc_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Projects/kyber-fpga/kyber-fpga.srcs/sources_1/bd/kyberBD/ip/kyberBD_auto_pc_1_1/kyberBD_auto_pc_1_ooc.xdc]
set_property used_in_implementation false [get_files -all C:/Projects/kyber-fpga/kyber-fpga.srcs/sources_1/bd/kyberBD/kyberBD_ooc.xdc]

# Mark all dcp files as not used in implementation to prevent them from being
# stitched into the results of this synthesis run. Any black boxes in the
# design are intentionally left as such for best results. Dcp files will be
# stitched into the design at a later time, either when this synthesis run is
# opened, or when it is stitched into a dependent implementation run.
foreach dcp [get_files -quiet -all -filter file_type=="Design\ Checkpoint"] {
  set_property used_in_implementation false $dcp
}
read_xdc dont_touch.xdc
set_property used_in_implementation false [get_files dont_touch.xdc]
set_param ips.enableIPCacheLiteLoad 1
close [open __synthesis_is_running__ w]

synth_design -top kyberBD_wrapper -part xc7z010clg400-1


# disable binary constraint mode for synth run checkpoints
set_param constraints.enableBinaryConstraints false
write_checkpoint -force -noxdef kyberBD_wrapper.dcp
create_report "synth_1_synth_report_utilization_0" "report_utilization -file kyberBD_wrapper_utilization_synth.rpt -pb kyberBD_wrapper_utilization_synth.pb"
file delete __synthesis_is_running__
close [open __synthesis_is_complete__ w]
