onerror {exit -code 1}
vlib work
vlog -work work cnt4_to_16.vo
vlog -work work Waveform.vwf.vt
vsim -novopt -c -t 1ps -L cycloneive_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.cnt4_to_16_vlg_vec_tst -voptargs="+acc"
vcd file -direction cnt4_to_16.msim.vcd
vcd add -internal cnt4_to_16_vlg_vec_tst/*
vcd add -internal cnt4_to_16_vlg_vec_tst/i1/*
run -all
quit -f
