
set origin_dir [file dirname [info script]]


# clk_vip_0 (for example)
create_ip -name clk_vip -vendor xilinx.com -library ip -version 1.0 -module_name clk_vip_0 -dir $origin_dir
set_property -dict [list \
  CONFIG.FREQ_HZ {200000000} \
  CONFIG.INTERFACE_MODE {MASTER} \
] [get_ips clk_vip_0]
generate_target {instantiation_template} [get_files $origin_dir/clk_vip_0/clk_vip_0.xci]
