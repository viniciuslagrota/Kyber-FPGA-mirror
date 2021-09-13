connect -url tcp:127.0.0.1:3121
source C:/Projects/kyber-fpga/kyber-fpga.sdk/kyberBD_wrapper_hw_platform_0/ps7_init.tcl
targets -set -nocase -filter {name =~"APU*" && jtag_cable_name =~ "Digilent JTAG-HS3 210299A8DB3E"} -index 0
rst -system
after 3000
targets -set -filter {jtag_cable_name =~ "Digilent JTAG-HS3 210299A8DB3E" && level==0} -index 1
fpga -file C:/Projects/kyber-fpga/kyber-fpga.sdk/kyberBD_wrapper_hw_platform_0/kyberBD_wrapper.bit
targets -set -nocase -filter {name =~"APU*" && jtag_cable_name =~ "Digilent JTAG-HS3 210299A8DB3E"} -index 0
loadhw -hw C:/Projects/kyber-fpga/kyber-fpga.sdk/kyberBD_wrapper_hw_platform_0/system.hdf -mem-ranges [list {0x40000000 0xbfffffff}]
configparams force-mem-access 1
targets -set -nocase -filter {name =~"APU*" && jtag_cable_name =~ "Digilent JTAG-HS3 210299A8DB3E"} -index 0
ps7_init
ps7_post_config
targets -set -nocase -filter {name =~ "ARM*#0" && jtag_cable_name =~ "Digilent JTAG-HS3 210299A8DB3E"} -index 0
dow C:/Projects/kyber-fpga/kyber-fpga.sdk/kyber-client/Debug/kyber-client.elf
configparams force-mem-access 0
bpadd -addr &main
