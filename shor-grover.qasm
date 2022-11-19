OPENQASM 2.0;
include "qelib1.inc";
gate nG0(param) q {
  h q;
}

gate nG1(param) q {
  h q;
}

gate nG2(param) q {
  h q;
}

gate nG3(param) q {
  h q;
}

gate nG4(param) q {
  h q;
}

gate nG8(param) q {
  h q;
}

gate nG9(param) q {
  h q;
}

qreg q[5];
creg c0[3];
creg c1[3];
creg c2[3];
creg c[7];

ccx q[0], q[1], q[2];
nG0(pi * 2) q[3];
y q[0];
ry(pi + 1) q[1];
cswap q[2], q[3], q[4];
cswap q[0], q[1], q[2];
cx q[3], q[4];
rz((pi * 2) + 1) q[2];
cy q[0], q[4];
rxx(21) q[3], q[4];

h q[0];
h q[1];
x q[2];
t q[3];
rz(pi / 2) q[4];
s q[0];
cx q[1], q[2];
s q[3];
cx q[0], q[2];
tdg q[3];
x q[0];
z q[1];
s q[2];
id q[3];
cx q[0], q[2];
tdg q[3];
h q[0];
cx q[1], q[2];
z q[3];
x q[0];
h q[1];
s q[3];
cx q[0], q[2];
rxx(pi / 2) q[3], q[4];
nG0(pi / 2) q[0];
h q[1];
tdg q[2];
cswap q[2], q[3], q[4];
cy q[2], q[3];
ccx q[0], q[1], q[2];
rz(pi / 2) q[3];
swap q[0], q[1];
nG0(pi / 2) q[2];
swap q[3], q[4];
rz(pi / 2) q[0];
rx(pi / 2) q[2];
ry(pi / 2) q[4];
