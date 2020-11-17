onerror {exit -code 1}
vlib work
vlog -work work sled_17990425.vo
vlog -work work Waveform.vwf.vt
vsim -novopt -c -t 1ps -L cycloneive_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.sled_vlg_vec_tst -voptargs="+acc"
vcd file -direction sled_17990425.msim.vcd
vcd add -internal sled_vlg_vec_tst/*
vcd add -internal sled_vlg_vec_tst/i1/*
run -all
quit -f
