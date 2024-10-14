#!/bin/bash
# Renames a directory from 122024 to 202412
# or from 25122024 to 20241225.
olddirname="$1"

case ${#olddirname} in

  8)
    #echo 8
    newdirname=${olddirname:4:4}${olddirname:2:2}
    ;;

  10)
    #echo 10
    newdirname=${olddirname:6:4}${olddirname:4:2}${olddirname:2:2}
    ;;

  *)
    echo "Jump $1"
    ;;

esac
echo "Move $olddirname $newdirname"
mv $olddirname $newdirname
