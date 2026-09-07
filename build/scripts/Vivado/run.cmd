@echo off

setlocal
cd /d "%~dp0..\..\.."
set "root_dir=%CD%"
set "prj_dir=%root_dir%\prj"
cd /d "%prj_dir%"

if exist "%root_dir%\prj\p1\" (
  echo %prj_dir%\p1 exists!
  vivado
) else (
  vivado -source "%root_dir%\build\scripts\Vivado\build.tcl"
)
endlocal
