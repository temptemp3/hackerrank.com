#!/bin/bash
## test-sort-2
## version 0.0.1 - initial
##################################################
test-sort-2() {
  cat /dev/stdin \
  | sort --reverse
}
##################################################
if [ ${#} -eq 0 ] 
then
 true
else
 exit 1 # wrong args
fi
##################################################
test-sort-2
##################################################
## generated by create-stub2.sh v0.1.2
## on Mon, 04 Feb 2019 13:50:21 +0900
## see <https://github.com/temptemp3/sh2>
##################################################