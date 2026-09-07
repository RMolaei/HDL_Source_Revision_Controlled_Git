#!/usr/bin/env bash

(
  cd ./../../../
  root_dir=$(pwd)
  prj_dir="${root_dir}/prj"
  cd $prj_dir

  if [ -d "${root_dir}/prj/p1" ]; then
    echo "$prj_dir/prj/p1 exists!"
    vivado
  else
    vivado -source "${root_dir}/build/scripts/Vivado/build.tcl"
  fi
)
