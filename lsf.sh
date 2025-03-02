#!/usr/bin/env bash

# simulation 1 (1 ring resonator, coupling=0-1, phase=0, Frequency sweep → A) [7806f8af]
python src/run_simulation.py --ename 1 --lsf --slurm --wg-insertion-loss 0 --dc-insertion-loss 0 --num-resonators 1 --reciprocal -1 --frequency-sweep --components "r::phase:0" "r::coupling:0:1:2"
