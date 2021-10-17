
# PlanAhead Launch Script for Pre-Synthesis Floorplanning, created by Project Navigator

create_project -name somador_subtrator_n2 -dir "/home/ise/ISE_Projects/somador_subtrator_n2/planAhead_run_3" -part xc3s100ecp132-4
set_param project.pinAheadLayout yes
set srcset [get_property srcset [current_run -impl]]
set_property target_constrs_file "somador_subtrator_n2.ucf" [current_fileset -constrset]
set hdlfile [add_files [list {seven_segments_display.vhd}]]
set_property file_type VHDL $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {regs.vhd}]]
set_property file_type VHDL $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {adder_subtractor.vhd}]]
set_property file_type VHDL $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {somador_subtrator_n2.vhd}]]
set_property file_type VHDL $hdlfile
set_property library work $hdlfile
set_property top somador_subtrator_n2 $srcset
add_files [list {somador_subtrator_n2.ucf}] -fileset [get_property constrset [current_run]]
open_rtl_design -part xc3s100ecp132-4
