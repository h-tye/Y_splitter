#!/usr/bin/env bash

# simulation 1 (1 ring resonator, coupling=0-1, phase=0, Frequency sweep → A) [7806f8af]
python src/run_simulation.py --ename 1 --lsf --slurm --wg-insertion-loss 0 --dc-insertion-loss 0 --num-resonators 1 --reciprocal -1 --frequency-sweep --components "r::phase:0" "r::coupling:0:1:4096"
python src/run_simulation.py --ename 1 --lsf --slurm --wg-insertion-loss 0 --dc-insertion-loss 0 --num-resonators 1 --reciprocal 0 --frequency-sweep --components "r::phase:0" "r::coupling:0:1:4096"
python src/run_simulation.py --ename 1 --lsf --slurm --wg-insertion-loss 0 --dc-insertion-loss 0 --num-resonators 1 --reciprocal 1 --frequency-sweep --components "r::phase:0" "r::coupling:0:1:4096"

# simulation 2 (1 ring resonator, coupling=0-1, phase=-2pi-2pi, Frequency sweep) [868d1548]
python src/run_simulation.py --ename 2 --lsf --slurm --wg-insertion-loss 0 --dc-insertion-loss 0 --num-resonators 1 --reciprocal -1 --frequency-sweep --components "r::phase:-6.28318530718:6.28318530718:64" "r::coupling:0:1:64"
python src/run_simulation.py --ename 2 --lsf --slurm --wg-insertion-loss 0 --dc-insertion-loss 0 --num-resonators 1 --reciprocal 0 --frequency-sweep --components "r::phase:-6.28318530718:6.28318530718:64" "r::coupling:0:1:64"

# simulation 3 (1 ring resonator, coupling=0-1, phase=0-2pi/-pi-pi, Frequency sweep) [868d1548]
python src/run_simulation.py --ename 3 --lsf --slurm --wg-insertion-loss 0 --dc-insertion-loss 0 --num-resonators 1 --reciprocal -1 --frequency-sweep --components "r::phase:-1.57079632679:1.57079632679:64" "r::coupling:0:0.2:64"
python src/run_simulation.py --ename 3 --lsf --slurm --wg-insertion-loss 0 --dc-insertion-loss 0 --num-resonators 1 --reciprocal 0 --frequency-sweep --components "r::phase:0:3.14159265359:64" "r::coupling:0:0.2:64"

# simulation 4 (1 ring resonator, coupling=0.069841 (Q=15000), phase=-pi-pi, Frequency sweep) [311b96fd]
python src/run_simulation.py --ename 4 --lsf --slurm --wg-insertion-loss 0 --dc-insertion-loss 0 --num-resonators 1 --reciprocal -1 --frequency-sweep --components "r::phase:-3.14159265359:3.14159265359:4096" "r::coupling:0.069841"

# simulation 5 (1 ring resonator, coupling=0.069841 (Q=10000), phase=-pi-pi, Frequency sweep) [311b96fd]
python src/run_simulation.py --ename 5 --lsf --slurm --wg-insertion-loss 0 --dc-insertion-loss 0 --num-resonators 1 --reciprocal -1 --frequency-sweep --components "r::phase:-3.14159265359:3.14159265359:4096" "r::coupling:0.102901"
