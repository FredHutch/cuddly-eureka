#!/bin/bash

ml ${Java}

echo "Running on host: $(hostname)"
echo "Slurm JobID is: ${SLURM_JOB_ID}"
echo "JAVA_TOOL_OPTIONS is ${JAVA_TOOL_OPTIONS}"
echo
java -cp ${classpath} TempDir
