#!/bin/bash

rm -f ${dataroot}/wgEncodeUwRepliSeqBg02esG1bAlnRep1.sorted.bam

ml ${Picard}

java -jar $EBROOTPICARD/picard.jar \
  SortSam \
  I=${dataroot}/wgEncodeUwRepliSeqBg02esG1bAlnRep1.bam \
  O=${dataroot}/wgEncodeUwRepliSeqBg02esG1bAlnRep1.sorted.bam \
  SO=coordinate
