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
create_project -in_memory -part xc7z010clg400-1

set_param project.singleFileAddWarning.threshold 0
set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_property webtalk.parent_dir c:/projects/kyber-fpga/kyber-fpga.tmp/poly_tomont_v1_0_project/poly_tomont_v1_0_project.cache/wt [current_project]
set_property parent.project_path c:/projects/kyber-fpga/kyber-fpga.tmp/poly_tomont_v1_0_project/poly_tomont_v1_0_project.xpr [current_project]
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
set_property ip_output_repo c:/projects/kyber-fpga/kyber-fpga.tmp/poly_tomont_v1_0_project/poly_tomont_v1_0_project.cache/ip [current_project]
set_property ip_cache_permissions {read write} [current_project]
read_vhdl -library work c:/Projects/ip_repo/poly_tomont_1.0/hdl/poly_tomont_v1_0.vhd
# Mark all dcp files as not used in implementation to prevent them from being
# stitched into the results of this synthesis run. Any black boxes in the
# design are intentionally left as such for best results. Dcp files will be
# stitched into the design at a later time, either when this synthesis run is
# opened, or when it is stitched into a dependent implementation run.
foreach dcp [get_files -quiet -all -filter file_type=="Design\ Checkpoint"] {
  set_property used_in_implementation false $dcp
}
set_param ips.enableIPCacheLiteLoad 1
close [open __synthesis_is_running__ w]

synth_design -top poly_tomont_v1_0 -part xc7z010clg400-1


# disable binary constraint mode for synth run checkpoints
set_param constraints.enableBinaryConstraints false
write_checkpoint -force -noxdef poly_tomont_v1_0.dcp
create_report "synth_1_synth_report_utilization_0" "report_utilization -file poly_tomont_v1_0_utilization_synth.rpt -pb poly_tomont_v1_0_utilization_synth.pb"
file delete __synthesis_is_running__
close [open __synthesis_is_complete__ w]