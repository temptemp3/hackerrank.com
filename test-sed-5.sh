#!/bin/bash
## test-sed-5
## version 0.0.1 - initial
##################################################
test-sed-5() {
  sed -e 's/\(.\{4\}\)\s\(.\{4\}\)\s\(.\{4\}\)\s\(.\{4\}\)\s*$/\4 \3 \2 \1/' -
}
##################################################
if [ ${#} -eq 0 ] 
then
 true
else
 exit 1 # wrong args
fi
##################################################
test-sed-5
##################################################
## generated by create-stub2.sh v0.1.2
## on Tue, 05 Feb 2019 16:54:17 +0900
## see <https://github.com/temptemp3/sh2>
##################################################
