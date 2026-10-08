#!/usr/bin/env bash

(
  cd ./../../../
  root_dir=$(pwd)
  prj_dir="${root_dir}/prj/p1"
  mkdir $prj_dir
  cd $prj_dir
  echo $(pwd)

  xtclsh "${root_dir}/build/scripts/ISE/build.tcl" rebuild_project

)
