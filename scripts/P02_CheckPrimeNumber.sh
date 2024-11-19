#!/bin/bash

echo -e "Enter Number : \c"
read -r n

for((i=2; i<$n; i++));do
  if [ $((n%i)) -eq 0 ];then
    echo "$n is not a prime number."
    exit 0
  fi
done

echo "$n is a prime number."