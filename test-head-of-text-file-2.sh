#!/bin/bash
## test-head-of-text-file-2
## version 0.0.1 - initial
##################################################
test-head-of-text-file-2() {
  head -c 20 /dev/stdin
}
##################################################
if [ ${#} -eq 0 ] 
then
 true
else
 exit 1 # wrong args
fi
##################################################
test-head-of-text-file-2
##################################################
## generated by create-stub2.sh v0.1.1
## on Mon, 04 Feb 2019 08:17:41 +0900
## see <https://github.com/temptemp3/sh2>
##################################################
