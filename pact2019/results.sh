#!/bin/bash

printf "\nSYSTEMS WITH 5 NODES ------------------------------------------\n"

python3 -m pysimgrid.tools.results \
    -a Eager,Lazy,Prefetch,Queue,QueueECT -b Eager \
    -f S2=5 \
    -g1 Application:A1 -g2 CCR:A2 \
    results.json

printf "\nSYSTEMS WITH 10 NODES -----------------------------------------\n"

python3 -m pysimgrid.tools.results \
    -a Eager,Lazy,Prefetch,Queue,QueueECT -b Eager \
    -f S2=10 \
    -g1 Application:A1 -g2 CCR:A2 \
    results.json
