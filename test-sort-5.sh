#!/bin/bash
## test-sort-5
## version 0.0.1 - initial
##################################################
test-sort-5() {
  cat /dev/stdin \
  | sort -t$'\t' -k2 --numeric --reverse
}
##################################################
if [ ${#} -eq 0 ] 
then
 true
else
 exit 1 # wrong args
fi
##################################################
test-sort-5
##################################################
## generated by create-stub2.sh v0.1.1
## on Mon, 04 Feb 2019 22:38:53 +0900
## see <https://github.com/temptemp3/sh2>
##################################################