#!/bin/bash
## test-awk-1
## version 0.0.1 - initial
##################################################
test-awk-1() {
  cat - | awk '
{
	if(!$(2)||!$(3)||!$(4))
	print "Not all scores are available for "$(1)
}
'
}
##################################################
if [ ${#} -eq 0 ] 
then
 true
else
 exit 1 # wrong args
fi
##################################################
test-awk-1
##################################################
## generated by create-stub2.sh v0.1.2
## on Tue, 05 Feb 2019 16:58:49 +0900
## see <https://github.com/temptemp3/sh2>
##################################################
