# Suite of tests for JAVA_TOOL_OPTIONS configuration

> We want to set the Java tmpdir to the temporary space configured on the node by the prolog.  Java doesn't use `$TMPDIR`, instead requires setting a Java option to the machine.
>
> This provides a test suite for Java temporary directory handling.
>

## How To Use

 - download source data (below)
 - update `paths.sh` to indicate path to downloaded data
 - update module names in `paths.sh`
 - source `paths.sh`
 - submit jobs: `sbatch run_picard.sh`

## Source Data

Any BAM will work, but this one is reasonable and publicly available (Feb 2024):

[wgEncodeUwRepliSeqBg02esG1bAlnRep1.bam](http://hgdownload.cse.ucsc.edu/goldenpath/hg19/encodeDCC/wgEncodeUwRepliSeq/wgEncodeUwRepliSeqBg02esG1bAlnRep1.bam)


## Scripts

Any of these scripts can be submitted as an `sbatch` job.

### `echo_env.sh`:

Echoes back the job ID and value of JAVA_TOOL_OPTIONS

### `run_gatk.sh`

Runs GATK.

### `run_picard.sh`

Runs Picard's `SortSam` (this function uses temporary space)

### `run_tempdir.sh`

Runs the TempDir Java program.  Validates that Java picks up the option.

### `TempDir`

Code that prints the currently configured temporary path Java will use
