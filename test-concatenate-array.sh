#!/bin/bash
## test-concatenate-array
## version 0.0.1 - initial
##################################################
test-concatenate-array() {
  mapfile arr
  output="${arr[@]} ${arr[@]} ${arr[@]}"
  echo -n ${output}
}
##################################################
if [ ${#} -eq 0 ] 
then
 true
else
 exit 1 # wrong args
fi
##################################################
test-concatenate-array
##################################################
## generated by create-stub2.sh v0.1.2
## on Tue, 05 Feb 2019 13:05:11 +0900
## see <https://github.com/temptemp3/sh2>
##################################################
