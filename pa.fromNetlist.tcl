
# PlanAhead Launch Script for Post-Synthesis floorplanning, created by Project Navigator

create_project -name learner -dir "C:/Users/lab/Desktop/learner/learner/learner/planAhead_run_2" -part xc3s500efg320-4
set_property design_mode GateLvl [get_property srcset [current_run -impl]]
set_property edif_top_file "C:/Users/lab/Desktop/learner/learner/learner/PS2_RX_SCH.ngc" [ get_property srcset [ current_run ] ]
add_files -norecurse { {C:/Users/lab/Desktop/learner/learner/learner} }
set_property target_constrs_file "GenIO.ucf" [current_fileset -constrset]
add_files [list {GenIO.ucf}] -fileset [get_property constrset [current_run]]
link_design
