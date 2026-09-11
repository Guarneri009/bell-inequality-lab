OPENQASM 3.0;
include "stdgates.inc";

// CHSH: E(A0, B1)
// Alice = 0 degrees, Bob = -45 degrees
// Expected correlation: +1/sqrt(2) ~= +0.7071

qubit[2] q;
bit[2] c;

// Create Bell state (|00> + |11>) / sqrt(2)
h q[0];
cx q[0], q[1];

// Select measurement bases
ry(pi / 4) q[1];

barrier q[0], q[1];
measure q[0] -> c[0];
measure q[1] -> c[1];
