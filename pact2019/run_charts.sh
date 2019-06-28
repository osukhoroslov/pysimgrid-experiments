#!/bin/bash

PARALLELISM=4

mkdir -p charts

python3 -m pysimgrid.tools.experiment \
    systems/cluster-5-het4-ge/cluster_5_1-4_100_100_0.xml \
    workflows/dot_scaled \
    algorithms.json \
    results_charts.json \
    -j$PARALLELISM \
    -l info --simgrid-log-level=error \
    --make-charts

mv *.png charts
