#!/bin/bash

source $QPROP_HOME/src/util/shell/colors.sh

num_of_process=1
if [ -n "$1" ]; then num_of_process="$1"; fi
echo "${LOG} num_of_process: $num_of_process" 

bin_name=eval-tsurff-mpi

echo "${LOG}[$(date)] $bin_name started"
$QPROP_DEP_DIR/openmpi/bin/mpiexec -np $num_of_process $QPROP_HOME/bin/$bin_name  > $bin_name.log 2>&1


## Combine partial data files produced by separate MPI processes
source $QPROP_HOME/src/util/data/combine_tsurff_data.sh
