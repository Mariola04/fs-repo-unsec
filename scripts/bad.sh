#!/bin/sh
# Intentional ShellCheck issues:
for f in $(ls *.txt); do
  echo Processing $f
  cat $f | grep TODO
done

user_input=$1
eval echo You said: $user_input
PATH=$PATH:./bin
if [ "$1" = foo ]; then echo ok; fi
`echo legacy-backticks`
