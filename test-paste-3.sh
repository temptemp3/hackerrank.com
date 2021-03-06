#!/bin/bash
## test-paste-3
## version 0.0.1 - initial
##################################################
sanitize() {
  cat /dev/stdin \
  | sed \
    -e 's/^\s*//' \
    -e 's/\s*$//'
}
test-paste-3() {
  cat /dev/stdin | xxd -ps | sed 's/0a/09/g' | xxd -ps -r
  return
  ## same result
  read -r line
  while [ "${line}" ]
  do
   echo -n "${line}" | sanitize
   echo -n "	"
   read -r line
  done | sed 's/\s*$//'
  echo ""
}
##################################################
if [ ${#} -eq 0 ] 
then
 true
else
 exit 1 # wrong args
fi
##################################################
test-paste-3
##################################################
## generated by create-stub2.sh v0.1.1
## on Fri, 01 Feb 2019 13:49:45 +0900
## see <https://github.com/temptemp3/sh2>
##################################################
