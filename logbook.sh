#!/bin/bash

##
# File: logbook.sh
# Created on: 01/06/2018
# Author: Giovane Boaviagem Ribeiro (github.com/giovanebribeiro)
##


# Some environment variables
VERSION=0.0.0
FILE=$HOME/logbook.txt

# getopts main loop
while getopts hvt: OP; do
  case "${OP}" in
    v) op_version=1 ;;
    h) op_help=1 ;;
    t) op_tag=1 && tagname="$OPTARG" ;;
    *) op_help=1 ;;
  esac
done

# No arguments? print help
all_args=(  $@ )
n_args=${#all_args[@]}
if [ "${n_args}" == "0" ]
then
  op_help=1
fi

# No options? default option is to insert the message

if [ "${op_help}" == "1" ]
then
  echo logbook v$VERSION
  echo Usage: ./logbook.sh [options] message
  echo
  echo -h ........ Print this help
  echo -v ........ Print the version
  echo -t [tagname] ........ List all tags. If tagname is present, 
  echo

  echo
  exit 0
fi
