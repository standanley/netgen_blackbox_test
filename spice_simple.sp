* test

.subckt child x y
* some random implementation, just for testing
* netgen should not use this info in the final matching
R1 x y 1k
.ends

.subckt spice_simple a_s b_s c_s

xmychild1_s a_s b_s child
xmychild2_s a_s c_s child

.ends



*vfora nodea 0 .5
*vforb nodeb 0 .8
*cforc nodec 0 1p
*xdut nodea nodeb nodec spice_simple
