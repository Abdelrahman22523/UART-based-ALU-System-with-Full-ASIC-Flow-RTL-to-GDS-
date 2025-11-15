vlib work
vmap work work

vlog *.*v

vsim -voptargs=+acc work.SYSTEM_TB

do wave.do

run -all
