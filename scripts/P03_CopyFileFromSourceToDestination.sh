#!/bin/bash

#The square brackets [ ] denote the start and end of a conditional expression.
#The exclamation mark ! is the logical NOT operator. It negates the result of the expression that follows it.
#The -d flag is used to check if a directory exists.
#The dollar sign $ before the DST_DIR variable is used to expand the variable and retrieve its value.
#The variable name is enclosed in double quotes "" to handle cases where the variable value contains spaces or special characters. The quotes ensure that the variable is treated as a single entity.
#The semicolon; terminates the conditional statement.
#The fi closes the conditional statement. It is the reverse of if and indicates the end of the conditional block.

SRC_DIR=/path/to/source/directory
DST_DIR=/path/to/backup/directory

if [ ! -d "$DST_DIR" ];
      then
      mkdir -p "$DST_DIR"
fi

for file in "$SRC_DIR"/*;
 do
      cp "$file" "$DST_DIR"
 done

if [ ! -d "$SRC_DIR" ];
      then
      echo "Error: Source directory does not exist"
      exit 1
fi