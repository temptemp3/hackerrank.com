#!/bin/bash
## test-sort-6
## version 0.0.1 - initial
##################################################
test-sort-6() {
  cat /dev/stdin \
  | sort -t$'\t' -k2 --numeric
}
##################################################
if [ ${#} -eq 0 ] 
then
 true
else
 exit 1 # wrong args
fi
##################################################
test-sort-6
##################################################
## generated by create-stub2.sh v0.1.1
## on Mon, 04 Feb 2019 22:51:10 +0900
## see <https://github.com/temptemp3/sh2>
##################################################
