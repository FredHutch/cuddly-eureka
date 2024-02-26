#!/bin/bash
classpath=/home/mrg/Work/JavaTempDir/TempDir
ml Java/11.0.2
hostname
echo JAVA_TOOL_OPTIONS is "${JAVA_TOOL_OPTIONS}"
java -cp ${classpath} TempDir
