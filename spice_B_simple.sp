* test

.subckt child x y
* some random implementation, just for testing
* netgen should not use this info in the final matching
R1 x y 10k
C1 x y 1p
.ends

.subckt spice_B_simple a b c

xmychild_B1 a b child
xmychild_B2 a c child

.ends



vfora nodea 0 .5
vforb nodeb 0 .8
cforc nodec 0 1p
xdut nodea nodeb nodec spice_B_simple
