# T Flip-Flop using Verilog

## Project Overview

This project implements a synchronous T (Toggle) Flip-Flop in Verilog HDL along with a testbench for simulation.

## Truth Table

| T | Clock Edge | Next State |
|---|------------|------------|
| 0 | ↑ | No Change |
| 1 | ↑ | Toggle |

## Features

- Positive edge triggered
- Asynchronous reset
- Simple Verilog implementation
- Testbench included
- Compatible with ModelSim, Vivado, Icarus Verilog, and GTKWave

## Files

| File | Description |
|------|-------------|
| t_flipflop.v | T Flip-Flop design |
| tb_t_flipflop.v | Testbench |
| simulation_results.png | Simulation waveform |
| README.md | Documentation |

## Simulation Steps

### Using Icarus Verilog

Compile:

```bash
iverilog -o tff t_flipflop.v tb_t_flipflop.v
```

Run:

```bash
vvp tff
```

Generate waveform:

```verilog
initial begin
    $dumpfile("tff.vcd");
    $dumpvars(0, tb_t_flipflop);
end
```

View waveform:

```bash
gtkwave tff.vcd
```

## Expected Output

- Reset sets Q = 0
- T = 0 → Q remains unchanged
- T = 1 → Q toggles on each positive clock edge

## Author

Your Name

## License

MIT License