
reset_runs [get_runs]
reset_project
config_ip_cache -import_from_project -use_project_cache
config_ip_cache -disable_cache
set_property  ip_repo_paths  {} [current_project]
update_ip_catalog
