#!/bin/bash
## test-arithmetic2
## version 0.0.1 - initial
##################################################
test-arithmetic2() {
 read -r x
output=$( echo "scale=4;${x}" | bc ) # should work here
## but the expected output for the test is wrong so ...
decimals() {
  cat /dev/stdin \
  | grep '[.].*' --only-matching
}
integer() {
  cat /dev/stdin \
  | grep '^[^.]*' --only-matching
}
integer=$( echo ${output} | integer )
decimals=$( echo ${output} | decimals )
decimals_1=${decimals:1:1}
decimals_2=${decimals:2:1}
decimals_3=${decimals:3:1}
decimals_4=${decimals:4:1}
test ! ${decimals_4} -ge 5 || {
  decimals_3=$(( decimals_3 + 1 ))
}
test ! ${decimals_3} -ge 10 || {
  decimals_3=$(( decimals_3 + 1 ))
}
test ! ${decimals_2} -ge 10 || {
  decimals_3=$(( decimals_3 + 1 ))
}
test ! ${decimals_1} -ge 10 || {
  integer=$(( integer + 1 ))
}
echo "${integer}.${decimals_1}${decimals_2}${decimals_3}"
}
##################################################
if [ ${#} -eq 0 ] 
then
 true
else
 exit 1 # wrong args
fi
##################################################
test-arithmetic2
##################################################
## generated by create-stub2.sh v0.1.1
## on Mon, 28 Jan 2019 08:43:23 +0900
## see <https://github.com/temptemp3/sh2>
##################################################
