
set root_dir [file dirname [file dirname [file dirname [file dirname [file normalize [info script]]]]]]


set file [open [file join $root_dir build scripts Vivado build.tcl] r]
set content [read $file]
close $file


regsub \"$root_dir\" $content {[file dirname [file dirname [file dirname [file dirname [file normalize [info script]]]]]]} content
regsub \"[file join $root_dir prj p1]\" $content {$origin_dir/prj/${_xil_proj_name_}} content
regsub -all $root_dir $content {$origin_dir} content


set file [open [file join $root_dir build scripts Vivado build.tcl] w]
puts -nonewline $file $content
close $file
