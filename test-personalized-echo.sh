#!/bin/bash
## test-personalized-echo
## version 0.0.1 - initialize
##################################################
test-personalized-echo() {
  read -r name
  echo "Welcome ${name}"
}
##################################################
if [ ${#} -eq 0 ] 
then
 true
else
 exit 1 # wrong args
fi
##################################################
test-personalized-echo
##################################################
## generated by create-stub2.sh v0.1.1
## on Sun, 03 Feb 2019 15:14:22 +0900
## see <https://github.com/temptemp3/sh2>
##################################################