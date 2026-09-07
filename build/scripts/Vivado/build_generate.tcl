
set root_dir [file dirname [file dirname [file dirname [file dirname [file normalize [info script]]]]]]
cd $root_dir

write_project_tcl -use_bd_files \
                  -paths_relative_to $root_dir \
                  -target_proj_dir [file join $root_dir prj p1] \
                  -force [file join $root_dir build scripts Vivado build.tcl]

cd [file join $root_dir prj]
