#!/bin/bash
## test-cut-6
## version 0.0.1 - initial
##################################################
test-cut-6() {
 cut -c 13- /dev/stdin
}
##################################################
if [ ${#} -eq 0 ] 
then
 true
else
 exit 1 # wrong args
fi
##################################################
test-cut-6
##################################################
## generated by create-stub2.sh v0.1.1
## on Sun, 03 Feb 2019 15:37:53 +0900
## see <https://github.com/temptemp3/sh2>
##################################################