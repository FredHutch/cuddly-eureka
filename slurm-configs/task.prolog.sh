#!/bin/bash
tmpdir="/loc/scratch/${SLURM_JOB_ID}"
echo "export TMPDIR=${tmpdir}"
echo "export SCRATCH_LOCAL=${tmpdir}"
#
# Set the java temporary directory to the job's temp directory.
# If it is set, use the version in the environment unless the 
# temporary directory looks like it was set in another job. This
# happens when a job is submitted from an interactive slurm job
# (e.g. grabnode)
#
if [ "X${JAVA_TOOL_OPTIONS}" == "X" ]
then
	JAVA_TOOL_OPTIONS="-Djava.io.tmpdir=${tmpdir}"
else
	JAVA_TOOL_OPTIONS=$(
		echo $JAVA_TOOL_OPTIONS | \
		sed "s@-Djava.io.tmpdir=/loc/scratch/[0-9].*@-Djava.io.tmpdir=${tmpdir}@"\
	)
fi
echo "export JAVA_TOOL_OPTIONS=${JAVA_TOOL_OPTIONS}"
