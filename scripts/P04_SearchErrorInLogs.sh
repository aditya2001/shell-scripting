#!/bin/bash

#The square brackets [ ] denote the start and end of a conditional expression.
#The exclamation mark ! is the logical NOT operator. It negates the result of the expression that follows it.
#The -d flag is used to check if a directory exists.
#The dollar sign $ before the DST_DIR variable is used to expand the variable and retrieve its value.
#The variable name is enclosed in double quotes "" to handle cases where the variable value contains spaces or special characters. The quotes ensure that the variable is treated as a single entity.
#The semicolon; terminates the conditional statement.
#The fi closes the conditional statement. It is the reverse of if and indicates the end of the conditional block.

# Define the log file and search pattern
LOG_FILE="/var/log/syslog"  # Example log file
SEARCH_PATTERN="ERROR"      # Pattern to search for

# Fetch log details
echo "Fetching log details for pattern: $SEARCH_PATTERN"
if [[ -f "$LOG_FILE" ]]; then
    grep "$SEARCH_PATTERN" "$LOG_FILE"
   else
    echo "Log file not found: $LOG_FILE"
fi