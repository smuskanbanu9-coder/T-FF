# Full Adder in Verilog

## Overview

This project implements a 1-bit Full Adder using Verilog HDL.

A Full Adder adds three 1-bit binary inputs:
- A
- B
- Carry-in (Cin)

and produces:
- Sum
- Carry-out (Cout)

## Files

```
full_adder.v      // Verilog design
full_adder_tb.v   // Testbench
README.md         // Project documentation
```

## Logic Equations

Sum  = A XOR B XOR Cin

Cout = (A & B) | (B & Cin) | (A & Cin)

## Truth Table

| A | B | Cin | Sum | Cout |
|---|---|-----|-----|------|
|0|0|0|0|0|
|0|0|1|1|0|
|0|1|0|1|0|
|0|1|1|0|1|
|1|0|0|1|0|
|1|0|1|0|1|
|1|1|0|0|1|
|1|1|1|1|1|

## Simulation

Compile:

```
iverilog -o full_adder full_adder.v full_adder_tb.v
```

Run:

```
vvp full_adder
```

Generate waveform (optional):

Add these lines in the testbench:

```verilog
initial begin
    $dumpfile("full_adder.vcd");
    $dumpvars(0, full_adder_tb);
end
```

Open waveform:

```
gtkwave full_adder.vcd
```

## Expected Output

```
 A B Cin | Sum Cout
-------------------
 0 0 0   | 0   0
 0 0 1   | 1   0
 0 1 0   | 1   0
 0 1 1   | 0   1
 1 0 0   | 1   0
 1 0 1   | 0   1
 1 1 0   | 0   1
 1 1 1   | 1   1
```

## Author

Verilog Full Adder Example