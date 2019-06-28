#!/bin/bash

# Random seed to ensure reproducible results
SEED=2019

# Number of systems
NUM_SYSTEMS=100

#
# Heterogeneous clusters with homogeneous network a-la Gigabit Ethernet.
#
# Speed:     1-4 GFLOPS
# Bandwidth: 100 MBps
# Latency:   100 us
#
python3 -m pysimgrid.tools.plat_gen cluster-5-het4-ge $NUM_SYSTEMS $SEED cluster 5 1-4 100 100
python3 -m pysimgrid.tools.plat_gen cluster-10-het4-ge $NUM_SYSTEMS $SEED cluster 10 1-4 100 100
