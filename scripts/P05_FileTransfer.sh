#!/bin/bash

# Define variables
LOCAL_FILE_PATH="C:/Users/HP/Downloads"
REMOTE_USER="adi"
REMOTE_HOST="ivapp125.ms.com"
REMOTE_PATH="path/to/remote/directory"

# Execute SCP command
scp $LOCAL_FILE_PATH $REMOTE_USER@REMOTE_HOST:$REMOTE_PATH

# Check if file transfer successfully

if [$? -eq 0]; then
    echo "File Transfer Successfully"
  else
    echo "File transfer Failed"
fi