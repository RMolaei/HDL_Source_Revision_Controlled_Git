
# source $root_dir/build/scripts/ISE/build_patch.tcl

set root_dir [file dirname [file dirname [file dirname [file dirname [file normalize [info script]]]]]]


set file [open [file join $root_dir build scripts ISE build.tcl] r]
set content [read $file]
close $file


regsub -all {set myProject "p1"} $content {set root_dir [file dirname [file dirname [file dirname [file dirname [file normalize [info script]]]]]]
set myProject "p1"} content
regsub -all {global myScript} $content {global root_dir
   global myScript} content
regsub -all {\.\./\.\./\.\.} $content {$root_dir} content
regsub -all $root_dir $content {$root_dir} content


set file [open [file join $root_dir build scripts ISE build.tcl] w]
puts -nonewline $file $content
close $file
