#!/bin/bash
## test-slice-array
## version 0.0.1 - initial
##################################################
test-slice-array() {
  mapfile arr
  slice="${arr[@]:3:5}"
  echo ${slice/\r|\s/}
}
##################################################
if [ ${#} -eq 0 ] 
then
 true
else
 exit 1 # wrong args
fi
##################################################
test-slice-array
##################################################
## generated by create-stub2.sh v0.1.2
## on Tue, 05 Feb 2019 12:09:41 +0900
## see <https://github.com/temptemp3/sh2>
##################################################
