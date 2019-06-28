# PaCT-2019 Experiments

Experiments from "An Experimental Study of Data Transfer Strategies for Execution of Scientific Workflows" paper submitted to PaCT-2019 conference.

## Requirements

Install [pysimgrid](https://github.com/alexmnazarenko/pysimgrid) and add it to `PYTHONPATH`.

## Workflows

Original DAX versions are placed in `workflows/dax`:

- Cybershake, Epigenomics, Inspiral and Montage are taken from [pysimgrid examples](https://github.com/alexmnazarenko/pysimgrid/tree/master/dag/exp1_workflows)
- 1000Genomes and Montage1.5 are produced from [this project](https://github.com/wrench-project/pegasus) as follows:

```
tools/wrench-json-2-dax.py examples/evaluation/accuracy/exogeni-1000genome-001.json > 1000Genome.dax
tools/wrench-json-2-dax.py examples/evaluation/accuracy/montage-t2xlarge-001.json > Montage_1.5.dax
```

Generate DOT versions used in experiments:

```
cd workflows
./generate.sh
```

## Systems

Generate systems used in experiments:

```
cd systems
./generate.sh
```

## Run Experiments

Run all experiments:

```
./run.sh
```

Run experiments for a single system with 5 nodes and produce Gantt charts (placed in `charts` directory):

```
./run_charts.sh
```

## Process and View Results

```
./results.sh
```

