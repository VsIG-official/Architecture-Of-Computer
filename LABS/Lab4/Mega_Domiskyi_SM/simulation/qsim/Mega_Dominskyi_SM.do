onerror {quit -f}
vlib work
vlog -work work Mega_Dominskyi_SM.vo
vlog -work work Mega_Dominskyi_SM.vt
vsim -novopt -c -t 1ps -L cycloneii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.Mega_Dominskyi_SM_vlg_vec_tst
vcd file -direction Mega_Dominskyi_SM.msim.vcd
vcd add -internal Mega_Dominskyi_SM_vlg_vec_tst/*
vcd add -internal Mega_Dominskyi_SM_vlg_vec_tst/i1/*
add wave /*
run -all
