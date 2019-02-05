#!/bin/bash
## test-grep-b
## version 0.0.1 - initial
##################################################
test-grep-b() {
  grep -i \
  -e '\(.\)\1..\s....\s....\s....' \
  -e '.\(.\)\1.\s....\s....\s....' \
  -e '..\(.\)\1\s....\s....\s....' \
  -e '...\(.\)\s\1...\s....\s....' \
  -e '....\s\(.\)\1..\s....\s....' \
  -e '....\s.\(.\)\1.\s....\s....' \
  -e '....\s..\(.\)\1\s....\s....' \
  -e '....\s...\(.\)\s\1...\s....' \
  -e '....\s....\s\(.\)\1..\s....' \
  -e '....\s....\s.\(.\)\1.\s....' \
  -e '....\s....\s..\(.\)\1\s....' \
  -e '....\s....\s...\(.\)\s\1...' \
  -e '....\s....\s....\s\(.\)\1..' \
  -e '....\s....\s....\s.\(.\)\1.' \
  -e '....\s....\s....\s..\(.\)\1' \
  -
}
##################################################
if [ ${#} -eq 0 ] 
then
 true
else
 exit 1 # wrong args
fi
##################################################
test-grep-b
##################################################
## generated by create-stub2.sh v0.1.2
## on Tue, 05 Feb 2019 13:31:23 +0900
## see <https://github.com/temptemp3/sh2>
##################################################