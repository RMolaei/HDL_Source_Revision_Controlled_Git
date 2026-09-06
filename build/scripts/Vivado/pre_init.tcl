
set origin_dir [file dirname [info script]]
set version_var [version -s]
regsub {\.} $version_var {p} version_var
set version_var "v$version_var"
# These directories can be customised
set ip_cache_dir      $origin_dir/../../../prj/Vivado_core_cache/$version_var
set ip_repository_dir $origin_dir/../../../prj/Vivado_core_repository

config_ip_cache -import_from_project -use_cache_location $ip_cache_dir
set_property ip_repo_paths $ip_repository_dir [current_project]

update_ip_catalog
