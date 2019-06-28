#!/bin/bash

mkdir -p dot

for file in dax/*_100.xml; do
    python3 -m pysimgrid.tools.dax_to_dot "$file" dot/$(basename "$file" .xml | cut -d'_' -f 1).dot
done

for file in dax/{1000Genome,Montage1.5}.xml; do
    python3 -m pysimgrid.tools.dax_to_dot -s 4000000000 "$file" dot/$(basename "$file" .xml).dot
done

mkdir -p dot_scaled

for file in dot/*; do
    name=$(basename "$file" .dot)
    mkdir -p dot_scaled/$name
    python3 -m pysimgrid.tools.scale_ccr -b 100 -s 2.5 "$file" -c 0.01 -o dot_scaled/$name/${name}_0.01.dot
    python3 -m pysimgrid.tools.scale_ccr -b 100 -s 2.5 "$file" -c 0.05 -o dot_scaled/$name/${name}_0.05.dot
    python3 -m pysimgrid.tools.scale_ccr -b 100 -s 2.5 "$file" -c 0.1 -o dot_scaled/$name/${name}_0.1.dot
    python3 -m pysimgrid.tools.scale_ccr -b 100 -s 2.5 "$file" -c 0.2 -o dot_scaled/$name/${name}_0.2.dot
done
