setenv LMC_TIMEUNIT -9
vlib work
vmap work work

vlog -work work ../verilog/miner_testbench.v 

vsim -classdebug -voptargs=+acc +notimingchecks -L work work.testbench -wlf testbench.wlf

do wave.do

run -all


