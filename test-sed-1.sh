#!/bin/bash
## test-sed-1
## version 0.0.1 - initial
##################################################
test-sed-1() {
  sed -e 's/the /this /' -
}
##################################################
if [ ${#} -eq 0 ] 
then
 true
else
 exit 1 # wrong args
fi
##################################################
test-sed-1
##################################################
## generated by create-stub2.sh v0.1.2
## on Tue, 05 Feb 2019 13:45:37 +0900
## see <https://github.com/temptemp3/sh2>
##################################################
