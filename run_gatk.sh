#!/bin/bash
set -e

rm -f ${dataroot}/wgEncodeUwRepliSeqBg02esG1bAlnRep1.sorted.bam
ml ${GATK}

gatk \
  SortSam \
  -I ${dataroot}/wgEncodeUwRepliSeqBg02esG1bAlnRep1.bam \
  -O ${dataroot}/wgEncodeUwRepliSeqBg02esG1bAlnRep1.sorted.bam \
  -SO coordinate
