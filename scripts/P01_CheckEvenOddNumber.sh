#!/bin/bash

echo "Enter a number:"
read -r n
if [ $((n%2)) -eq 0 ]
   then
      echo "$n is an even number."
   else
	    echo "$n is Odd";
fi

