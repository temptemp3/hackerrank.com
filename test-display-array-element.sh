#!/bin/bash
## test-display-array-element
## version 0.0.1 - initial
##################################################
test-display-array-element() {
  #cat /dev/stdin |
  #sed -n "4p"
  mapfile arr
  echo ${arr[3]}
}
##################################################
if [ ${#} -eq 0 ] 
then
 true
else
 exit 1 # wrong args
fi
##################################################
test-display-array-element
##################################################
## generated by create-stub2.sh v0.1.1
## on Thu, 31 Jan 2019 13:52:30 +0900
## see <https://github.com/temptemp3/sh2>
##################################################
