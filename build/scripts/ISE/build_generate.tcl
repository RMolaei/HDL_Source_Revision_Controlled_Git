
# source $root_dir/build/scripts/ISE/build_generate.tcl

set root_dir [file dirname [file dirname [file dirname [file dirname [file normalize [info script]]]]]]
cd $root_dir

# Usage: project generate_tcl_script [-filename <filename>] [-contents <all|modified|only>]
project generate_tcl_script -filename [file join $root_dir build scripts ISE build.tcl]

cd [file join $root_dir prj p1]
