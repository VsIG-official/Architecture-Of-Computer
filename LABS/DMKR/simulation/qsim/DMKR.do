onerror {quit -f}
vlib work
vlog -work work DMKR.vo
vlog -work work DMKR.vt
vsim -novopt -c -t 1ps -L cycloneii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.DMKR_2_2_vlg_vec_tst
vcd file -direction DMKR.msim.vcd
vcd add -internal DMKR_2_2_vlg_vec_tst/*
vcd add -internal DMKR_2_2_vlg_vec_tst/i1/*
add wave /*
run -all
