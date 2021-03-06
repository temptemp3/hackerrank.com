#!/bin/bash
## test-lonely-integer
## version 0.0.1 - initial
##################################################
strip-leading-whitespace() {
  cat /dev/stdin \
  | sed -e 's/^\s*//'
}
filter-lonely-integer() {
  cat /dev/stdin \
  | sort --numeric-sort \
  | uniq -c \
  | strip-leading-whitespace \
  | grep -e '^1\s' \
  | cut '-d ' '-f2'
}
test-lonely-integer() {
  read -r n
  read -r I
  #echo ${n}
  for i in ${I}
  do
   echo ${i}
  done | filter-lonely-integer
}
##################################################
if [ ${#} -eq 0 ] 
then
 true
else
 exit 1 # wrong args
fi
##################################################
test-lonely-integer
##################################################
## generated by create-stub2.sh v0.1.1
## on Fri, 01 Feb 2019 08:15:19 +0900
## see <https://github.com/temptemp3/sh2>
##################################################
