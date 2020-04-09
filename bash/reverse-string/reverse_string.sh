#!/usr/bin/env bash

reverse () {
  word=$1
  str=""

  len=${#word}
  for (( i=len-1; i>=0; i--))
  do
    c=${word:$i:1}
    str="$str$c"
  done

  echo "$str"
}

reverse "$@"
