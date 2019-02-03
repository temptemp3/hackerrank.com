#!/bin/bash
## test-uniq-2
## version 0.0.1 - initial
##################################################
strip-leading-whitespace() {
  cat /dev/stdin \
  | sed 's/^\s\+//'
}
test-uniq-2() {
  cat /dev/stdin \
  | uniq -c \
  | strip-leading-whitespace
}
##################################################
if [ ${#} -eq 0 ] 
then
 true
else
 exit 1 # wrong args
fi
##################################################
test-uniq-2
##################################################
## generated by create-stub2.sh v0.1.1
## on Fri, 01 Feb 2019 11:58:17 +0900
## see <https://github.com/temptemp3/sh2>
##################################################