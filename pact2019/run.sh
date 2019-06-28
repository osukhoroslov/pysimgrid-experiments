#!/bin/bash

#WF=$(basename -- "$2")
#mkdir -p results/$WF
#mv *.png results/$WF

#--make-charts

PARALLELISM=4

python3 -m pysimgrid.tools.experiment \
    systems \
    workflows/dot_scaled \
    algorithms.json \
    results.json \
    -j$PARALLELISM \
    -l info --simgrid-log-level=error 
