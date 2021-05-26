* test

.subckt child_B x y
* some random implementation, just for testing
* netgen should not use this info in the final matching
R1 x y 10k
C1 x y 1p
.ends

.subckt spice_B_simple a_sB b_sB c_sB

xmychild_B1_sB a_sB b_sB child_B
xmychild_B2_sB a_sB c_sB child_B

.ends



vfora nodea 0 .5
vforb nodeb 0 .8
cforc nodec 0 1p
xdut nodea nodeb nodec spice_B_simple
