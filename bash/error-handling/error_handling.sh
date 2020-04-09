#!/usr/bin/env bash

main () {
  usage="Usage: error_handling.sh <person>"

  if [[ $# != 1 ]]
  then
    echo "$usage" > /dev/stderr
    exit 1
  fi

  echo "Hello, $1"
}

main "$@"
