#!/usr/bin/env bash

leap() {
  year=$1
  r='^[0-9]+$'

  if [[ $# != 1 || ! ($year =~ $r) ]]
  then
    echo "Usage: leap.sh <year>"
    exit 1
  fi

  leap="false"

  if [[ $((year % 4)) = 0 && ($((year % 100)) != 0 || $((year % 400)) = 0) ]]
  then
    leap="true"
  fi

  echo "$leap"
}

leap "$@"
