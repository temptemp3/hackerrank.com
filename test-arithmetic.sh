#!/bin/bash
## test-arithmetic
## version 0.0.1 - initial
##################################################
. ${SH2}/cecho.sh
buffer-expression() {
 cecho yellow buffer: ${buffer}
 cecho yellow "weight * buffer: ${weight} * ${buffer}"
 set -v -x
 echo $(( weight * buffer ))
 echo "$(( weight * buffer ))"
 echo $(( weight ))
 echo "$(( weight ))" 
 echo $(( buffer ))
 echo "$(( buffer ))"
 echo $(( weight * 19 * 2 / 7 ))
 echo $(( weight * (19*2) / 7 ))
 echo $(( 100 * 19 * 2 / 7 ))
 set +v +x
 read
}
evaluate-expression() { { local weight ; weight="${1}" ; local expression ; expression="${@:2}" ; }
 local index
 local char
 local buffer
 local index
 local index=1
 cecho yellow "expression: ${expression}"
 cecho yellow "expression[0]:  ${expression:0:1}"
 cecho yellow "expression[1]: ${expression:${index}:1}"
 ## try distribute weight into expression
 buffer=""
 while [ "${expression:${index}:1}" ]
 do
  char="${expression:${index}:1}"
  cecho yellow "char: ${char}"
  case ${char} in
  +) {
   buffer-expression
   buffer=""
  } ;;
  "*") {
   buffer="${buffer}${char}"
  } ;;
  *) {
  cecho yellow "expr= ${buffer} "
  } ;;
  esac
  cecho yellow buffer: ${buffer}
  index=$(( index + 1 ))
 done
 test ! "${buffer}" || {
   buffer-expression
 }
 #echo $(( ${expression} * 100 ))
 #echo $(( ${expression} * 10 ))
}
test-arithmetic() {
 local expression
 read -r expression
 evaluate-expression 1 "${expression}"
 evaluate-expression 10 "${expression}"
 evaluate-expression 100 "${expression}"

}
##################################################
if [ ${#} -eq 0 ] 
then
 true
else
 exit 1 # wrong args
fi
##################################################
test-arithmetic
##################################################
## generated by create-stub2.sh v0.1.1
## on Wed, 23 Jan 2019 12:02:32 +0900
## see <https://github.com/temptemp3/sh2>
##################################################
