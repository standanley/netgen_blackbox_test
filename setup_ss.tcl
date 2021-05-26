puts "Running setup_simple"
#model child_v blackbox
#model child_s blackbox
#model child_scopy blackbox
#equate classes child_s child_scopy # gives "cells to equate are in the same netlist"
#equate classes child_v child_s
model child blackbox
#model child copy
#ignore class child
