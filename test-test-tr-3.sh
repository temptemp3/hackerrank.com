#!/bin/bash
## test-tr-3
## version 0.0.1 - initial
##################################################
test-tr-3() {
  cat /dev/stdin \
  | tr -s "[:space:]"
}
##################################################
if [ ${#} -eq 0 ] 
then
 true
else
 exit 1 # wrong args
fi
##################################################
test-tr-3
##################################################
## generated by create-stub2.sh v0.1.2
## on Mon, 04 Feb 2019 13:43:02 +0900
## see <https://github.com/temptemp3/sh2>
##################################################