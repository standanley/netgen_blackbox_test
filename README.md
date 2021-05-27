UDPATE - I got it working for what I need I think. By making the top-level port names, child block port names, and child block names all match between spice and verilog, lvs passes between the two. I think this only works because the behavioral verilog forced the verilog child to be treated as a black box, but that is ok for me. I haven't figured out how to force any circuit to be a black box, so I still can't get the spice ones to match, but that's ok for now.

Try running "source run_lvs_ss.sh". It compares subckts in spice_simple.sp and spice_B_simple.sp. It does not work because the "child" subckt in one circuit does not match the "child" circuit in the other. But I want it to ignore these implementations, and just treat "child" as a blackbox in each and match them up.

Try running "source run_lvs_vs.sh". It compares circuits in verilog_simple.v and spice_simple.sp. It does not work for the same reasons as the spice-spice verison, although it is closer because the behavioral verilog forces "child" module to be a blackbox. This is much closer to what I actually want, which is to make this pass: https://github.com/efabless/caravel_user_project_analog/blob/main/netgen/run_lvs_wrapper_verilog.sh


It seems to me like the "model mycellname blackbox" command does not work the way I expected. Part of the issue might be collisions between the names "child" and "child" in the two circuits being compared. But I was under the impression that the names needed to match for the blackboxes to match successfully.

I also tried renaming the child subckt in spice_B_simple to "child_B" but nothing changed. 
