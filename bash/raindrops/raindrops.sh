#!/usr/bin/env bash

exit_err() {
  usage="Usage: raindrops.sh <num>"

  echo "$usage" > /dev/stderr
  exit 1
}

raindrops() {
  if [[ $# != 1 ]]
  then
    exit_err
  fi

  num=$1
  r='^[0-9]+$'
  if [[ ! ($num =~ $r) ]]
  then
    exit_err
  fi

  output=""

  if [[ $((num % 3)) == 0 ]]
  then
    output="${output}Pling"
  fi

  if [[ $((num % 5)) == 0 ]]
  then
    output="${output}Plang"
  fi

  if [[ $((num % 7)) == 0 ]]
  then
    output="${output}Plong"
  fi

  if [[ -z $output ]]
  then
    output="$num"
  fi

  echo "$output"
}

raindrops "$@"
